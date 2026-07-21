`timescale 1ns/1ps

// =============================================================================
// 模块名称：demod_pool_core
// 所属层级：第二级——绝对并行特征提取（解调池层）
// 目标器件：ZYNQ-7020，Vivado 2018.3
//
// 总体功能：
//   接收上一级提供的16位I/Q基带样本，先利用CORDIC并行求取幅度与相位，
//   再从同一组有效特征样本并行派生以下结果：
//     1. 幅度均值分子、幅度方差分子；
//     2. 瞬时频率均值分子、瞬时频率方差分子；
//     3. 16档幅度直方图快照；
//     4. 16档频率直方图快照；
//     5. BPSK类π相位突跳次数和PSK判决标志。
//
// 输入定点格式：
//   s_i、s_q 为 Q1.14 有符号数，数值范围必须保持在[-1,+1)附近。
//
// CORDIC IP要求：实例名必须为 cordic_translate_0：
//   Functional Selection      = Translate
//   Architectural Config      = Parallel
//   Pipelining Mode           = Maximum
//   Data Format               = Signed Fraction
//   Phase Format              = Scaled Radians
//   Input Width               = 16
//   Output Width              = 24
//   Coarse Rotation           = Enabled
//   AXI4-Stream Flow Control  = Blocking
//
// 帧管理：
//   窗口长度 N=2^LGN。默认LGN=13，即每8192个feature_valid样本形成一帧。
//   running_stats16流水线完成后产生frame_done，供feature_bram_writer启动写BRAM。
// =============================================================================
module demod_pool_core #(
    parameter integer LGN = 13,

    // 幅度门限，默认约等于Q1.22格式下的0.05。
    // 低于该门限时相位不可靠，频率直方图和PSK检测忽略该样本。
    parameter [23:0] MAG_GATE = 24'd209715
) (
    input  wire                    aclk,       // 整个解调池的统一工作时钟
    input  wire                    aresetn,    // 低有效同步复位

    // 上一级I/Q流接口。
    input  wire signed [15:0]      s_i,        // 同相分量I，Q1.14
    input  wire signed [15:0]      s_q,        // 正交分量Q，Q1.14
    input  wire                    s_valid,    // 当前I/Q样本有效
    output wire                    s_ready,    // CORDIC能够接收新样本

    // 实时特征输出，可接ILA或其他后级流式处理模块。
    output wire [23:0]             mag_out,       // 与dphi对齐的幅度
    output wire signed [23:0]      dphi_out,      // 包裹后的相邻相位差
    output wire                    feature_valid, // mag_out/dphi_out同时有效

    // 一帧结束后保持的标量统计特征。
    output wire signed [31:0]      mean_mag_num,
    output wire [63:0]             var_mag_num,
    output wire signed [31:0]      mean_freq_num,
    output wire [63:0]             var_freq_num,
    output wire [31:0]             psk_spike_count,
    output wire                    psk_flag,
    output wire                    frame_done, // 新的一帧完整统计结果已产生

    // 快照直方图读口，由feature_bram_writer给出地址并读取数据。
    input  wire [3:0]              hist_mag_rd_addr,
    output wire [31:0]             hist_mag_rd_data,
    input  wire [3:0]              hist_freq_rd_addr,
    output wire [31:0]             hist_freq_rd_data
);

    // -------------------------------------------------------------------------
    // 1. CORDIC输入输出封装
    // -------------------------------------------------------------------------

    // PG105规定Translate模式输入低16位为X，高16位为Y。
    // 本设计X=I、Y=Q，因此打包顺序为{Q,I}。
    wire [31:0] cordic_s_tdata;
    assign cordic_s_tdata = {s_q, s_i};

    // 输出包含两个24位分量：低24位为幅度，高24位为相位。
    wire [47:0] cordic_m_tdata;
    wire        cordic_m_valid;
    wire        cordic_s_ready;

    wire [23:0]        mag_raw;
    wire signed [23:0] phase_raw;
    assign mag_raw   = cordic_m_tdata[23:0];
    assign phase_raw = cordic_m_tdata[47:24];

    // 极坐标转换IP。输出端始终ready，因此解调池内部不会主动阻塞CORDIC。
    cordic_translate_0 u_cordic_translate (
        .aclk                    (aclk),
        .aresetn                 (aresetn),
        .s_axis_cartesian_tvalid (s_valid),
        .s_axis_cartesian_tready (cordic_s_ready),
        .s_axis_cartesian_tdata  (cordic_s_tdata),
        .m_axis_dout_tvalid      (cordic_m_valid),
        .m_axis_dout_tready      (1'b1),
        .m_axis_dout_tdata       (cordic_m_tdata)
    );

    // 将CORDIC的输入ready直接反馈给上一级，构成valid/ready握手。
    assign s_ready = cordic_s_ready;

    // -------------------------------------------------------------------------
    // 2. 相邻相位差及幅度时序对齐
    // -------------------------------------------------------------------------
    wire signed [23:0] dphi_raw;
    wire               dphi_valid;

    // phase_diff_wrap保存上一有效相位并执行[-pi,+pi)范围包裹。
    phase_diff_wrap #(
        .PHASE_W(24)
    ) u_phase_diff (
        .aclk      (aclk),
        .aresetn   (aresetn),
        .phase_in  (phase_raw),
        .in_valid  (cordic_m_valid),
        .dphi_out  (dphi_raw),
        .out_valid (dphi_valid)
    );

    // 相位差对应“前一相位到当前相位”的变化。
    // 幅度延迟一拍，使mag_z1和dphi_raw代表同一时间位置附近的特征。
    reg [23:0] mag_z1;
    always @(posedge aclk) begin
        if (!aresetn)
            mag_z1 <= 24'd0;
        else if (cordic_m_valid)
            mag_z1 <= mag_raw;
    end

    assign mag_out       = mag_z1;
    assign dphi_out      = dphi_raw;
    assign feature_valid = dphi_valid;

    // -------------------------------------------------------------------------
    // 3. 统计模块输入缩放
    // -------------------------------------------------------------------------

    // 幅度为非负值。取mag_z1[22:8]并在最高位补0，形成16位正数。
    // 这样既限制统计位宽，又避免被当成负的有符号数。
    wire signed [15:0] mag_stat_x;
    assign mag_stat_x = {1'b0, mag_z1[22:8]};

    // 相位差右移2位后用于频率统计，降低量化范围。
    wire signed [23:0] freq_scaled;
    assign freq_scaled = dphi_raw >>> 2;

    // 将24位值饱和到16位有符号范围，避免直接截断造成正负翻转。
    reg signed [15:0] freq_stat_x;
    always @* begin
        if (freq_scaled > 24'sd32767)
            freq_stat_x = 16'sh7fff;
        else if (freq_scaled < -24'sd32768)
            freq_stat_x = -16'sd32768;
        else
            freq_stat_x = freq_scaled[15:0];
    end

    // -------------------------------------------------------------------------
    // 4. 幅度和频率统计并行支路
    // 两个实例同时接收dphi_valid，因此窗口边界和流水线延迟完全一致。
    // -------------------------------------------------------------------------
    wire mag_stats_done;
    wire freq_stats_done;

    running_stats16 #(
        .LGN(LGN)
    ) u_mag_stats (
        .aclk        (aclk),
        .aresetn     (aresetn),
        .x           (mag_stat_x),
        .in_valid    (dphi_valid),
        .mean_num    (mean_mag_num),
        .var_num     (var_mag_num),
        .window_done (mag_stats_done)
    );

    running_stats16 #(
        .LGN(LGN)
    ) u_freq_stats (
        .aclk        (aclk),
        .aresetn     (aresetn),
        .x           (freq_stat_x),
        .in_valid    (dphi_valid),
        .mean_num    (mean_freq_num),
        .var_num     (var_freq_num),
        .window_done (freq_stats_done)
    );

    // -------------------------------------------------------------------------
    // 5. 幅度和频率直方图并行支路
    // -------------------------------------------------------------------------

    // 使用幅度的高4位形成16档bin，覆盖约0～2.0的幅度范围。
    wire [3:0] mag_bin;
    assign mag_bin = mag_z1[22:19];

    // 频率bin映射：dphi右移15位后加8，将有符号区间平移到0～15。
    // 对应Fs=1 MHz时，每档频率宽度约为7.8125 kHz。
    reg signed [24:0] freq_bin_tmp;
    reg        [3:0]  freq_bin;
    always @* begin
        freq_bin_tmp = (dphi_raw >>> 15) + 25'sd8;
        if (freq_bin_tmp < 0)
            freq_bin = 4'd0;
        else if (freq_bin_tmp > 15)
            freq_bin = 4'd15;
        else
            freq_bin = freq_bin_tmp[3:0];
    end

    wire hist_mag_done;
    wire hist_freq_done;

    // 幅度直方图对每个有效特征样本计数。
    hist16_snapshot #(
        .LGN(LGN)
    ) u_hist_mag (
        .aclk        (aclk),
        .aresetn     (aresetn),
        .bin         (mag_bin),
        .in_valid    (dphi_valid),
        .bin_enable  (1'b1),
        .rd_addr     (hist_mag_rd_addr),
        .rd_data     (hist_mag_rd_data),
        .window_done (hist_mag_done)
    );

    // 频率直方图只统计幅度大于门限的样本，避免低幅度时随机相位污染结果。
    hist16_snapshot #(
        .LGN(LGN)
    ) u_hist_freq (
        .aclk        (aclk),
        .aresetn     (aresetn),
        .bin         (freq_bin),
        .in_valid    (dphi_valid),
        .bin_enable  (mag_z1 > MAG_GATE),
        .rd_addr     (hist_freq_rd_addr),
        .rd_data     (hist_freq_rd_data),
        .window_done (hist_freq_done)
    );

    // -------------------------------------------------------------------------
    // 6. PSK相位突跳检测并行支路
    // -------------------------------------------------------------------------
    wire psk_done;
    psk_spike_detector #(
        .PHASE_W(24),
        .LGN     (LGN)
    ) u_psk_detector (
        .aclk        (aclk),
        .aresetn     (aresetn),
        .dphi        (dphi_raw),
        .mag_good    (mag_z1 > MAG_GATE),
        .in_valid    (dphi_valid),
        .spike_count (psk_spike_count),
        .psk_flag    (psk_flag),
        .window_done (psk_done)
    );

    // -------------------------------------------------------------------------
    // 7. 统一帧完成信号
    // running_stats16是本设计结算延迟最长的支路；其done出现时，
    // 直方图和PSK快照已经稳定，因此用mag_stats_done触发BRAM写入。
    // freq_stats_done与mag_stats_done理论上同周期，可作为仿真一致性检查。
    // -------------------------------------------------------------------------
    assign frame_done = mag_stats_done;

endmodule
