`timescale 1ns/1ps
`default_nettype none

//======================================================================
// 2023 电赛 D 题：第一级步骤6
// 模块：fir_decimator_iq_2
//
// 输入：步骤5 CIC输出，I/Q各45 bit signed，2 MHz有效数据
// 输出：I/Q各32 bit signed，1 MHz有效数据
//
// FIR参数：
//   25 taps
//   输入采样率：2 MHz
//   通带：0～100 kHz
//   阻带：400 kHz～1 MHz
//   抽取倍数：2
//   系数：18 bit signed，Q1.17
//
// CIC增益处理：
//   CIC直流增益为27000，约等于2^15。
//   FIR输入先算术右移15位，使数值恢复到便于后续处理的量级。
//   右移后的残余增益为27000/32768≈0.824。
//   本步骤保留这一固定比例，后续参数估计使用相对量或统一标定即可。
//
// 实现特点：
//   - 纯Verilog，可综合；
//   - 不依赖FIR Compiler IP或XCI；
//   - I/Q使用相同系数和相同抽取相位；
//   - 55 bit累加器，输出不做饱和，当前设计范围内不会溢出。
//======================================================================

module fir_decimator_iq_2 (
    input  wire                         clk,
    input  wire                         rst_n,

    input  wire signed [44:0]           in_i,
    input  wire signed [44:0]           in_q,
    input  wire                         in_valid,

    output reg signed [31:0]            out_i,
    output reg signed [31:0]            out_q,
    output reg                          out_valid
);

    localparam integer TAPS = 25;
    localparam integer COEFF_SHIFT = 17;
    localparam integer CIC_GAIN_SHIFT = 15;

    //------------------------------------------------------------------
    // CIC增益缩放：45 bit算术右移15位后取30 bit signed
    //------------------------------------------------------------------
    wire signed [44:0] shifted_i_45;
    wire signed [44:0] shifted_q_45;
    wire signed [29:0] scaled_i;
    wire signed [29:0] scaled_q;

    assign shifted_i_45 = $signed(in_i) >>> CIC_GAIN_SHIFT;
    assign shifted_q_45 = $signed(in_q) >>> CIC_GAIN_SHIFT;

    assign scaled_i = shifted_i_45[29:0];
    assign scaled_q = shifted_q_45[29:0];

    //------------------------------------------------------------------
    // 25抽头延迟线
    // delay[0]保存上一输入，当前输入直接作为tap 0。
    //------------------------------------------------------------------
    reg signed [29:0] delay_i [0:TAPS-2];
    reg signed [29:0] delay_q [0:TAPS-2];

    //------------------------------------------------------------------
    // 18 bit Q1.17 FIR系数
    // 系数总和严格为131072，因此直流增益严格为1。
    //------------------------------------------------------------------
    function signed [17:0] fir_coeff;
        input [4:0] index;
        begin
            case (index)
            5'd0: fir_coeff = 18'sd83;
            5'd1: fir_coeff = 18'sd297;
            5'd2: fir_coeff = 18'sd531;
            5'd3: fir_coeff = 18'sd410;
            5'd4: fir_coeff = -18'sd511;
            5'd5: fir_coeff = -18'sd2224;
            5'd6: fir_coeff = -18'sd3774;
            5'd7: fir_coeff = -18'sd3326;
            5'd8: fir_coeff = 18'sd894;
            5'd9: fir_coeff = 18'sd9208;
            5'd10: fir_coeff = 18'sd19631;
            5'd11: fir_coeff = 18'sd28400;
            5'd12: fir_coeff = 18'sd31834;
            5'd13: fir_coeff = 18'sd28400;
            5'd14: fir_coeff = 18'sd19631;
            5'd15: fir_coeff = 18'sd9208;
            5'd16: fir_coeff = 18'sd894;
            5'd17: fir_coeff = -18'sd3326;
            5'd18: fir_coeff = -18'sd3774;
            5'd19: fir_coeff = -18'sd2224;
            5'd20: fir_coeff = -18'sd511;
            5'd21: fir_coeff = 18'sd410;
            5'd22: fir_coeff = 18'sd531;
            5'd23: fir_coeff = 18'sd297;
            5'd24: fir_coeff = 18'sd83;
                default: fir_coeff = 18'sd0;
            endcase
        end
    endfunction

    //------------------------------------------------------------------
    // 当前输入与历史24点的组合卷积
    // 30×18=48 bit；25项求和使用55 bit。
    //------------------------------------------------------------------
    reg signed [54:0] sum_i_comb;
    reg signed [54:0] sum_q_comb;
    integer tap_index;

    always @* begin
        sum_i_comb =
            $signed(scaled_i) * $signed(fir_coeff(5'd0));

        sum_q_comb =
            $signed(scaled_q) * $signed(fir_coeff(5'd0));

        for (tap_index = 1; tap_index < TAPS; tap_index = tap_index + 1) begin
            sum_i_comb = sum_i_comb +
                $signed(delay_i[tap_index-1]) *
                $signed(fir_coeff(tap_index[4:0]));

            sum_q_comb = sum_q_comb +
                $signed(delay_q[tap_index-1]) *
                $signed(fir_coeff(tap_index[4:0]));
        end
    end

    wire signed [54:0] filtered_i_scaled;
    wire signed [54:0] filtered_q_scaled;

    assign filtered_i_scaled = $signed(sum_i_comb) >>> COEFF_SHIFT;
    assign filtered_q_scaled = $signed(sum_q_comb) >>> COEFF_SHIFT;

    //------------------------------------------------------------------
    // 每2个有效CIC输入输出1个FIR样本
    //------------------------------------------------------------------
    reg decim_phase;
    integer shift_index;

    always @(posedge clk) begin
        if (!rst_n) begin
            for (shift_index = 0;
                 shift_index < (TAPS-1);
                 shift_index = shift_index + 1) begin
                delay_i[shift_index] <= 30'sd0;
                delay_q[shift_index] <= 30'sd0;
            end

            decim_phase <= 1'b0;
            out_i       <= 32'sd0;
            out_q       <= 32'sd0;
            out_valid   <= 1'b0;
        end
        else begin
            out_valid <= 1'b0;

            if (in_valid) begin
                for (shift_index = TAPS-2;
                     shift_index > 0;
                     shift_index = shift_index - 1) begin
                    delay_i[shift_index] <= delay_i[shift_index-1];
                    delay_q[shift_index] <= delay_q[shift_index-1];
                end

                delay_i[0] <= scaled_i;
                delay_q[0] <= scaled_q;

                if (decim_phase) begin
                    out_i     <= filtered_i_scaled[31:0];
                    out_q     <= filtered_q_scaled[31:0];
                    out_valid <= 1'b1;
                end

                decim_phase <= ~decim_phase;
            end
        end
    end

endmodule

`default_nettype wire
