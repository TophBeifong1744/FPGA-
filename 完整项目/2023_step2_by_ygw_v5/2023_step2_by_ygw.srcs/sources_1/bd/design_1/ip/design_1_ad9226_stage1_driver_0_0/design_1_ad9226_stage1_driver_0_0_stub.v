// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 27 03:41:58 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw_v5/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_ad9226_stage1_driver_0_0/design_1_ad9226_stage1_driver_0_0_stub.v
// Design      : design_1_ad9226_stage1_driver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ad9226_stage1_driver,Vivado 2018.3" *)
module design_1_ad9226_stage1_driver_0_0(clk_60m_adc, clk_60m_sample, clk_locked, 
  resetn, ad_clk, ad_data_in, ad_otr_in, adc_data, adc_valid, adc_otr, clk_60m_core, core_aresetn, 
  locked_debug)
/* synthesis syn_black_box black_box_pad_pin="clk_60m_adc,clk_60m_sample,clk_locked,resetn,ad_clk,ad_data_in[11:0],ad_otr_in,adc_data[13:0],adc_valid,adc_otr,clk_60m_core,core_aresetn,locked_debug" */;
  input clk_60m_adc;
  input clk_60m_sample;
  input clk_locked;
  input resetn;
  output ad_clk;
  input [11:0]ad_data_in;
  input ad_otr_in;
  output [13:0]adc_data;
  output adc_valid;
  output adc_otr;
  output clk_60m_core;
  output core_aresetn;
  output locked_debug;
endmodule
