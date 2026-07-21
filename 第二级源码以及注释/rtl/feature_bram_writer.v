`timescale 1ns/1ps

// =============================================================================
// 模块名称：feature_bram_writer
// 功能说明：
//   把 demod_pool_core 产生的一帧特征整理成40个32位字，并通过
//   Block Memory Generator 的 Port B 写入双口BRAM。
//
// 系统分工：
//   - BRAM Port A：连接 AXI BRAM Controller，供 ZYNQ PS 读取；
//   - BRAM Port B：连接本模块，由 PL 写入特征快照。
//
// 原子快照机制：
//   地址1～39先写特征数据，地址0的sequence最后写入。
//   PS检测到sequence变化后，才把地址1～39视为一帧新的完整结果，
//   从而避免把尚未写完的BRAM内容误认为新特征。
//
// 地址约定：
//   本模块面向 BMG 的“BRAM Controller”接口，bram_addr是32位字节地址。
//   每个特征字为4字节，因此：字n的地址 = n*4 = n<<2。
//
// 语言与工具：纯 Verilog-2001，适用于 Vivado 2018.3。
// =============================================================================
module feature_bram_writer (
    input  wire                aclk,            // 与core、BMG Port B相同的PL时钟
    input  wire                aresetn,         // 低有效同步复位
    input  wire                frame_done,      // core的一帧统计完成脉冲

    // core输出的标量特征。
    input  wire [63:0]         var_mag_num,     // 幅度方差分子
    input  wire [63:0]         var_freq_num,    // 频率方差分子
    input  wire signed [31:0]  mean_mag_num,    // 幅度均值分子
    input  wire signed [31:0]  mean_freq_num,   // 频率均值分子
    input  wire [31:0]         psk_spike_count, // 相位突跳计数
    input  wire                psk_flag,        // PSK判决标志

    // 直方图读取接口：writer给地址，core返回相应快照数据。
    output reg  [3:0]          hist_mag_rd_addr,
    input  wire [31:0]         hist_mag_rd_data,
    output reg  [3:0]          hist_freq_rd_addr,
    input  wire [31:0]         hist_freq_rd_data,

    // BMG Port B原生信号。字节写使能4位分别控制32位数据的4个字节。
    output reg                 bram_en,
    output reg  [3:0]          bram_we,
    output reg  [31:0]         bram_addr,
    output reg  [31:0]         bram_wdata,

    // 正在写地址1～39时为1。commit周期不包含在busy内。
    output reg                 busy
);

    // 当前准备写入的“字序号”，不是字节地址。
    reg [5:0]  word_index;

    // 已提交快照的递增序号。复位后第一次提交写入1。
    reg [31:0] sequence;

    // 地址1～39写完后置1，用于在最后一个独立周期写地址0。
    reg        commit;

    // -------------------------------------------------------------------------
    // 组合输出逻辑：由当前状态和word_index决定BRAM端口信号及写入数据。
    // -------------------------------------------------------------------------
    always @* begin
        // 默认不访问BRAM，防止非写入状态下产生误写。
        bram_en           = 1'b0;
        bram_we           = 4'b0000;

        // 将6位字序号转换成32位字节地址：word_index * 4。
        bram_addr         = {24'd0, word_index, 2'b00};
        bram_wdata        = 32'd0;

        // 默认读取直方图第0项；在相应地址范围内再改成实际bin编号。
        hist_mag_rd_addr  = 4'd0;
        hist_freq_rd_addr = 4'd0;

        if (busy) begin
            // busy期间每拍写一个完整32位特征字。
            bram_en = 1'b1;
            bram_we = 4'b1111;

            // BRAM字0留给sequence；特征数据从字1开始。
            case (word_index)
                // 64位方差按低32位、再高32位顺序拆分。
                6'd1: bram_wdata = var_mag_num[31:0];
                6'd2: bram_wdata = var_mag_num[63:32];
                6'd3: bram_wdata = var_freq_num[31:0];
                6'd4: bram_wdata = var_freq_num[63:32];

                // 均值分子本身是32位，直接写入。
                6'd5: bram_wdata = mean_mag_num;
                6'd6: bram_wdata = mean_freq_num;

                // 最高位存PSK标志，其余31位存突跳计数。
                6'd7: bram_wdata = {psk_flag, psk_spike_count[30:0]};

                default: begin
                    // 字8～23映射幅度直方图bin0～15。
                    if ((word_index >= 6'd8) &&
                        (word_index <= 6'd23)) begin
                        hist_mag_rd_addr = word_index - 6'd8;
                        bram_wdata       = hist_mag_rd_data;

                    // 字24～39映射频率直方图bin0～15。
                    end else if ((word_index >= 6'd24) &&
                                 (word_index <= 6'd39)) begin
                        hist_freq_rd_addr = word_index - 6'd24;
                        bram_wdata        = hist_freq_rd_data;
                    end
                end
            endcase

        end else if (commit) begin
            // 所有特征写完后，最后更新字0的sequence提交标志。
            bram_en    = 1'b1;
            bram_we    = 4'b1111;
            bram_addr  = 32'd0;
            bram_wdata = sequence + 1'b1;
        end
    end

    // -------------------------------------------------------------------------
    // 写入流程控制。
    // IDLE --frame_done--> WRITE_WORD_1_TO_39 --> COMMIT_WORD_0 --> IDLE
    // -------------------------------------------------------------------------
    always @(posedge aclk) begin
        if (!aresetn) begin
            word_index <= 6'd1;
            sequence   <= 32'd0;
            busy       <= 1'b0;
            commit     <= 1'b0;
        end else begin
            if (frame_done && !busy && !commit) begin
                // 接收新的帧完成脉冲，从特征字1开始写。
                word_index <= 6'd1;
                busy       <= 1'b1;

            end else if (busy) begin
                if (word_index == 6'd39) begin
                    // 字39在本时钟沿写入，下一周期进入commit状态。
                    busy   <= 1'b0;
                    commit <= 1'b1;
                end else begin
                    // 下一周期写下一个32位特征字。
                    word_index <= word_index + 1'b1;
                end

            end else if (commit) begin
                // sequence在本时钟沿写入BRAM字0，随后返回空闲状态。
                sequence <= sequence + 1'b1;
                commit   <= 1'b0;
            end
        end
    end

endmodule
