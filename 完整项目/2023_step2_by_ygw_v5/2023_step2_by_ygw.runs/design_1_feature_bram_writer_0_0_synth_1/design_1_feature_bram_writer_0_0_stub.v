// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 27 03:42:00 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_feature_bram_writer_0_0_stub.v
// Design      : design_1_feature_bram_writer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "feature_bram_writer,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, frame_done, var_mag_num, 
  var_freq_num, mean_mag_num, mean_freq_num, psk_spike_count, psk_flag, bpsk_carrier_locked, 
  bpsk_timing_locked, bpsk_rate_code, bpsk_bit_data, bpsk_bit_valid, hist_mag_rd_addr, 
  hist_mag_rd_data, hist_freq_rd_addr, hist_freq_rd_data, bram_en, bram_we, bram_addr, 
  bram_wdata, busy)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,frame_done,var_mag_num[63:0],var_freq_num[63:0],mean_mag_num[31:0],mean_freq_num[31:0],psk_spike_count[31:0],psk_flag,bpsk_carrier_locked,bpsk_timing_locked,bpsk_rate_code[1:0],bpsk_bit_data,bpsk_bit_valid,hist_mag_rd_addr[3:0],hist_mag_rd_data[31:0],hist_freq_rd_addr[3:0],hist_freq_rd_data[31:0],bram_en,bram_we[3:0],bram_addr[31:0],bram_wdata[31:0],busy" */;
  input aclk;
  input aresetn;
  input frame_done;
  input [63:0]var_mag_num;
  input [63:0]var_freq_num;
  input [31:0]mean_mag_num;
  input [31:0]mean_freq_num;
  input [31:0]psk_spike_count;
  input psk_flag;
  input bpsk_carrier_locked;
  input bpsk_timing_locked;
  input [1:0]bpsk_rate_code;
  input bpsk_bit_data;
  input bpsk_bit_valid;
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
