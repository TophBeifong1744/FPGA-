// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 26 00:45:08 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_smart_mux_stream_0_0_stub.v
// Design      : design_1_smart_mux_stream_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "smart_mux_stream,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, mux_ctrl, mag_out, dphi_out, 
  data_valid, bpsk_nrz_out, bpsk_sample_valid, audio_out, audio_valid, m_axis_tdata, 
  m_axis_tvalid, m_axis_tlast, m_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,mux_ctrl[31:0],mag_out[23:0],dphi_out[23:0],data_valid,bpsk_nrz_out[15:0],bpsk_sample_valid,audio_out[15:0],audio_valid,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tlast,m_axis_tready" */;
  input aclk;
  input aresetn;
  input [31:0]mux_ctrl;
  input [23:0]mag_out;
  input [23:0]dphi_out;
  input data_valid;
  input [15:0]bpsk_nrz_out;
  input bpsk_sample_valid;
  output [15:0]audio_out;
  output audio_valid;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input m_axis_tready;
endmodule
