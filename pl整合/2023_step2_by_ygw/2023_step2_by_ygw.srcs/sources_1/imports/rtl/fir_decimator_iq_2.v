`timescale 1ns/1ps
`default_nettype none

//==============================================================================
// 模块：fir_decimator_iq_2
//
// 功能：
//   1. 接收三级 CIC 的 45 bit I/Q 输出；
//   2. 先右移 15 bit，补偿 CIC 的 30^3 = 27000 倍直流增益；
//   3. 对 I/Q 使用相同的 25 抽头低通 FIR；
//   4. 每两个有效输入输出一个样本，实现 2 倍抽取：
//        2 MSPS -> 1 MSPS。
//
// 与组员原版相比的关键改进：
//   原版在一个组合过程内同时完成两路各 25 次乘法和串行累加，
//   会形成很深的“乘法器 + 加法链”，同时存在 50 个逻辑乘法运算，
//   DSP 占用较高且不利于时序收敛。
//
//   本版利用输入有效脉冲之间的空闲周期进行时分复用：
//     - 上一级 CIC 每 30 个 60 MHz 时钟才产生一个 in_valid；
//     - 本模块只在每两个输入中的一个启动 FIR；
//     - 启动后用 25 个时钟依次计算 25 个 tap；
//     - I、Q 各复用一个逻辑乘法器。
//
//   注意：DSP48E1 的单个乘法器端口宽度小于 30 x 18 bit，因此 Vivado
//   可能把每个逻辑乘法拆到多个 DSP48。物理 DSP 数量以综合报告为准。
//
// 时序要求：
//   相邻 in_valid 的间隔必须不少于 26 个 clk 周期。
//   本工程的固定条件为 30 个周期，因此满足要求。
//   若违反该条件，mac_overrun_sticky 会被置 1，便于 ILA 排查。
//
// 系数格式：
//   18 bit signed，Q1.17；系数和为 2^17，直流增益为 1。
//==============================================================================

