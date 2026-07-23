`timescale 1ns/1ps
`default_nettype none

//======================================================================
// 2023 电赛 D 题：第一级步骤4
// 模块名称：iq_mixer
//
// 功能：
//   I = adc_data * lo_cos
//   Q = adc_data * lo_neg_sin
//
// 位宽：
//   adc_data    : 14 bit signed
//   本振        : 16 bit signed
//   完整乘积    : 30 bit signed
//
// 说明：
//   1. 本模块可综合；
//   2. 第一版保留完整30 bit乘积，不做右移、舍入和截位；
//   3. mix_valid相对输入有效数据增加1个时钟周期延迟；
//   4. 14×16乘法适合后续由Vivado综合映射到DSP48E1。
//======================================================================

module iq_mixer (
    input  wire                         clk,
    input  wire                         rst_n,

    input  wire signed [13:0]           adc_data,
    input  wire                         adc_valid,

    input  wire signed [15:0]           lo_cos,
    input  wire signed [15:0]           lo_neg_sin,
    input  wire                         lo_valid,

    output reg signed [29:0]            mix_i,
    output reg signed [29:0]            mix_q,
    output reg                          mix_valid
);

    always @(posedge clk) begin
        if (!rst_n) begin
            mix_i     <= 30'sd0;
            mix_q     <= 30'sd0;
            mix_valid <= 1'b0;
        end
        else begin
            mix_valid <= adc_valid & lo_valid;

            if (adc_valid & lo_valid) begin
                mix_i <= $signed(adc_data) * $signed(lo_cos);
                mix_q <= $signed(adc_data) * $signed(lo_neg_sin);
            end
            else begin
                mix_i <= 30'sd0;
                mix_q <= 30'sd0;
            end
        end
    end

endmodule

`default_nettype wire
