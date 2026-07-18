// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jul 18 00:33:17 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_feature_bram_writer_0_0/design_1_feature_bram_writer_0_0_stub.v
// Design      : design_1_feature_bram_writer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "feature_bram_writer,Vivado 2018.3" *)
module design_1_feature_bram_writer_0_0(aclk, aresetn, frame_done, var_mag_num, 
  var_freq_num, mean_mag_num, mean_freq_num, psk_spike_count, psk_flag, hist_mag_rd_addr, 
  hist_mag_rd_data, hist_freq_rd_addr, hist_freq_rd_data, bram_en, bram_we, bram_addr, 
  bram_wdata, busy)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,frame_done,var_mag_num[63:0],var_freq_num[63:0],mean_mag_num[31:0],mean_freq_num[31:0],psk_spike_count[31:0],psk_flag,hist_mag_rd_addr[3:0],hist_mag_rd_data[31:0],hist_freq_rd_addr[3:0],hist_freq_rd_data[31:0],bram_en,bram_we[3:0],bram_addr[31:0],bram_wdata[31:0],busy" */;
  input aclk;
  input aresetn;
  input frame_done;
  input [63:0]var_mag_num;
  input [63:0]var_freq_num;
  input [31:0]mean_mag_num;
  input [31:0]mean_freq_num;
  input [31:0]psk_spike_count;
  input psk_flag;
  output [3:0]hist_mag_rd_addr;
  input [31:0]hist_mag_rd_data;
  output [3:0]hist_freq_rd_addr;
  input [31:0]hist_freq_rd_data;
  output bram_en;
  output [3:0]bram_we;
  output [31:0]bram_addr;
  output [31:0]bram_wdata;
  output busy;
endmodule
