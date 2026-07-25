// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jul 18 17:16:58 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_demod_pool_core_0_0/design_1_demod_pool_core_0_0_stub.v
// Design      : design_1_demod_pool_core_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "demod_pool_core,Vivado 2018.3" *)
module design_1_demod_pool_core_0_0(aclk, aresetn, s_i, s_q, s_valid, s_ready, mag_out, 
  dphi_out, feature_valid, mean_mag_num, var_mag_num, mean_freq_num, var_freq_num, 
  psk_spike_count, psk_flag, frame_done, hist_mag_rd_addr, hist_mag_rd_data, 
  hist_freq_rd_addr, hist_freq_rd_data)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_i[15:0],s_q[15:0],s_valid,s_ready,mag_out[23:0],dphi_out[23:0],feature_valid,mean_mag_num[31:0],var_mag_num[63:0],mean_freq_num[31:0],var_freq_num[63:0],psk_spike_count[31:0],psk_flag,frame_done,hist_mag_rd_addr[3:0],hist_mag_rd_data[31:0],hist_freq_rd_addr[3:0],hist_freq_rd_data[31:0]" */;
  input aclk;
  input aresetn;
  input [15:0]s_i;
  input [15:0]s_q;
  input s_valid;
  output s_ready;
  output [23:0]mag_out;
  output [23:0]dphi_out;
  output feature_valid;
  output [31:0]mean_mag_num;
  output [63:0]var_mag_num;
  output [31:0]mean_freq_num;
  output [63:0]var_freq_num;
  output [31:0]psk_spike_count;
  output psk_flag;
  output frame_done;
  input [3:0]hist_mag_rd_addr;
  output [31:0]hist_mag_rd_data;
  input [3:0]hist_freq_rd_addr;
  output [31:0]hist_freq_rd_data;
endmodule
