`timescale 1ns/1ps
`default_nettype none

//======================================================================
// 2023 电赛 D 题：第一级步骤7
// 模块：ddc_stage1_top
//
// 可综合第一级DDC顶层：
//   14 bit ADC，60 MHz
//        ↓
//   固定2 MHz正交LUT-NCO
//        ↓
//   I/Q数字混频，30 bit
//        ↓
//   三级CIC抽取30倍，45 bit，2 MHz
//        ↓
//   25抽头FIR抽取2倍，32 bit，1 MHz
//
// 注意：
//   adc_signal_source仅用于Testbench，不进入本顶层。
//======================================================================

module ddc_stage1_top (
    input  wire                         clk,
    input  wire                         rst_n,

    input  wire signed [13:0]           adc_data,
    input  wire                         adc_valid,

    output wire signed [31:0]           baseband_i,
    output wire signed [31:0]           baseband_q,
    output wire                         baseband_valid
);

    //------------------------------------------------------------------
    // Step03: 2 MHz quadrature LUT-NCO
    //------------------------------------------------------------------
    wire signed [15:0] lo_cos;
    wire signed [15:0] lo_neg_sin;
    wire               lo_valid;

    dds_2mhz_wrapper u_dds_2mhz_wrapper (
        .clk        (clk),
        .rst_n      (rst_n),
        .lo_cos     (lo_cos),
        .lo_neg_sin (lo_neg_sin),
        .lo_valid   (lo_valid)
    );

    //------------------------------------------------------------------
    // Step04: I/Q mixer
    //------------------------------------------------------------------
    wire signed [29:0] mix_i;
    wire signed [29:0] mix_q;
    wire               mix_valid;

    iq_mixer u_iq_mixer (
        .clk        (clk),
        .rst_n      (rst_n),
        .adc_data   (adc_data),
        .adc_valid  (adc_valid),
        .lo_cos     (lo_cos),
        .lo_neg_sin (lo_neg_sin),
        .lo_valid   (lo_valid),
        .mix_i      (mix_i),
        .mix_q      (mix_q),
        .mix_valid  (mix_valid)
    );

    //------------------------------------------------------------------
    // Step05: CIC decimation by 30
    //------------------------------------------------------------------
    wire signed [44:0] cic_i;
    wire signed [44:0] cic_q;
    wire               cic_valid;

    cic_decimator_iq_30 u_cic_decimator_iq_30 (
        .clk       (clk),
        .rst_n     (rst_n),
        .in_i      (mix_i),
        .in_q      (mix_q),
        .in_valid  (mix_valid),
        .out_i     (cic_i),
        .out_q     (cic_q),
        .out_valid (cic_valid)
    );

    //------------------------------------------------------------------
    // Step06: FIR low-pass and decimation by 2
    //------------------------------------------------------------------
    fir_decimator_iq_2 u_fir_decimator_iq_2 (
        .clk       (clk),
        .rst_n     (rst_n),
        .in_i      (cic_i),
        .in_q      (cic_q),
        .in_valid  (cic_valid),
        .out_i     (baseband_i),
        .out_q     (baseband_q),
        .out_valid (baseband_valid)
    );

endmodule

`default_nettype wire
