// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 27 03:42:08 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw_v5/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_ddc_stage1_pl2_top_0_0/design_1_ddc_stage1_pl2_top_0_0_stub.v
// Design      : design_1_ddc_stage1_pl2_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ddc_stage1_pl2_top,Vivado 2018.3" *)
module design_1_ddc_stage1_pl2_top_0_0(aclk, aresetn, adc_data, adc_valid, m_i, m_q, 
  m_valid, m_ready, fifo_level, fifo_overflow_sticky, fir_overrun_sticky)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,adc_data[13:0],adc_valid,m_i[15:0],m_q[15:0],m_valid,m_ready,fifo_level[4:0],fifo_overflow_sticky,fir_overrun_sticky" */;
  input aclk;
  input aresetn;
  input [13:0]adc_data;
  input adc_valid;
  output [15:0]m_i;
  output [15:0]m_q;
  output m_valid;
  input m_ready;
  output [4:0]fifo_level;
  output fifo_overflow_sticky;
  output fir_overrun_sticky;
endmodule