module fir_decimator_iq_2 (
    input  wire                         clk,
    input  wire                         rst_n,

    input  wire signed [44:0]           in_i,
    input  wire signed [44:0]           in_q,
    input  wire                         in_valid,

    output reg signed [31:0]            out_i,
    output reg signed [31:0]            out_q,
    output reg                          out_valid,

    // 诊断位：正常工作时必须始终为 0。
    output reg                          mac_overrun_sticky
);

    localparam integer TAPS           = 25;
    localparam integer COEFF_SHIFT    = 17;
    localparam integer CIC_GAIN_SHIFT = 15;

    //--------------------------------------------------------------------------
    // CIC 增益补偿
    //--------------------------------------------------------------------------
    wire signed [44:0] shifted_i_45;
    wire signed [44:0] shifted_q_45;
    wire signed [29:0] scaled_i;
    wire signed [29:0] scaled_q;

    assign shifted_i_45 = $signed(in_i) >>> CIC_GAIN_SHIFT;
    assign shifted_q_45 = $signed(in_q) >>> CIC_GAIN_SHIFT;

    // 在本工程输入范围内，补偿后的数据应落入 30 bit。
    assign scaled_i = shifted_i_45[29:0];
    assign scaled_q = shifted_q_45[29:0];

    //--------------------------------------------------------------------------
    // 25 抽头延迟线
    //
    // 每次 in_valid 到来时：
    //   delay[0]  <- 当前样本
    //   delay[1]  <- 上一个样本
    //   ...
    //   delay[24] <- 前 24 个样本
    //--------------------------------------------------------------------------
    reg signed [29:0] delay_i [0:TAPS-1];
    reg signed [29:0] delay_q [0:TAPS-1];

    //--------------------------------------------------------------------------
    // FIR 系数 ROM
    //--------------------------------------------------------------------------
    function signed [17:0] fir_coeff;
        input [4:0] index;
        begin
            case (index)
                5'd0:  fir_coeff =  18'sd83;
                5'd1:  fir_coeff =  18'sd297;
                5'd2:  fir_coeff =  18'sd531;
                5'd3:  fir_coeff =  18'sd410;
                5'd4:  fir_coeff = -18'sd511;
                5'd5:  fir_coeff = -18'sd2224;
                5'd6:  fir_coeff = -18'sd3774;
                5'd7:  fir_coeff = -18'sd3326;
                5'd8:  fir_coeff =  18'sd894;
                5'd9:  fir_coeff =  18'sd9208;
                5'd10: fir_coeff =  18'sd19631;
                5'd11: fir_coeff =  18'sd28400;
                5'd12: fir_coeff =  18'sd31834;
                5'd13: fir_coeff =  18'sd28400;
                5'd14: fir_coeff =  18'sd19631;
                5'd15: fir_coeff =  18'sd9208;
                5'd16: fir_coeff =  18'sd894;
                5'd17: fir_coeff = -18'sd3326;
                5'd18: fir_coeff = -18'sd3774;
                5'd19: fir_coeff = -18'sd2224;
                5'd20: fir_coeff = -18'sd511;
                5'd21: fir_coeff =  18'sd410;
                5'd22: fir_coeff =  18'sd531;
                5'd23: fir_coeff =  18'sd297;
                5'd24: fir_coeff =  18'sd83;
                default: fir_coeff = 18'sd0;
            endcase
        end
    endfunction

    //--------------------------------------------------------------------------
    // 顺序 MAC 数据通路
    // 30 x 18 bit 的乘积为 48 bit，25 项累加使用 55 bit。
    //--------------------------------------------------------------------------
    reg                         mac_busy;
    reg [4:0]                   mac_index;
    reg signed [54:0]           mac_acc_i;
    reg signed [54:0]           mac_acc_q;

    (* use_dsp = "yes" *)
    wire signed [47:0] mac_product_i;
    (* use_dsp = "yes" *)
    wire signed [47:0] mac_product_q;

    wire signed [54:0] mac_product_i_ext;
    wire signed [54:0] mac_product_q_ext;
    wire signed [54:0] mac_sum_i_next;
    wire signed [54:0] mac_sum_q_next;

    assign mac_product_i =
        $signed(delay_i[mac_index]) * $signed(fir_coeff(mac_index));
    assign mac_product_q =
        $signed(delay_q[mac_index]) * $signed(fir_coeff(mac_index));

    assign mac_product_i_ext = {{7{mac_product_i[47]}}, mac_product_i};
    assign mac_product_q_ext = {{7{mac_product_q[47]}}, mac_product_q};

    assign mac_sum_i_next = mac_acc_i + mac_product_i_ext;
    assign mac_sum_q_next = mac_acc_q + mac_product_q_ext;

    //--------------------------------------------------------------------------
    // Q1.17 系数缩放并饱和到 32 bit。
    // 饱和比直接截取低 32 bit 更安全，可避免过载时出现正负翻转。
    //--------------------------------------------------------------------------
    function signed [31:0] shift_and_saturate_32;
        input signed [54:0] value;
        reg signed [54:0] shifted;
        begin
            shifted = $signed(value) >>> COEFF_SHIFT;

            if (shifted > 55'sd2147483647)
                shift_and_saturate_32 = 32'sh7fffffff;
            else if (shifted < -55'sd2147483648)
                shift_and_saturate_32 = 32'sh80000000;
            else
                shift_and_saturate_32 = shifted[31:0];
        end
    endfunction

    // 每两个有效输入启动一次 FIR，完成 2 倍抽取。
    reg decim_phase;
    integer shift_index;

    always @(posedge clk) begin
        if (!rst_n) begin
            for (shift_index = 0;
                 shift_index < TAPS;
                 shift_index = shift_index + 1) begin
                delay_i[shift_index] <= 30'sd0;
                delay_q[shift_index] <= 30'sd0;
            end

            mac_busy            <= 1'b0;
            mac_index           <= 5'd0;
            mac_acc_i           <= 55'sd0;
            mac_acc_q           <= 55'sd0;
            decim_phase         <= 1'b0;

            out_i               <= 32'sd0;
            out_q               <= 32'sd0;
            out_valid           <= 1'b0;
            mac_overrun_sticky  <= 1'b0;
        end
        else begin
            // out_valid 是一个 clk 周期宽的脉冲。
            out_valid <= 1'b0;

            //------------------------------------------------------------------
            // 顺序执行一个 FIR tap。
            //------------------------------------------------------------------
            if (mac_busy) begin
                if (mac_index == (TAPS-1)) begin
                    // 第 25 项在本周期加入累加器后立即形成最终输出。
                    out_i     <= shift_and_saturate_32(mac_sum_i_next);
                    out_q     <= shift_and_saturate_32(mac_sum_q_next);
                    out_valid <= 1'b1;

                    mac_busy  <= 1'b0;
                    mac_index <= 5'd0;
                    mac_acc_i <= 55'sd0;
                    mac_acc_q <= 55'sd0;
                end
                else begin
                    mac_acc_i <= mac_sum_i_next;
                    mac_acc_q <= mac_sum_q_next;
                    mac_index <= mac_index + 5'd1;
                end
            end

            //------------------------------------------------------------------
            // 接收 CIC 新样本并更新延迟线。
            //------------------------------------------------------------------
            if (in_valid) begin
                for (shift_index = TAPS-1;
                     shift_index > 0;
                     shift_index = shift_index - 1) begin
                    delay_i[shift_index] <= delay_i[shift_index-1];
                    delay_q[shift_index] <= delay_q[shift_index-1];
                end

                delay_i[0] <= scaled_i;
                delay_q[0] <= scaled_q;

                // 每两个输入中的第二个输入触发一次完整 FIR。
                if (decim_phase) begin
                    if (mac_busy) begin
                        // 说明输入间隔小于本实现允许值。
                        mac_overrun_sticky <= 1'b1;
                    end
                    else begin
                        // 延迟线使用非阻塞赋值更新；从下一个时钟起，
                        // delay[0..24] 即为当前输出所需的完整 25 点窗口。
                        mac_busy  <= 1'b1;
                        mac_index <= 5'd0;
                        mac_acc_i <= 55'sd0;
                        mac_acc_q <= 55'sd0;
                    end
                end

                decim_phase <= ~decim_phase;
            end
        end
    end

endmodule

`default_nettype wire
