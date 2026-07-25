// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 26 00:45:08 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_smart_mux_stream_0_0_sim_netlist.v
// Design      : design_1_smart_mux_stream_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_smart_mux_stream_0_0,smart_mux_stream,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "smart_mux_stream,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    mux_ctrl,
    mag_out,
    dphi_out,
    data_valid,
    bpsk_nrz_out,
    bpsk_sample_valid,
    audio_out,
    audio_valid,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [31:0]mux_ctrl;
  input [23:0]mag_out;
  input [23:0]dphi_out;
  input data_valid;
  input [15:0]bpsk_nrz_out;
  input bpsk_sample_valid;
  output [15:0]audio_out;
  output audio_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;

  wire aclk;
  wire aresetn;
  wire [15:0]audio_out;
  wire audio_valid;
  wire [15:0]bpsk_nrz_out;
  wire bpsk_sample_valid;
  wire data_valid;
  wire [23:0]dphi_out;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]mag_out;
  wire [31:0]mux_ctrl;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_smart_mux_stream inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .audio_out(audio_out),
        .audio_valid(audio_valid),
        .bpsk_nrz_out(bpsk_nrz_out),
        .bpsk_sample_valid(bpsk_sample_valid),
        .data_valid(data_valid),
        .dphi_out(dphi_out),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .mag_out(mag_out),
        .mux_ctrl(mux_ctrl));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_smart_mux_stream
   (aclk,
    aresetn,
    mux_ctrl,
    mag_out,
    dphi_out,
    data_valid,
    bpsk_nrz_out,
    bpsk_sample_valid,
    audio_out,
    audio_valid,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready);
  input aclk;
  input aresetn;
  input [31:0]mux_ctrl;
  input [23:0]mag_out;
  input [23:0]dphi_out;
  input data_valid;
  input [15:0]bpsk_nrz_out;
  input bpsk_sample_valid;
  (* mark_debug = "true" *) output [15:0]audio_out;
  output audio_valid;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input m_axis_tready;

  wire aclk;
  wire aresetn;
  (* MARK_DEBUG *) wire [15:0]audio_out;
  wire audio_out_inferred_i_17_n_0;
  wire audio_out_inferred_i_18_n_0;
  wire audio_out_inferred_i_19_n_0;
  wire audio_out_inferred_i_20_n_0;
  wire audio_out_inferred_i_21_n_0;
  wire audio_out_inferred_i_22_n_0;
  wire audio_out_inferred_i_23_n_0;
  wire audio_out_inferred_i_24_n_0;
  wire audio_out_inferred_i_25_n_0;
  wire audio_out_inferred_i_26_n_0;
  wire audio_out_inferred_i_27_n_0;
  wire audio_out_inferred_i_28_n_0;
  wire audio_out_inferred_i_29_n_0;
  wire audio_out_inferred_i_30_n_0;
  wire audio_out_inferred_i_31_n_0;
  wire audio_out_inferred_i_32_n_0;
  wire audio_out_inferred_i_35_n_0;
  wire audio_out_inferred_i_35_n_1;
  wire audio_out_inferred_i_35_n_2;
  wire audio_out_inferred_i_35_n_3;
  wire audio_out_inferred_i_36_n_0;
  wire audio_out_inferred_i_37_n_0;
  wire audio_out_inferred_i_37_n_1;
  wire audio_out_inferred_i_37_n_2;
  wire audio_out_inferred_i_37_n_3;
  wire audio_out_inferred_i_38_n_0;
  wire audio_out_inferred_i_38_n_1;
  wire audio_out_inferred_i_38_n_2;
  wire audio_out_inferred_i_38_n_3;
  wire audio_out_inferred_i_39_n_0;
  wire audio_out_inferred_i_40_n_0;
  wire audio_out_inferred_i_41_n_0;
  wire audio_out_inferred_i_42_n_0;
  wire audio_out_inferred_i_43_n_0;
  wire audio_out_inferred_i_44_n_0;
  wire audio_out_inferred_i_45_n_0;
  wire audio_out_inferred_i_46_n_0;
  wire audio_out_inferred_i_47_n_0;
  wire audio_out_inferred_i_47_n_1;
  wire audio_out_inferred_i_47_n_2;
  wire audio_out_inferred_i_47_n_3;
  wire audio_out_inferred_i_48_n_0;
  wire audio_out_inferred_i_49_n_0;
  wire audio_out_inferred_i_50_n_0;
  wire audio_out_inferred_i_51_n_0;
  wire audio_out_inferred_i_52_n_0;
  wire audio_out_inferred_i_53_n_0;
  wire audio_out_inferred_i_54_n_0;
  wire audio_out_inferred_i_55_n_0;
  wire audio_out_inferred_i_56_n_0;
  wire audio_out_inferred_i_57_n_0;
  wire audio_out_inferred_i_58_n_0;
  wire audio_out_inferred_i_59_n_0;
  wire audio_out_inferred_i_60_n_0;
  wire audio_out_inferred_i_61_n_0;
  wire audio_out_inferred_i_62_n_0;
  wire audio_out_inferred_i_63_n_0;
  wire audio_out_inferred_i_64_n_0;
  wire audio_out_inferred_i_65_n_0;
  wire audio_out_inferred_i_66_n_0;
  wire audio_out_inferred_i_67_n_0;
  wire audio_out_inferred_i_68_n_0;
  wire audio_out_inferred_i_69_n_0;
  wire audio_out_inferred_i_70_n_0;
  wire audio_valid;
  wire [15:0]bpsk_nrz_out;
  wire bpsk_sample_valid;
  wire clear;
  wire \dac_iir[0]_i_10_n_0 ;
  wire \dac_iir[0]_i_11_n_0 ;
  wire \dac_iir[0]_i_12_n_0 ;
  wire \dac_iir[0]_i_13_n_0 ;
  wire \dac_iir[0]_i_14_n_0 ;
  wire \dac_iir[0]_i_15_n_0 ;
  wire \dac_iir[0]_i_3_n_0 ;
  wire \dac_iir[0]_i_4_n_0 ;
  wire \dac_iir[0]_i_5_n_0 ;
  wire \dac_iir[0]_i_6_n_0 ;
  wire \dac_iir[0]_i_8_n_0 ;
  wire \dac_iir[0]_i_9_n_0 ;
  wire \dac_iir[12]_i_10_n_0 ;
  wire \dac_iir[12]_i_3_n_0 ;
  wire \dac_iir[12]_i_4_n_0 ;
  wire \dac_iir[12]_i_5_n_0 ;
  wire \dac_iir[12]_i_6_n_0 ;
  wire \dac_iir[12]_i_7_n_0 ;
  wire \dac_iir[12]_i_8_n_0 ;
  wire \dac_iir[12]_i_9_n_0 ;
  wire \dac_iir[16]_i_10_n_0 ;
  wire \dac_iir[16]_i_3_n_0 ;
  wire \dac_iir[16]_i_4_n_0 ;
  wire \dac_iir[16]_i_5_n_0 ;
  wire \dac_iir[16]_i_6_n_0 ;
  wire \dac_iir[16]_i_7_n_0 ;
  wire \dac_iir[16]_i_8_n_0 ;
  wire \dac_iir[16]_i_9_n_0 ;
  wire \dac_iir[20]_i_10_n_0 ;
  wire \dac_iir[20]_i_3_n_0 ;
  wire \dac_iir[20]_i_4_n_0 ;
  wire \dac_iir[20]_i_5_n_0 ;
  wire \dac_iir[20]_i_6_n_0 ;
  wire \dac_iir[20]_i_7_n_0 ;
  wire \dac_iir[20]_i_8_n_0 ;
  wire \dac_iir[20]_i_9_n_0 ;
  wire \dac_iir[24]_i_10_n_0 ;
  wire \dac_iir[24]_i_3_n_0 ;
  wire \dac_iir[24]_i_4_n_0 ;
  wire \dac_iir[24]_i_5_n_0 ;
  wire \dac_iir[24]_i_6_n_0 ;
  wire \dac_iir[24]_i_7_n_0 ;
  wire \dac_iir[24]_i_8_n_0 ;
  wire \dac_iir[24]_i_9_n_0 ;
  wire \dac_iir[28]_i_2_n_0 ;
  wire \dac_iir[28]_i_3_n_0 ;
  wire \dac_iir[28]_i_4_n_0 ;
  wire \dac_iir[28]_i_5_n_0 ;
  wire \dac_iir[4]_i_10_n_0 ;
  wire \dac_iir[4]_i_3_n_0 ;
  wire \dac_iir[4]_i_4_n_0 ;
  wire \dac_iir[4]_i_5_n_0 ;
  wire \dac_iir[4]_i_6_n_0 ;
  wire \dac_iir[4]_i_7_n_0 ;
  wire \dac_iir[4]_i_8_n_0 ;
  wire \dac_iir[4]_i_9_n_0 ;
  wire \dac_iir[8]_i_10_n_0 ;
  wire \dac_iir[8]_i_3_n_0 ;
  wire \dac_iir[8]_i_4_n_0 ;
  wire \dac_iir[8]_i_5_n_0 ;
  wire \dac_iir[8]_i_6_n_0 ;
  wire \dac_iir[8]_i_7_n_0 ;
  wire \dac_iir[8]_i_8_n_0 ;
  wire \dac_iir[8]_i_9_n_0 ;
  wire \dac_iir_reg[0]_i_1_n_0 ;
  wire \dac_iir_reg[0]_i_1_n_1 ;
  wire \dac_iir_reg[0]_i_1_n_2 ;
  wire \dac_iir_reg[0]_i_1_n_3 ;
  wire \dac_iir_reg[0]_i_1_n_4 ;
  wire \dac_iir_reg[0]_i_1_n_5 ;
  wire \dac_iir_reg[0]_i_1_n_6 ;
  wire \dac_iir_reg[0]_i_1_n_7 ;
  wire \dac_iir_reg[0]_i_2_n_0 ;
  wire \dac_iir_reg[0]_i_2_n_1 ;
  wire \dac_iir_reg[0]_i_2_n_2 ;
  wire \dac_iir_reg[0]_i_2_n_3 ;
  wire \dac_iir_reg[0]_i_2_n_4 ;
  wire \dac_iir_reg[0]_i_2_n_5 ;
  wire \dac_iir_reg[0]_i_2_n_6 ;
  wire \dac_iir_reg[0]_i_2_n_7 ;
  wire \dac_iir_reg[0]_i_7_n_0 ;
  wire \dac_iir_reg[0]_i_7_n_1 ;
  wire \dac_iir_reg[0]_i_7_n_2 ;
  wire \dac_iir_reg[0]_i_7_n_3 ;
  wire \dac_iir_reg[12]_i_1_n_0 ;
  wire \dac_iir_reg[12]_i_1_n_1 ;
  wire \dac_iir_reg[12]_i_1_n_2 ;
  wire \dac_iir_reg[12]_i_1_n_3 ;
  wire \dac_iir_reg[12]_i_1_n_4 ;
  wire \dac_iir_reg[12]_i_1_n_5 ;
  wire \dac_iir_reg[12]_i_1_n_6 ;
  wire \dac_iir_reg[12]_i_1_n_7 ;
  wire \dac_iir_reg[12]_i_2_n_0 ;
  wire \dac_iir_reg[12]_i_2_n_1 ;
  wire \dac_iir_reg[12]_i_2_n_2 ;
  wire \dac_iir_reg[12]_i_2_n_3 ;
  wire \dac_iir_reg[12]_i_2_n_4 ;
  wire \dac_iir_reg[12]_i_2_n_5 ;
  wire \dac_iir_reg[12]_i_2_n_6 ;
  wire \dac_iir_reg[12]_i_2_n_7 ;
  wire \dac_iir_reg[16]_i_1_n_0 ;
  wire \dac_iir_reg[16]_i_1_n_1 ;
  wire \dac_iir_reg[16]_i_1_n_2 ;
  wire \dac_iir_reg[16]_i_1_n_3 ;
  wire \dac_iir_reg[16]_i_1_n_4 ;
  wire \dac_iir_reg[16]_i_1_n_5 ;
  wire \dac_iir_reg[16]_i_1_n_6 ;
  wire \dac_iir_reg[16]_i_1_n_7 ;
  wire \dac_iir_reg[16]_i_2_n_0 ;
  wire \dac_iir_reg[16]_i_2_n_1 ;
  wire \dac_iir_reg[16]_i_2_n_2 ;
  wire \dac_iir_reg[16]_i_2_n_3 ;
  wire \dac_iir_reg[16]_i_2_n_4 ;
  wire \dac_iir_reg[16]_i_2_n_5 ;
  wire \dac_iir_reg[16]_i_2_n_6 ;
  wire \dac_iir_reg[16]_i_2_n_7 ;
  wire \dac_iir_reg[20]_i_1_n_0 ;
  wire \dac_iir_reg[20]_i_1_n_1 ;
  wire \dac_iir_reg[20]_i_1_n_2 ;
  wire \dac_iir_reg[20]_i_1_n_3 ;
  wire \dac_iir_reg[20]_i_1_n_4 ;
  wire \dac_iir_reg[20]_i_1_n_5 ;
  wire \dac_iir_reg[20]_i_1_n_6 ;
  wire \dac_iir_reg[20]_i_1_n_7 ;
  wire \dac_iir_reg[20]_i_2_n_0 ;
  wire \dac_iir_reg[20]_i_2_n_1 ;
  wire \dac_iir_reg[20]_i_2_n_2 ;
  wire \dac_iir_reg[20]_i_2_n_3 ;
  wire \dac_iir_reg[20]_i_2_n_4 ;
  wire \dac_iir_reg[20]_i_2_n_5 ;
  wire \dac_iir_reg[20]_i_2_n_6 ;
  wire \dac_iir_reg[20]_i_2_n_7 ;
  wire \dac_iir_reg[24]_i_1_n_0 ;
  wire \dac_iir_reg[24]_i_1_n_1 ;
  wire \dac_iir_reg[24]_i_1_n_2 ;
  wire \dac_iir_reg[24]_i_1_n_3 ;
  wire \dac_iir_reg[24]_i_1_n_4 ;
  wire \dac_iir_reg[24]_i_1_n_5 ;
  wire \dac_iir_reg[24]_i_1_n_6 ;
  wire \dac_iir_reg[24]_i_1_n_7 ;
  wire \dac_iir_reg[24]_i_2_n_1 ;
  wire \dac_iir_reg[24]_i_2_n_2 ;
  wire \dac_iir_reg[24]_i_2_n_3 ;
  wire \dac_iir_reg[24]_i_2_n_5 ;
  wire \dac_iir_reg[24]_i_2_n_6 ;
  wire \dac_iir_reg[24]_i_2_n_7 ;
  wire \dac_iir_reg[28]_i_1_n_1 ;
  wire \dac_iir_reg[28]_i_1_n_2 ;
  wire \dac_iir_reg[28]_i_1_n_3 ;
  wire \dac_iir_reg[28]_i_1_n_4 ;
  wire \dac_iir_reg[28]_i_1_n_5 ;
  wire \dac_iir_reg[28]_i_1_n_6 ;
  wire \dac_iir_reg[28]_i_1_n_7 ;
  wire \dac_iir_reg[4]_i_1_n_0 ;
  wire \dac_iir_reg[4]_i_1_n_1 ;
  wire \dac_iir_reg[4]_i_1_n_2 ;
  wire \dac_iir_reg[4]_i_1_n_3 ;
  wire \dac_iir_reg[4]_i_1_n_4 ;
  wire \dac_iir_reg[4]_i_1_n_5 ;
  wire \dac_iir_reg[4]_i_1_n_6 ;
  wire \dac_iir_reg[4]_i_1_n_7 ;
  wire \dac_iir_reg[4]_i_2_n_0 ;
  wire \dac_iir_reg[4]_i_2_n_1 ;
  wire \dac_iir_reg[4]_i_2_n_2 ;
  wire \dac_iir_reg[4]_i_2_n_3 ;
  wire \dac_iir_reg[4]_i_2_n_4 ;
  wire \dac_iir_reg[4]_i_2_n_5 ;
  wire \dac_iir_reg[4]_i_2_n_6 ;
  wire \dac_iir_reg[4]_i_2_n_7 ;
  wire \dac_iir_reg[8]_i_1_n_0 ;
  wire \dac_iir_reg[8]_i_1_n_1 ;
  wire \dac_iir_reg[8]_i_1_n_2 ;
  wire \dac_iir_reg[8]_i_1_n_3 ;
  wire \dac_iir_reg[8]_i_1_n_4 ;
  wire \dac_iir_reg[8]_i_1_n_5 ;
  wire \dac_iir_reg[8]_i_1_n_6 ;
  wire \dac_iir_reg[8]_i_1_n_7 ;
  wire \dac_iir_reg[8]_i_2_n_0 ;
  wire \dac_iir_reg[8]_i_2_n_1 ;
  wire \dac_iir_reg[8]_i_2_n_2 ;
  wire \dac_iir_reg[8]_i_2_n_3 ;
  wire \dac_iir_reg[8]_i_2_n_4 ;
  wire \dac_iir_reg[8]_i_2_n_5 ;
  wire \dac_iir_reg[8]_i_2_n_6 ;
  wire \dac_iir_reg[8]_i_2_n_7 ;
  wire \dac_iir_reg_n_0_[0] ;
  wire \dac_iir_reg_n_0_[10] ;
  wire \dac_iir_reg_n_0_[11] ;
  wire \dac_iir_reg_n_0_[12] ;
  wire \dac_iir_reg_n_0_[13] ;
  wire \dac_iir_reg_n_0_[14] ;
  wire \dac_iir_reg_n_0_[15] ;
  wire \dac_iir_reg_n_0_[16] ;
  wire \dac_iir_reg_n_0_[17] ;
  wire \dac_iir_reg_n_0_[18] ;
  wire \dac_iir_reg_n_0_[19] ;
  wire \dac_iir_reg_n_0_[1] ;
  wire \dac_iir_reg_n_0_[20] ;
  wire \dac_iir_reg_n_0_[21] ;
  wire \dac_iir_reg_n_0_[22] ;
  wire \dac_iir_reg_n_0_[23] ;
  wire \dac_iir_reg_n_0_[24] ;
  wire \dac_iir_reg_n_0_[25] ;
  wire \dac_iir_reg_n_0_[26] ;
  wire \dac_iir_reg_n_0_[27] ;
  wire \dac_iir_reg_n_0_[28] ;
  wire \dac_iir_reg_n_0_[29] ;
  wire \dac_iir_reg_n_0_[2] ;
  wire \dac_iir_reg_n_0_[30] ;
  wire \dac_iir_reg_n_0_[3] ;
  wire \dac_iir_reg_n_0_[4] ;
  wire \dac_iir_reg_n_0_[5] ;
  wire \dac_iir_reg_n_0_[6] ;
  wire \dac_iir_reg_n_0_[7] ;
  wire \dac_iir_reg_n_0_[8] ;
  wire \dac_iir_reg_n_0_[9] ;
  wire [11:1]data0;
  wire data_valid;
  wire \delay_line_reg[31][0]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][10]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][11]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][12]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][13]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][14]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][15]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][16]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][17]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][18]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][19]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][1]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][20]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][21]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][22]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][23]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][2]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][3]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][4]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][5]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][6]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][7]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][8]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[31][9]_srl32___delay_line_reg_r_30_n_1 ;
  wire \delay_line_reg[61][0]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][10]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][11]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][12]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][13]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][14]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][15]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][16]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][17]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][18]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][19]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][1]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][20]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][21]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][22]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][23]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][2]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][3]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][4]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][5]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][6]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][7]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][8]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[61][9]_srl30___delay_line_reg_r_60_n_0 ;
  wire \delay_line_reg[62][0]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][10]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][11]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][12]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][13]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][14]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][15]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][16]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][17]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][18]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][19]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][1]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][20]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][21]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][22]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][23]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][2]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][3]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][4]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][5]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][6]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][7]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][8]_delay_line_reg_r_61_n_0 ;
  wire \delay_line_reg[62][9]_delay_line_reg_r_61_n_0 ;
  wire [23:0]\delay_line_reg[63] ;
  wire delay_line_reg_gate__0_n_0;
  wire delay_line_reg_gate__10_n_0;
  wire delay_line_reg_gate__11_n_0;
  wire delay_line_reg_gate__12_n_0;
  wire delay_line_reg_gate__13_n_0;
  wire delay_line_reg_gate__14_n_0;
  wire delay_line_reg_gate__15_n_0;
  wire delay_line_reg_gate__16_n_0;
  wire delay_line_reg_gate__17_n_0;
  wire delay_line_reg_gate__18_n_0;
  wire delay_line_reg_gate__19_n_0;
  wire delay_line_reg_gate__1_n_0;
  wire delay_line_reg_gate__20_n_0;
  wire delay_line_reg_gate__21_n_0;
  wire delay_line_reg_gate__22_n_0;
  wire delay_line_reg_gate__2_n_0;
  wire delay_line_reg_gate__3_n_0;
  wire delay_line_reg_gate__4_n_0;
  wire delay_line_reg_gate__5_n_0;
  wire delay_line_reg_gate__6_n_0;
  wire delay_line_reg_gate__7_n_0;
  wire delay_line_reg_gate__8_n_0;
  wire delay_line_reg_gate__9_n_0;
  wire delay_line_reg_gate_n_0;
  wire delay_line_reg_r_0_n_0;
  wire delay_line_reg_r_10_n_0;
  wire delay_line_reg_r_11_n_0;
  wire delay_line_reg_r_12_n_0;
  wire delay_line_reg_r_13_n_0;
  wire delay_line_reg_r_14_n_0;
  wire delay_line_reg_r_15_n_0;
  wire delay_line_reg_r_16_n_0;
  wire delay_line_reg_r_17_n_0;
  wire delay_line_reg_r_18_n_0;
  wire delay_line_reg_r_19_n_0;
  wire delay_line_reg_r_1_n_0;
  wire delay_line_reg_r_20_n_0;
  wire delay_line_reg_r_21_n_0;
  wire delay_line_reg_r_22_n_0;
  wire delay_line_reg_r_23_n_0;
  wire delay_line_reg_r_24_n_0;
  wire delay_line_reg_r_25_n_0;
  wire delay_line_reg_r_26_n_0;
  wire delay_line_reg_r_27_n_0;
  wire delay_line_reg_r_28_n_0;
  wire delay_line_reg_r_29_n_0;
  wire delay_line_reg_r_2_n_0;
  wire delay_line_reg_r_30_n_0;
  wire delay_line_reg_r_31_n_0;
  wire delay_line_reg_r_32_n_0;
  wire delay_line_reg_r_33_n_0;
  wire delay_line_reg_r_34_n_0;
  wire delay_line_reg_r_35_n_0;
  wire delay_line_reg_r_36_n_0;
  wire delay_line_reg_r_37_n_0;
  wire delay_line_reg_r_38_n_0;
  wire delay_line_reg_r_39_n_0;
  wire delay_line_reg_r_3_n_0;
  wire delay_line_reg_r_40_n_0;
  wire delay_line_reg_r_41_n_0;
  wire delay_line_reg_r_42_n_0;
  wire delay_line_reg_r_43_n_0;
  wire delay_line_reg_r_44_n_0;
  wire delay_line_reg_r_45_n_0;
  wire delay_line_reg_r_46_n_0;
  wire delay_line_reg_r_47_n_0;
  wire delay_line_reg_r_48_n_0;
  wire delay_line_reg_r_49_n_0;
  wire delay_line_reg_r_4_n_0;
  wire delay_line_reg_r_50_n_0;
  wire delay_line_reg_r_51_n_0;
  wire delay_line_reg_r_52_n_0;
  wire delay_line_reg_r_53_n_0;
  wire delay_line_reg_r_54_n_0;
  wire delay_line_reg_r_55_n_0;
  wire delay_line_reg_r_56_n_0;
  wire delay_line_reg_r_57_n_0;
  wire delay_line_reg_r_58_n_0;
  wire delay_line_reg_r_59_n_0;
  wire delay_line_reg_r_5_n_0;
  wire delay_line_reg_r_60_n_0;
  wire delay_line_reg_r_61_n_0;
  wire delay_line_reg_r_6_n_0;
  wire delay_line_reg_r_7_n_0;
  wire delay_line_reg_r_8_n_0;
  wire delay_line_reg_r_9_n_0;
  wire delay_line_reg_r_n_0;
  wire [23:0]dphi_out;
  wire fm_audio_out1;
  wire fm_audio_out2;
  wire in0;
  wire [31:0]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tlast_INST_0_i_1_n_0;
  wire m_axis_tlast_INST_0_i_2_n_0;
  wire m_axis_tlast_INST_0_i_3_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]mag_out;
  wire [31:0]mux_ctrl;
  (* async_reg = "true" *) wire [2:0]mux_meta;
  wire [2:0]mux_sel;
  wire \mux_sel[0]_i_1_n_0 ;
  wire \mux_sel[1]_i_1_n_0 ;
  wire \mux_sel[2]_i_1_n_0 ;
  (* async_reg = "true" *) wire [2:0]mux_sync;
  wire [2:0]mux_sync_d;
  wire p_0_in0;
  wire p_1_in;
  wire [23:0]selected_data;
  wire \selected_data[0]_i_1_n_0 ;
  wire \selected_data[10]_i_1_n_0 ;
  wire \selected_data[11]_i_1_n_0 ;
  wire \selected_data[12]_i_1_n_0 ;
  wire \selected_data[13]_i_1_n_0 ;
  wire \selected_data[14]_i_1_n_0 ;
  wire \selected_data[15]_i_1_n_0 ;
  wire \selected_data[16]_i_1_n_0 ;
  wire \selected_data[17]_i_1_n_0 ;
  wire \selected_data[18]_i_1_n_0 ;
  wire \selected_data[19]_i_1_n_0 ;
  wire \selected_data[1]_i_1_n_0 ;
  wire \selected_data[20]_i_1_n_0 ;
  wire \selected_data[21]_i_1_n_0 ;
  wire \selected_data[22]_i_1_n_0 ;
  wire \selected_data[23]_i_1_n_0 ;
  wire \selected_data[2]_i_1_n_0 ;
  wire \selected_data[3]_i_1_n_0 ;
  wire \selected_data[4]_i_1_n_0 ;
  wire \selected_data[5]_i_1_n_0 ;
  wire \selected_data[6]_i_1_n_0 ;
  wire \selected_data[7]_i_1_n_0 ;
  wire \selected_data[8]_i_1_n_0 ;
  wire \selected_data[9]_i_1_n_0 ;
  wire [5:0]sum_reg;
  wire \sum_reg[11]_i_2_n_0 ;
  wire \sum_reg[11]_i_3_n_0 ;
  wire \sum_reg[11]_i_4_n_0 ;
  wire \sum_reg[11]_i_5_n_0 ;
  wire \sum_reg[11]_i_6_n_0 ;
  wire \sum_reg[11]_i_7_n_0 ;
  wire \sum_reg[11]_i_8_n_0 ;
  wire \sum_reg[11]_i_9_n_0 ;
  wire \sum_reg[15]_i_2_n_0 ;
  wire \sum_reg[15]_i_3_n_0 ;
  wire \sum_reg[15]_i_4_n_0 ;
  wire \sum_reg[15]_i_5_n_0 ;
  wire \sum_reg[15]_i_6_n_0 ;
  wire \sum_reg[15]_i_7_n_0 ;
  wire \sum_reg[15]_i_8_n_0 ;
  wire \sum_reg[15]_i_9_n_0 ;
  wire \sum_reg[19]_i_2_n_0 ;
  wire \sum_reg[19]_i_3_n_0 ;
  wire \sum_reg[19]_i_4_n_0 ;
  wire \sum_reg[19]_i_5_n_0 ;
  wire \sum_reg[19]_i_6_n_0 ;
  wire \sum_reg[19]_i_7_n_0 ;
  wire \sum_reg[19]_i_8_n_0 ;
  wire \sum_reg[19]_i_9_n_0 ;
  wire \sum_reg[23]_i_2_n_0 ;
  wire \sum_reg[23]_i_3_n_0 ;
  wire \sum_reg[23]_i_4_n_0 ;
  wire \sum_reg[23]_i_5_n_0 ;
  wire \sum_reg[23]_i_6_n_0 ;
  wire \sum_reg[23]_i_7_n_0 ;
  wire \sum_reg[23]_i_8_n_0 ;
  wire \sum_reg[23]_i_9_n_0 ;
  wire \sum_reg[27]_i_2_n_0 ;
  wire \sum_reg[27]_i_3_n_0 ;
  wire \sum_reg[27]_i_4_n_0 ;
  wire \sum_reg[27]_i_5_n_0 ;
  wire \sum_reg[27]_i_6_n_0 ;
  wire \sum_reg[29]_i_3_n_0 ;
  wire \sum_reg[29]_i_4_n_0 ;
  wire \sum_reg[3]_i_2_n_0 ;
  wire \sum_reg[3]_i_3_n_0 ;
  wire \sum_reg[3]_i_4_n_0 ;
  wire \sum_reg[3]_i_5_n_0 ;
  wire \sum_reg[3]_i_6_n_0 ;
  wire \sum_reg[3]_i_7_n_0 ;
  wire \sum_reg[3]_i_8_n_0 ;
  wire \sum_reg[3]_i_9_n_0 ;
  wire \sum_reg[7]_i_2_n_0 ;
  wire \sum_reg[7]_i_3_n_0 ;
  wire \sum_reg[7]_i_4_n_0 ;
  wire \sum_reg[7]_i_5_n_0 ;
  wire \sum_reg[7]_i_6_n_0 ;
  wire \sum_reg[7]_i_7_n_0 ;
  wire \sum_reg[7]_i_8_n_0 ;
  wire \sum_reg[7]_i_9_n_0 ;
  wire \sum_reg_reg[11]_i_1_n_0 ;
  wire \sum_reg_reg[11]_i_1_n_1 ;
  wire \sum_reg_reg[11]_i_1_n_2 ;
  wire \sum_reg_reg[11]_i_1_n_3 ;
  wire \sum_reg_reg[11]_i_1_n_4 ;
  wire \sum_reg_reg[11]_i_1_n_5 ;
  wire \sum_reg_reg[11]_i_1_n_6 ;
  wire \sum_reg_reg[11]_i_1_n_7 ;
  wire \sum_reg_reg[15]_i_1_n_0 ;
  wire \sum_reg_reg[15]_i_1_n_1 ;
  wire \sum_reg_reg[15]_i_1_n_2 ;
  wire \sum_reg_reg[15]_i_1_n_3 ;
  wire \sum_reg_reg[15]_i_1_n_4 ;
  wire \sum_reg_reg[15]_i_1_n_5 ;
  wire \sum_reg_reg[15]_i_1_n_6 ;
  wire \sum_reg_reg[15]_i_1_n_7 ;
  wire \sum_reg_reg[19]_i_1_n_0 ;
  wire \sum_reg_reg[19]_i_1_n_1 ;
  wire \sum_reg_reg[19]_i_1_n_2 ;
  wire \sum_reg_reg[19]_i_1_n_3 ;
  wire \sum_reg_reg[19]_i_1_n_4 ;
  wire \sum_reg_reg[19]_i_1_n_5 ;
  wire \sum_reg_reg[19]_i_1_n_6 ;
  wire \sum_reg_reg[19]_i_1_n_7 ;
  wire \sum_reg_reg[23]_i_1_n_0 ;
  wire \sum_reg_reg[23]_i_1_n_1 ;
  wire \sum_reg_reg[23]_i_1_n_2 ;
  wire \sum_reg_reg[23]_i_1_n_3 ;
  wire \sum_reg_reg[23]_i_1_n_4 ;
  wire \sum_reg_reg[23]_i_1_n_5 ;
  wire \sum_reg_reg[23]_i_1_n_6 ;
  wire \sum_reg_reg[23]_i_1_n_7 ;
  wire \sum_reg_reg[27]_i_1_n_0 ;
  wire \sum_reg_reg[27]_i_1_n_1 ;
  wire \sum_reg_reg[27]_i_1_n_2 ;
  wire \sum_reg_reg[27]_i_1_n_3 ;
  wire \sum_reg_reg[27]_i_1_n_4 ;
  wire \sum_reg_reg[27]_i_1_n_5 ;
  wire \sum_reg_reg[27]_i_1_n_6 ;
  wire \sum_reg_reg[27]_i_1_n_7 ;
  wire \sum_reg_reg[29]_i_2_n_3 ;
  wire \sum_reg_reg[29]_i_2_n_6 ;
  wire \sum_reg_reg[29]_i_2_n_7 ;
  wire \sum_reg_reg[3]_i_1_n_0 ;
  wire \sum_reg_reg[3]_i_1_n_1 ;
  wire \sum_reg_reg[3]_i_1_n_2 ;
  wire \sum_reg_reg[3]_i_1_n_3 ;
  wire \sum_reg_reg[3]_i_1_n_4 ;
  wire \sum_reg_reg[3]_i_1_n_5 ;
  wire \sum_reg_reg[3]_i_1_n_6 ;
  wire \sum_reg_reg[3]_i_1_n_7 ;
  wire \sum_reg_reg[7]_i_1_n_0 ;
  wire \sum_reg_reg[7]_i_1_n_1 ;
  wire \sum_reg_reg[7]_i_1_n_2 ;
  wire \sum_reg_reg[7]_i_1_n_3 ;
  wire \sum_reg_reg[7]_i_1_n_4 ;
  wire \sum_reg_reg[7]_i_1_n_5 ;
  wire \sum_reg_reg[7]_i_1_n_6 ;
  wire \sum_reg_reg[7]_i_1_n_7 ;
  wire [11:1]transfer_cnt;
  wire transfer_cnt0;
  wire \transfer_cnt[0]_i_1_n_0 ;
  wire \transfer_cnt_reg[11]_i_3_n_2 ;
  wire \transfer_cnt_reg[11]_i_3_n_3 ;
  wire \transfer_cnt_reg[4]_i_2_n_0 ;
  wire \transfer_cnt_reg[4]_i_2_n_1 ;
  wire \transfer_cnt_reg[4]_i_2_n_2 ;
  wire \transfer_cnt_reg[4]_i_2_n_3 ;
  wire \transfer_cnt_reg[8]_i_2_n_0 ;
  wire \transfer_cnt_reg[8]_i_2_n_1 ;
  wire \transfer_cnt_reg[8]_i_2_n_2 ;
  wire \transfer_cnt_reg[8]_i_2_n_3 ;
  wire \transfer_cnt_reg_n_0_[0] ;
  wire \transfer_cnt_reg_n_0_[10] ;
  wire \transfer_cnt_reg_n_0_[11] ;
  wire \transfer_cnt_reg_n_0_[1] ;
  wire \transfer_cnt_reg_n_0_[2] ;
  wire \transfer_cnt_reg_n_0_[3] ;
  wire \transfer_cnt_reg_n_0_[4] ;
  wire \transfer_cnt_reg_n_0_[5] ;
  wire \transfer_cnt_reg_n_0_[6] ;
  wire \transfer_cnt_reg_n_0_[7] ;
  wire \transfer_cnt_reg_n_0_[8] ;
  wire \transfer_cnt_reg_n_0_[9] ;
  wire [3:1]NLW_audio_out_inferred_i_33_CO_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_33_O_UNCONNECTED;
  wire [3:1]NLW_audio_out_inferred_i_34_CO_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_34_O_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_35_O_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_37_O_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_38_O_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_47_O_UNCONNECTED;
  wire [3:0]\NLW_dac_iir_reg[0]_i_7_O_UNCONNECTED ;
  wire [3:3]\NLW_dac_iir_reg[24]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_dac_iir_reg[28]_i_1_CO_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][0]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][10]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][11]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][12]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][13]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][14]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][15]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][16]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][17]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][18]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][19]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][1]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][20]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][21]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][22]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][23]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][2]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][3]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][4]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][5]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][6]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][7]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][8]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[31][9]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][0]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][10]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][11]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][12]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][13]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][14]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][15]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][16]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][17]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][18]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][19]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][1]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][20]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][21]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][22]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][23]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][2]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][3]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][4]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][5]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][6]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][7]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][8]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire \NLW_delay_line_reg[61][9]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ;
  wire [3:1]\NLW_sum_reg_reg[29]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_sum_reg_reg[29]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_transfer_cnt_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_transfer_cnt_reg[11]_i_3_O_UNCONNECTED ;

  assign m_axis_tdata[31] = \^m_axis_tdata [31];
  assign m_axis_tdata[30] = \^m_axis_tdata [31];
  assign m_axis_tdata[29] = \^m_axis_tdata [31];
  assign m_axis_tdata[28] = \^m_axis_tdata [31];
  assign m_axis_tdata[27] = \^m_axis_tdata [31];
  assign m_axis_tdata[26] = \^m_axis_tdata [31];
  assign m_axis_tdata[25] = \^m_axis_tdata [31];
  assign m_axis_tdata[24] = \^m_axis_tdata [31];
  assign m_axis_tdata[23] = \^m_axis_tdata [31];
  assign m_axis_tdata[22:0] = \^m_axis_tdata [22:0];
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_1
       (.I0(audio_out_inferred_i_17_n_0),
        .I1(bpsk_nrz_out[15]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [21]),
        .O(audio_out[15]));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_10
       (.I0(audio_out_inferred_i_26_n_0),
        .I1(bpsk_nrz_out[6]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [12]),
        .O(audio_out[6]));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_11
       (.I0(audio_out_inferred_i_27_n_0),
        .I1(bpsk_nrz_out[5]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [11]),
        .O(audio_out[5]));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_12
       (.I0(audio_out_inferred_i_28_n_0),
        .I1(bpsk_nrz_out[4]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [10]),
        .O(audio_out[4]));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_13
       (.I0(audio_out_inferred_i_29_n_0),
        .I1(bpsk_nrz_out[3]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [9]),
        .O(audio_out[3]));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_14
       (.I0(audio_out_inferred_i_30_n_0),
        .I1(bpsk_nrz_out[2]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [8]),
        .O(audio_out[2]));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_15
       (.I0(audio_out_inferred_i_31_n_0),
        .I1(bpsk_nrz_out[1]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [7]),
        .O(audio_out[1]));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_16
       (.I0(audio_out_inferred_i_32_n_0),
        .I1(bpsk_nrz_out[0]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [6]),
        .O(audio_out[0]));
  LUT6 #(
    .INIT(64'h0000BBBFFFFFBBBF)) 
    audio_out_inferred_i_17
       (.I0(fm_audio_out1),
        .I1(mux_sel[1]),
        .I2(\dac_iir_reg_n_0_[17] ),
        .I3(fm_audio_out2),
        .I4(mux_sel[2]),
        .I5(selected_data[22]),
        .O(audio_out_inferred_i_17_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_18
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[16] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[21]),
        .O(audio_out_inferred_i_18_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_19
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[15] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[20]),
        .O(audio_out_inferred_i_19_n_0));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_2
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(bpsk_nrz_out[14]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [20]),
        .O(audio_out[14]));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_20
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[14] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[19]),
        .O(audio_out_inferred_i_20_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_21
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[13] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[18]),
        .O(audio_out_inferred_i_21_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_22
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[12] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[17]),
        .O(audio_out_inferred_i_22_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_23
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[11] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[16]),
        .O(audio_out_inferred_i_23_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_24
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[10] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[15]),
        .O(audio_out_inferred_i_24_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_25
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[9] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[14]),
        .O(audio_out_inferred_i_25_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_26
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[8] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[13]),
        .O(audio_out_inferred_i_26_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_27
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[7] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[12]),
        .O(audio_out_inferred_i_27_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_28
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[6] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[11]),
        .O(audio_out_inferred_i_28_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_29
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[5] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[10]),
        .O(audio_out_inferred_i_29_n_0));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_3
       (.I0(audio_out_inferred_i_19_n_0),
        .I1(bpsk_nrz_out[13]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [19]),
        .O(audio_out[13]));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_30
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[4] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[9]),
        .O(audio_out_inferred_i_30_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_31
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[3] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[8]),
        .O(audio_out_inferred_i_31_n_0));
  LUT6 #(
    .INIT(64'h000045FFFFFF45FF)) 
    audio_out_inferred_i_32
       (.I0(fm_audio_out1),
        .I1(fm_audio_out2),
        .I2(\dac_iir_reg_n_0_[2] ),
        .I3(mux_sel[1]),
        .I4(mux_sel[2]),
        .I5(selected_data[7]),
        .O(audio_out_inferred_i_32_n_0));
  CARRY4 audio_out_inferred_i_33
       (.CI(audio_out_inferred_i_35_n_0),
        .CO({NLW_audio_out_inferred_i_33_CO_UNCONNECTED[3:1],fm_audio_out1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_audio_out_inferred_i_33_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,audio_out_inferred_i_36_n_0}));
  CARRY4 audio_out_inferred_i_34
       (.CI(audio_out_inferred_i_37_n_0),
        .CO({NLW_audio_out_inferred_i_34_CO_UNCONNECTED[3:1],fm_audio_out2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_audio_out_inferred_i_34_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,p_0_in0}));
  CARRY4 audio_out_inferred_i_35
       (.CI(audio_out_inferred_i_38_n_0),
        .CO({audio_out_inferred_i_35_n_0,audio_out_inferred_i_35_n_1,audio_out_inferred_i_35_n_2,audio_out_inferred_i_35_n_3}),
        .CYINIT(1'b0),
        .DI({audio_out_inferred_i_39_n_0,audio_out_inferred_i_40_n_0,audio_out_inferred_i_41_n_0,audio_out_inferred_i_42_n_0}),
        .O(NLW_audio_out_inferred_i_35_O_UNCONNECTED[3:0]),
        .S({audio_out_inferred_i_43_n_0,audio_out_inferred_i_44_n_0,audio_out_inferred_i_45_n_0,audio_out_inferred_i_46_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    audio_out_inferred_i_36
       (.I0(p_0_in0),
        .O(audio_out_inferred_i_36_n_0));
  CARRY4 audio_out_inferred_i_37
       (.CI(audio_out_inferred_i_47_n_0),
        .CO({audio_out_inferred_i_37_n_0,audio_out_inferred_i_37_n_1,audio_out_inferred_i_37_n_2,audio_out_inferred_i_37_n_3}),
        .CYINIT(1'b0),
        .DI({audio_out_inferred_i_48_n_0,audio_out_inferred_i_49_n_0,audio_out_inferred_i_50_n_0,audio_out_inferred_i_51_n_0}),
        .O(NLW_audio_out_inferred_i_37_O_UNCONNECTED[3:0]),
        .S({audio_out_inferred_i_52_n_0,audio_out_inferred_i_53_n_0,audio_out_inferred_i_54_n_0,audio_out_inferred_i_55_n_0}));
  CARRY4 audio_out_inferred_i_38
       (.CI(1'b0),
        .CO({audio_out_inferred_i_38_n_0,audio_out_inferred_i_38_n_1,audio_out_inferred_i_38_n_2,audio_out_inferred_i_38_n_3}),
        .CYINIT(1'b0),
        .DI({audio_out_inferred_i_56_n_0,audio_out_inferred_i_57_n_0,audio_out_inferred_i_58_n_0,\dac_iir_reg_n_0_[17] }),
        .O(NLW_audio_out_inferred_i_38_O_UNCONNECTED[3:0]),
        .S({audio_out_inferred_i_59_n_0,audio_out_inferred_i_60_n_0,audio_out_inferred_i_61_n_0,audio_out_inferred_i_62_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_39
       (.I0(\dac_iir_reg_n_0_[30] ),
        .I1(p_0_in0),
        .O(audio_out_inferred_i_39_n_0));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_4
       (.I0(audio_out_inferred_i_20_n_0),
        .I1(bpsk_nrz_out[12]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [18]),
        .O(audio_out[12]));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_40
       (.I0(\dac_iir_reg_n_0_[28] ),
        .I1(\dac_iir_reg_n_0_[29] ),
        .O(audio_out_inferred_i_40_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_41
       (.I0(\dac_iir_reg_n_0_[26] ),
        .I1(\dac_iir_reg_n_0_[27] ),
        .O(audio_out_inferred_i_41_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_42
       (.I0(\dac_iir_reg_n_0_[24] ),
        .I1(\dac_iir_reg_n_0_[25] ),
        .O(audio_out_inferred_i_42_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_43
       (.I0(p_0_in0),
        .I1(\dac_iir_reg_n_0_[30] ),
        .O(audio_out_inferred_i_43_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_44
       (.I0(\dac_iir_reg_n_0_[29] ),
        .I1(\dac_iir_reg_n_0_[28] ),
        .O(audio_out_inferred_i_44_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_45
       (.I0(\dac_iir_reg_n_0_[27] ),
        .I1(\dac_iir_reg_n_0_[26] ),
        .O(audio_out_inferred_i_45_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_46
       (.I0(\dac_iir_reg_n_0_[25] ),
        .I1(\dac_iir_reg_n_0_[24] ),
        .O(audio_out_inferred_i_46_n_0));
  CARRY4 audio_out_inferred_i_47
       (.CI(1'b0),
        .CO({audio_out_inferred_i_47_n_0,audio_out_inferred_i_47_n_1,audio_out_inferred_i_47_n_2,audio_out_inferred_i_47_n_3}),
        .CYINIT(1'b0),
        .DI({audio_out_inferred_i_63_n_0,audio_out_inferred_i_64_n_0,audio_out_inferred_i_65_n_0,audio_out_inferred_i_66_n_0}),
        .O(NLW_audio_out_inferred_i_47_O_UNCONNECTED[3:0]),
        .S({audio_out_inferred_i_67_n_0,audio_out_inferred_i_68_n_0,audio_out_inferred_i_69_n_0,audio_out_inferred_i_70_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_48
       (.I0(\dac_iir_reg_n_0_[30] ),
        .I1(p_0_in0),
        .O(audio_out_inferred_i_48_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_49
       (.I0(\dac_iir_reg_n_0_[28] ),
        .I1(\dac_iir_reg_n_0_[29] ),
        .O(audio_out_inferred_i_49_n_0));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_5
       (.I0(audio_out_inferred_i_21_n_0),
        .I1(bpsk_nrz_out[11]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [17]),
        .O(audio_out[11]));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_50
       (.I0(\dac_iir_reg_n_0_[26] ),
        .I1(\dac_iir_reg_n_0_[27] ),
        .O(audio_out_inferred_i_50_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_51
       (.I0(\dac_iir_reg_n_0_[24] ),
        .I1(\dac_iir_reg_n_0_[25] ),
        .O(audio_out_inferred_i_51_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_52
       (.I0(p_0_in0),
        .I1(\dac_iir_reg_n_0_[30] ),
        .O(audio_out_inferred_i_52_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_53
       (.I0(\dac_iir_reg_n_0_[29] ),
        .I1(\dac_iir_reg_n_0_[28] ),
        .O(audio_out_inferred_i_53_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_54
       (.I0(\dac_iir_reg_n_0_[27] ),
        .I1(\dac_iir_reg_n_0_[26] ),
        .O(audio_out_inferred_i_54_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_55
       (.I0(\dac_iir_reg_n_0_[25] ),
        .I1(\dac_iir_reg_n_0_[24] ),
        .O(audio_out_inferred_i_55_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_56
       (.I0(\dac_iir_reg_n_0_[22] ),
        .I1(\dac_iir_reg_n_0_[23] ),
        .O(audio_out_inferred_i_56_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_57
       (.I0(\dac_iir_reg_n_0_[20] ),
        .I1(\dac_iir_reg_n_0_[21] ),
        .O(audio_out_inferred_i_57_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_58
       (.I0(\dac_iir_reg_n_0_[18] ),
        .I1(\dac_iir_reg_n_0_[19] ),
        .O(audio_out_inferred_i_58_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_59
       (.I0(\dac_iir_reg_n_0_[23] ),
        .I1(\dac_iir_reg_n_0_[22] ),
        .O(audio_out_inferred_i_59_n_0));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_6
       (.I0(audio_out_inferred_i_22_n_0),
        .I1(bpsk_nrz_out[10]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [16]),
        .O(audio_out[10]));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_60
       (.I0(\dac_iir_reg_n_0_[21] ),
        .I1(\dac_iir_reg_n_0_[20] ),
        .O(audio_out_inferred_i_60_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_61
       (.I0(\dac_iir_reg_n_0_[19] ),
        .I1(\dac_iir_reg_n_0_[18] ),
        .O(audio_out_inferred_i_61_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    audio_out_inferred_i_62
       (.I0(\dac_iir_reg_n_0_[16] ),
        .I1(\dac_iir_reg_n_0_[17] ),
        .O(audio_out_inferred_i_62_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_63
       (.I0(\dac_iir_reg_n_0_[22] ),
        .I1(\dac_iir_reg_n_0_[23] ),
        .O(audio_out_inferred_i_63_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_64
       (.I0(\dac_iir_reg_n_0_[20] ),
        .I1(\dac_iir_reg_n_0_[21] ),
        .O(audio_out_inferred_i_64_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_65
       (.I0(\dac_iir_reg_n_0_[18] ),
        .I1(\dac_iir_reg_n_0_[19] ),
        .O(audio_out_inferred_i_65_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    audio_out_inferred_i_66
       (.I0(\dac_iir_reg_n_0_[17] ),
        .O(audio_out_inferred_i_66_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_67
       (.I0(\dac_iir_reg_n_0_[23] ),
        .I1(\dac_iir_reg_n_0_[22] ),
        .O(audio_out_inferred_i_67_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_68
       (.I0(\dac_iir_reg_n_0_[21] ),
        .I1(\dac_iir_reg_n_0_[20] ),
        .O(audio_out_inferred_i_68_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_69
       (.I0(\dac_iir_reg_n_0_[19] ),
        .I1(\dac_iir_reg_n_0_[18] ),
        .O(audio_out_inferred_i_69_n_0));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_7
       (.I0(audio_out_inferred_i_23_n_0),
        .I1(bpsk_nrz_out[9]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [15]),
        .O(audio_out[9]));
  LUT2 #(
    .INIT(4'h2)) 
    audio_out_inferred_i_70
       (.I0(\dac_iir_reg_n_0_[17] ),
        .I1(\dac_iir_reg_n_0_[16] ),
        .O(audio_out_inferred_i_70_n_0));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_8
       (.I0(audio_out_inferred_i_24_n_0),
        .I1(bpsk_nrz_out[8]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [14]),
        .O(audio_out[8]));
  LUT6 #(
    .INIT(64'h00CF555500C05555)) 
    audio_out_inferred_i_9
       (.I0(audio_out_inferred_i_25_n_0),
        .I1(bpsk_nrz_out[7]),
        .I2(mux_sel[2]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(\^m_axis_tdata [13]),
        .O(audio_out[7]));
  LUT5 #(
    .INIT(32'hFCEDACED)) 
    audio_valid_INST_0
       (.I0(mux_sel[1]),
        .I1(m_axis_tvalid),
        .I2(mux_sel[0]),
        .I3(mux_sel[2]),
        .I4(bpsk_sample_valid),
        .O(audio_valid));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_10 
       (.I0(\^m_axis_tdata [5]),
        .I1(\dac_iir_reg_n_0_[5] ),
        .O(\dac_iir[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_11 
       (.I0(\^m_axis_tdata [4]),
        .I1(\dac_iir_reg_n_0_[4] ),
        .O(\dac_iir[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_12 
       (.I0(\^m_axis_tdata [3]),
        .I1(\dac_iir_reg_n_0_[3] ),
        .O(\dac_iir[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_13 
       (.I0(\^m_axis_tdata [2]),
        .I1(\dac_iir_reg_n_0_[2] ),
        .O(\dac_iir[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_14 
       (.I0(\^m_axis_tdata [1]),
        .I1(\dac_iir_reg_n_0_[1] ),
        .O(\dac_iir[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_15 
       (.I0(\^m_axis_tdata [0]),
        .I1(\dac_iir_reg_n_0_[0] ),
        .O(\dac_iir[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[0]_i_3 
       (.I0(\dac_iir_reg[0]_i_2_n_4 ),
        .I1(\dac_iir_reg_n_0_[3] ),
        .O(\dac_iir[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[0]_i_4 
       (.I0(\dac_iir_reg[0]_i_2_n_5 ),
        .I1(\dac_iir_reg_n_0_[2] ),
        .O(\dac_iir[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[0]_i_5 
       (.I0(\dac_iir_reg[0]_i_2_n_6 ),
        .I1(\dac_iir_reg_n_0_[1] ),
        .O(\dac_iir[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[0]_i_6 
       (.I0(\dac_iir_reg[0]_i_2_n_7 ),
        .I1(\dac_iir_reg_n_0_[0] ),
        .O(\dac_iir[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_8 
       (.I0(\^m_axis_tdata [7]),
        .I1(\dac_iir_reg_n_0_[7] ),
        .O(\dac_iir[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_9 
       (.I0(\^m_axis_tdata [6]),
        .I1(\dac_iir_reg_n_0_[6] ),
        .O(\dac_iir[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[12]_i_10 
       (.I0(\^m_axis_tdata [16]),
        .I1(\dac_iir_reg_n_0_[16] ),
        .O(\dac_iir[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[12]_i_3 
       (.I0(\dac_iir_reg[12]_i_2_n_4 ),
        .I1(\dac_iir_reg_n_0_[15] ),
        .O(\dac_iir[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[12]_i_4 
       (.I0(\dac_iir_reg[12]_i_2_n_5 ),
        .I1(\dac_iir_reg_n_0_[14] ),
        .O(\dac_iir[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[12]_i_5 
       (.I0(\dac_iir_reg[12]_i_2_n_6 ),
        .I1(\dac_iir_reg_n_0_[13] ),
        .O(\dac_iir[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[12]_i_6 
       (.I0(\dac_iir_reg[12]_i_2_n_7 ),
        .I1(\dac_iir_reg_n_0_[12] ),
        .O(\dac_iir[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[12]_i_7 
       (.I0(\^m_axis_tdata [19]),
        .I1(\dac_iir_reg_n_0_[19] ),
        .O(\dac_iir[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[12]_i_8 
       (.I0(\^m_axis_tdata [18]),
        .I1(\dac_iir_reg_n_0_[18] ),
        .O(\dac_iir[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[12]_i_9 
       (.I0(\^m_axis_tdata [17]),
        .I1(\dac_iir_reg_n_0_[17] ),
        .O(\dac_iir[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[16]_i_10 
       (.I0(\^m_axis_tdata [20]),
        .I1(\dac_iir_reg_n_0_[20] ),
        .O(\dac_iir[16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[16]_i_3 
       (.I0(\dac_iir_reg[16]_i_2_n_4 ),
        .I1(\dac_iir_reg_n_0_[19] ),
        .O(\dac_iir[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[16]_i_4 
       (.I0(\dac_iir_reg[16]_i_2_n_5 ),
        .I1(\dac_iir_reg_n_0_[18] ),
        .O(\dac_iir[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[16]_i_5 
       (.I0(\dac_iir_reg[16]_i_2_n_6 ),
        .I1(\dac_iir_reg_n_0_[17] ),
        .O(\dac_iir[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[16]_i_6 
       (.I0(\dac_iir_reg[16]_i_2_n_7 ),
        .I1(\dac_iir_reg_n_0_[16] ),
        .O(\dac_iir[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[16]_i_7 
       (.I0(\dac_iir_reg_n_0_[23] ),
        .I1(\^m_axis_tdata [31]),
        .O(\dac_iir[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[16]_i_8 
       (.I0(\^m_axis_tdata [22]),
        .I1(\dac_iir_reg_n_0_[22] ),
        .O(\dac_iir[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[16]_i_9 
       (.I0(\^m_axis_tdata [21]),
        .I1(\dac_iir_reg_n_0_[21] ),
        .O(\dac_iir[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[20]_i_10 
       (.I0(\dac_iir_reg_n_0_[23] ),
        .I1(\dac_iir_reg_n_0_[24] ),
        .O(\dac_iir[20]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[20]_i_3 
       (.I0(\dac_iir_reg[20]_i_2_n_4 ),
        .I1(\dac_iir_reg_n_0_[23] ),
        .O(\dac_iir[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[20]_i_4 
       (.I0(\dac_iir_reg[20]_i_2_n_5 ),
        .I1(\dac_iir_reg_n_0_[22] ),
        .O(\dac_iir[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[20]_i_5 
       (.I0(\dac_iir_reg[20]_i_2_n_6 ),
        .I1(\dac_iir_reg_n_0_[21] ),
        .O(\dac_iir[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[20]_i_6 
       (.I0(\dac_iir_reg[20]_i_2_n_7 ),
        .I1(\dac_iir_reg_n_0_[20] ),
        .O(\dac_iir[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[20]_i_7 
       (.I0(\dac_iir_reg_n_0_[26] ),
        .I1(\dac_iir_reg_n_0_[27] ),
        .O(\dac_iir[20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[20]_i_8 
       (.I0(\dac_iir_reg_n_0_[25] ),
        .I1(\dac_iir_reg_n_0_[26] ),
        .O(\dac_iir[20]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[20]_i_9 
       (.I0(\dac_iir_reg_n_0_[24] ),
        .I1(\dac_iir_reg_n_0_[25] ),
        .O(\dac_iir[20]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[24]_i_10 
       (.I0(\dac_iir_reg_n_0_[27] ),
        .I1(\dac_iir_reg_n_0_[28] ),
        .O(\dac_iir[24]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[24]_i_3 
       (.I0(in0),
        .I1(\dac_iir_reg_n_0_[27] ),
        .O(\dac_iir[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[24]_i_4 
       (.I0(\dac_iir_reg[24]_i_2_n_5 ),
        .I1(\dac_iir_reg_n_0_[26] ),
        .O(\dac_iir[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[24]_i_5 
       (.I0(\dac_iir_reg[24]_i_2_n_6 ),
        .I1(\dac_iir_reg_n_0_[25] ),
        .O(\dac_iir[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[24]_i_6 
       (.I0(\dac_iir_reg[24]_i_2_n_7 ),
        .I1(\dac_iir_reg_n_0_[24] ),
        .O(\dac_iir[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[24]_i_7 
       (.I0(p_0_in0),
        .I1(\dac_iir_reg_n_0_[30] ),
        .O(\dac_iir[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[24]_i_8 
       (.I0(\dac_iir_reg_n_0_[29] ),
        .I1(\dac_iir_reg_n_0_[30] ),
        .O(\dac_iir[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[24]_i_9 
       (.I0(\dac_iir_reg_n_0_[28] ),
        .I1(\dac_iir_reg_n_0_[29] ),
        .O(\dac_iir[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[28]_i_2 
       (.I0(p_0_in0),
        .I1(in0),
        .O(\dac_iir[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[28]_i_3 
       (.I0(in0),
        .I1(\dac_iir_reg_n_0_[30] ),
        .O(\dac_iir[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[28]_i_4 
       (.I0(in0),
        .I1(\dac_iir_reg_n_0_[29] ),
        .O(\dac_iir[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[28]_i_5 
       (.I0(in0),
        .I1(\dac_iir_reg_n_0_[28] ),
        .O(\dac_iir[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[4]_i_10 
       (.I0(\^m_axis_tdata [8]),
        .I1(\dac_iir_reg_n_0_[8] ),
        .O(\dac_iir[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[4]_i_3 
       (.I0(\dac_iir_reg[4]_i_2_n_4 ),
        .I1(\dac_iir_reg_n_0_[7] ),
        .O(\dac_iir[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[4]_i_4 
       (.I0(\dac_iir_reg[4]_i_2_n_5 ),
        .I1(\dac_iir_reg_n_0_[6] ),
        .O(\dac_iir[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[4]_i_5 
       (.I0(\dac_iir_reg[4]_i_2_n_6 ),
        .I1(\dac_iir_reg_n_0_[5] ),
        .O(\dac_iir[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[4]_i_6 
       (.I0(\dac_iir_reg[4]_i_2_n_7 ),
        .I1(\dac_iir_reg_n_0_[4] ),
        .O(\dac_iir[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[4]_i_7 
       (.I0(\^m_axis_tdata [11]),
        .I1(\dac_iir_reg_n_0_[11] ),
        .O(\dac_iir[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[4]_i_8 
       (.I0(\^m_axis_tdata [10]),
        .I1(\dac_iir_reg_n_0_[10] ),
        .O(\dac_iir[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[4]_i_9 
       (.I0(\^m_axis_tdata [9]),
        .I1(\dac_iir_reg_n_0_[9] ),
        .O(\dac_iir[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[8]_i_10 
       (.I0(\^m_axis_tdata [12]),
        .I1(\dac_iir_reg_n_0_[12] ),
        .O(\dac_iir[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[8]_i_3 
       (.I0(\dac_iir_reg[8]_i_2_n_4 ),
        .I1(\dac_iir_reg_n_0_[11] ),
        .O(\dac_iir[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[8]_i_4 
       (.I0(\dac_iir_reg[8]_i_2_n_5 ),
        .I1(\dac_iir_reg_n_0_[10] ),
        .O(\dac_iir[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[8]_i_5 
       (.I0(\dac_iir_reg[8]_i_2_n_6 ),
        .I1(\dac_iir_reg_n_0_[9] ),
        .O(\dac_iir[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[8]_i_6 
       (.I0(\dac_iir_reg[8]_i_2_n_7 ),
        .I1(\dac_iir_reg_n_0_[8] ),
        .O(\dac_iir[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[8]_i_7 
       (.I0(\^m_axis_tdata [15]),
        .I1(\dac_iir_reg_n_0_[15] ),
        .O(\dac_iir[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[8]_i_8 
       (.I0(\^m_axis_tdata [14]),
        .I1(\dac_iir_reg_n_0_[14] ),
        .O(\dac_iir[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[8]_i_9 
       (.I0(\^m_axis_tdata [13]),
        .I1(\dac_iir_reg_n_0_[13] ),
        .O(\dac_iir[8]_i_9_n_0 ));
  FDRE \dac_iir_reg[0] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[0]_i_1_n_7 ),
        .Q(\dac_iir_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \dac_iir_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\dac_iir_reg[0]_i_1_n_0 ,\dac_iir_reg[0]_i_1_n_1 ,\dac_iir_reg[0]_i_1_n_2 ,\dac_iir_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\dac_iir_reg[0]_i_2_n_4 ,\dac_iir_reg[0]_i_2_n_5 ,\dac_iir_reg[0]_i_2_n_6 ,\dac_iir_reg[0]_i_2_n_7 }),
        .O({\dac_iir_reg[0]_i_1_n_4 ,\dac_iir_reg[0]_i_1_n_5 ,\dac_iir_reg[0]_i_1_n_6 ,\dac_iir_reg[0]_i_1_n_7 }),
        .S({\dac_iir[0]_i_3_n_0 ,\dac_iir[0]_i_4_n_0 ,\dac_iir[0]_i_5_n_0 ,\dac_iir[0]_i_6_n_0 }));
  CARRY4 \dac_iir_reg[0]_i_2 
       (.CI(\dac_iir_reg[0]_i_7_n_0 ),
        .CO({\dac_iir_reg[0]_i_2_n_0 ,\dac_iir_reg[0]_i_2_n_1 ,\dac_iir_reg[0]_i_2_n_2 ,\dac_iir_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\^m_axis_tdata [7:4]),
        .O({\dac_iir_reg[0]_i_2_n_4 ,\dac_iir_reg[0]_i_2_n_5 ,\dac_iir_reg[0]_i_2_n_6 ,\dac_iir_reg[0]_i_2_n_7 }),
        .S({\dac_iir[0]_i_8_n_0 ,\dac_iir[0]_i_9_n_0 ,\dac_iir[0]_i_10_n_0 ,\dac_iir[0]_i_11_n_0 }));
  CARRY4 \dac_iir_reg[0]_i_7 
       (.CI(1'b0),
        .CO({\dac_iir_reg[0]_i_7_n_0 ,\dac_iir_reg[0]_i_7_n_1 ,\dac_iir_reg[0]_i_7_n_2 ,\dac_iir_reg[0]_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI(\^m_axis_tdata [3:0]),
        .O(\NLW_dac_iir_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\dac_iir[0]_i_12_n_0 ,\dac_iir[0]_i_13_n_0 ,\dac_iir[0]_i_14_n_0 ,\dac_iir[0]_i_15_n_0 }));
  FDRE \dac_iir_reg[10] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[8]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[10] ),
        .R(clear));
  FDRE \dac_iir_reg[11] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[8]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[11] ),
        .R(clear));
  FDRE \dac_iir_reg[12] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[12]_i_1_n_7 ),
        .Q(\dac_iir_reg_n_0_[12] ),
        .R(clear));
  CARRY4 \dac_iir_reg[12]_i_1 
       (.CI(\dac_iir_reg[8]_i_1_n_0 ),
        .CO({\dac_iir_reg[12]_i_1_n_0 ,\dac_iir_reg[12]_i_1_n_1 ,\dac_iir_reg[12]_i_1_n_2 ,\dac_iir_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\dac_iir_reg[12]_i_2_n_4 ,\dac_iir_reg[12]_i_2_n_5 ,\dac_iir_reg[12]_i_2_n_6 ,\dac_iir_reg[12]_i_2_n_7 }),
        .O({\dac_iir_reg[12]_i_1_n_4 ,\dac_iir_reg[12]_i_1_n_5 ,\dac_iir_reg[12]_i_1_n_6 ,\dac_iir_reg[12]_i_1_n_7 }),
        .S({\dac_iir[12]_i_3_n_0 ,\dac_iir[12]_i_4_n_0 ,\dac_iir[12]_i_5_n_0 ,\dac_iir[12]_i_6_n_0 }));
  CARRY4 \dac_iir_reg[12]_i_2 
       (.CI(\dac_iir_reg[8]_i_2_n_0 ),
        .CO({\dac_iir_reg[12]_i_2_n_0 ,\dac_iir_reg[12]_i_2_n_1 ,\dac_iir_reg[12]_i_2_n_2 ,\dac_iir_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\^m_axis_tdata [19:16]),
        .O({\dac_iir_reg[12]_i_2_n_4 ,\dac_iir_reg[12]_i_2_n_5 ,\dac_iir_reg[12]_i_2_n_6 ,\dac_iir_reg[12]_i_2_n_7 }),
        .S({\dac_iir[12]_i_7_n_0 ,\dac_iir[12]_i_8_n_0 ,\dac_iir[12]_i_9_n_0 ,\dac_iir[12]_i_10_n_0 }));
  FDRE \dac_iir_reg[13] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[12]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[13] ),
        .R(clear));
  FDRE \dac_iir_reg[14] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[12]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[14] ),
        .R(clear));
  FDRE \dac_iir_reg[15] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[12]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[15] ),
        .R(clear));
  FDRE \dac_iir_reg[16] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[16]_i_1_n_7 ),
        .Q(\dac_iir_reg_n_0_[16] ),
        .R(clear));
  CARRY4 \dac_iir_reg[16]_i_1 
       (.CI(\dac_iir_reg[12]_i_1_n_0 ),
        .CO({\dac_iir_reg[16]_i_1_n_0 ,\dac_iir_reg[16]_i_1_n_1 ,\dac_iir_reg[16]_i_1_n_2 ,\dac_iir_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\dac_iir_reg[16]_i_2_n_4 ,\dac_iir_reg[16]_i_2_n_5 ,\dac_iir_reg[16]_i_2_n_6 ,\dac_iir_reg[16]_i_2_n_7 }),
        .O({\dac_iir_reg[16]_i_1_n_4 ,\dac_iir_reg[16]_i_1_n_5 ,\dac_iir_reg[16]_i_1_n_6 ,\dac_iir_reg[16]_i_1_n_7 }),
        .S({\dac_iir[16]_i_3_n_0 ,\dac_iir[16]_i_4_n_0 ,\dac_iir[16]_i_5_n_0 ,\dac_iir[16]_i_6_n_0 }));
  CARRY4 \dac_iir_reg[16]_i_2 
       (.CI(\dac_iir_reg[12]_i_2_n_0 ),
        .CO({\dac_iir_reg[16]_i_2_n_0 ,\dac_iir_reg[16]_i_2_n_1 ,\dac_iir_reg[16]_i_2_n_2 ,\dac_iir_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\dac_iir_reg_n_0_[23] ,\^m_axis_tdata [22:20]}),
        .O({\dac_iir_reg[16]_i_2_n_4 ,\dac_iir_reg[16]_i_2_n_5 ,\dac_iir_reg[16]_i_2_n_6 ,\dac_iir_reg[16]_i_2_n_7 }),
        .S({\dac_iir[16]_i_7_n_0 ,\dac_iir[16]_i_8_n_0 ,\dac_iir[16]_i_9_n_0 ,\dac_iir[16]_i_10_n_0 }));
  FDRE \dac_iir_reg[17] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[16]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[17] ),
        .R(clear));
  FDRE \dac_iir_reg[18] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[16]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[18] ),
        .R(clear));
  FDRE \dac_iir_reg[19] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[16]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[19] ),
        .R(clear));
  FDRE \dac_iir_reg[1] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[0]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[1] ),
        .R(clear));
  FDRE \dac_iir_reg[20] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[20]_i_1_n_7 ),
        .Q(\dac_iir_reg_n_0_[20] ),
        .R(clear));
  CARRY4 \dac_iir_reg[20]_i_1 
       (.CI(\dac_iir_reg[16]_i_1_n_0 ),
        .CO({\dac_iir_reg[20]_i_1_n_0 ,\dac_iir_reg[20]_i_1_n_1 ,\dac_iir_reg[20]_i_1_n_2 ,\dac_iir_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\dac_iir_reg[20]_i_2_n_4 ,\dac_iir_reg[20]_i_2_n_5 ,\dac_iir_reg[20]_i_2_n_6 ,\dac_iir_reg[20]_i_2_n_7 }),
        .O({\dac_iir_reg[20]_i_1_n_4 ,\dac_iir_reg[20]_i_1_n_5 ,\dac_iir_reg[20]_i_1_n_6 ,\dac_iir_reg[20]_i_1_n_7 }),
        .S({\dac_iir[20]_i_3_n_0 ,\dac_iir[20]_i_4_n_0 ,\dac_iir[20]_i_5_n_0 ,\dac_iir[20]_i_6_n_0 }));
  CARRY4 \dac_iir_reg[20]_i_2 
       (.CI(\dac_iir_reg[16]_i_2_n_0 ),
        .CO({\dac_iir_reg[20]_i_2_n_0 ,\dac_iir_reg[20]_i_2_n_1 ,\dac_iir_reg[20]_i_2_n_2 ,\dac_iir_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\dac_iir_reg_n_0_[27] ,\dac_iir_reg_n_0_[26] ,\dac_iir_reg_n_0_[25] ,\dac_iir_reg_n_0_[24] }),
        .O({\dac_iir_reg[20]_i_2_n_4 ,\dac_iir_reg[20]_i_2_n_5 ,\dac_iir_reg[20]_i_2_n_6 ,\dac_iir_reg[20]_i_2_n_7 }),
        .S({\dac_iir[20]_i_7_n_0 ,\dac_iir[20]_i_8_n_0 ,\dac_iir[20]_i_9_n_0 ,\dac_iir[20]_i_10_n_0 }));
  FDRE \dac_iir_reg[21] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[20]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[21] ),
        .R(clear));
  FDRE \dac_iir_reg[22] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[20]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[22] ),
        .R(clear));
  FDRE \dac_iir_reg[23] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[20]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[23] ),
        .R(clear));
  FDRE \dac_iir_reg[24] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[24]_i_1_n_7 ),
        .Q(\dac_iir_reg_n_0_[24] ),
        .R(clear));
  CARRY4 \dac_iir_reg[24]_i_1 
       (.CI(\dac_iir_reg[20]_i_1_n_0 ),
        .CO({\dac_iir_reg[24]_i_1_n_0 ,\dac_iir_reg[24]_i_1_n_1 ,\dac_iir_reg[24]_i_1_n_2 ,\dac_iir_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({in0,\dac_iir_reg[24]_i_2_n_5 ,\dac_iir_reg[24]_i_2_n_6 ,\dac_iir_reg[24]_i_2_n_7 }),
        .O({\dac_iir_reg[24]_i_1_n_4 ,\dac_iir_reg[24]_i_1_n_5 ,\dac_iir_reg[24]_i_1_n_6 ,\dac_iir_reg[24]_i_1_n_7 }),
        .S({\dac_iir[24]_i_3_n_0 ,\dac_iir[24]_i_4_n_0 ,\dac_iir[24]_i_5_n_0 ,\dac_iir[24]_i_6_n_0 }));
  CARRY4 \dac_iir_reg[24]_i_2 
       (.CI(\dac_iir_reg[20]_i_2_n_0 ),
        .CO({\NLW_dac_iir_reg[24]_i_2_CO_UNCONNECTED [3],\dac_iir_reg[24]_i_2_n_1 ,\dac_iir_reg[24]_i_2_n_2 ,\dac_iir_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\dac_iir_reg_n_0_[30] ,\dac_iir_reg_n_0_[29] ,\dac_iir_reg_n_0_[28] }),
        .O({in0,\dac_iir_reg[24]_i_2_n_5 ,\dac_iir_reg[24]_i_2_n_6 ,\dac_iir_reg[24]_i_2_n_7 }),
        .S({\dac_iir[24]_i_7_n_0 ,\dac_iir[24]_i_8_n_0 ,\dac_iir[24]_i_9_n_0 ,\dac_iir[24]_i_10_n_0 }));
  FDRE \dac_iir_reg[25] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[24]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[25] ),
        .R(clear));
  FDRE \dac_iir_reg[26] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[24]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[26] ),
        .R(clear));
  FDRE \dac_iir_reg[27] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[24]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[27] ),
        .R(clear));
  FDRE \dac_iir_reg[28] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[28]_i_1_n_7 ),
        .Q(\dac_iir_reg_n_0_[28] ),
        .R(clear));
  CARRY4 \dac_iir_reg[28]_i_1 
       (.CI(\dac_iir_reg[24]_i_1_n_0 ),
        .CO({\NLW_dac_iir_reg[28]_i_1_CO_UNCONNECTED [3],\dac_iir_reg[28]_i_1_n_1 ,\dac_iir_reg[28]_i_1_n_2 ,\dac_iir_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,in0,in0,in0}),
        .O({\dac_iir_reg[28]_i_1_n_4 ,\dac_iir_reg[28]_i_1_n_5 ,\dac_iir_reg[28]_i_1_n_6 ,\dac_iir_reg[28]_i_1_n_7 }),
        .S({\dac_iir[28]_i_2_n_0 ,\dac_iir[28]_i_3_n_0 ,\dac_iir[28]_i_4_n_0 ,\dac_iir[28]_i_5_n_0 }));
  FDRE \dac_iir_reg[29] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[28]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[29] ),
        .R(clear));
  FDRE \dac_iir_reg[2] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[0]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[2] ),
        .R(clear));
  FDRE \dac_iir_reg[30] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[28]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[30] ),
        .R(clear));
  FDRE \dac_iir_reg[31] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[28]_i_1_n_4 ),
        .Q(p_0_in0),
        .R(clear));
  FDRE \dac_iir_reg[3] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[0]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[3] ),
        .R(clear));
  FDRE \dac_iir_reg[4] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[4]_i_1_n_7 ),
        .Q(\dac_iir_reg_n_0_[4] ),
        .R(clear));
  CARRY4 \dac_iir_reg[4]_i_1 
       (.CI(\dac_iir_reg[0]_i_1_n_0 ),
        .CO({\dac_iir_reg[4]_i_1_n_0 ,\dac_iir_reg[4]_i_1_n_1 ,\dac_iir_reg[4]_i_1_n_2 ,\dac_iir_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\dac_iir_reg[4]_i_2_n_4 ,\dac_iir_reg[4]_i_2_n_5 ,\dac_iir_reg[4]_i_2_n_6 ,\dac_iir_reg[4]_i_2_n_7 }),
        .O({\dac_iir_reg[4]_i_1_n_4 ,\dac_iir_reg[4]_i_1_n_5 ,\dac_iir_reg[4]_i_1_n_6 ,\dac_iir_reg[4]_i_1_n_7 }),
        .S({\dac_iir[4]_i_3_n_0 ,\dac_iir[4]_i_4_n_0 ,\dac_iir[4]_i_5_n_0 ,\dac_iir[4]_i_6_n_0 }));
  CARRY4 \dac_iir_reg[4]_i_2 
       (.CI(\dac_iir_reg[0]_i_2_n_0 ),
        .CO({\dac_iir_reg[4]_i_2_n_0 ,\dac_iir_reg[4]_i_2_n_1 ,\dac_iir_reg[4]_i_2_n_2 ,\dac_iir_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\^m_axis_tdata [11:8]),
        .O({\dac_iir_reg[4]_i_2_n_4 ,\dac_iir_reg[4]_i_2_n_5 ,\dac_iir_reg[4]_i_2_n_6 ,\dac_iir_reg[4]_i_2_n_7 }),
        .S({\dac_iir[4]_i_7_n_0 ,\dac_iir[4]_i_8_n_0 ,\dac_iir[4]_i_9_n_0 ,\dac_iir[4]_i_10_n_0 }));
  FDRE \dac_iir_reg[5] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[4]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[5] ),
        .R(clear));
  FDRE \dac_iir_reg[6] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[4]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[6] ),
        .R(clear));
  FDRE \dac_iir_reg[7] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[4]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[7] ),
        .R(clear));
  FDRE \dac_iir_reg[8] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[8]_i_1_n_7 ),
        .Q(\dac_iir_reg_n_0_[8] ),
        .R(clear));
  CARRY4 \dac_iir_reg[8]_i_1 
       (.CI(\dac_iir_reg[4]_i_1_n_0 ),
        .CO({\dac_iir_reg[8]_i_1_n_0 ,\dac_iir_reg[8]_i_1_n_1 ,\dac_iir_reg[8]_i_1_n_2 ,\dac_iir_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\dac_iir_reg[8]_i_2_n_4 ,\dac_iir_reg[8]_i_2_n_5 ,\dac_iir_reg[8]_i_2_n_6 ,\dac_iir_reg[8]_i_2_n_7 }),
        .O({\dac_iir_reg[8]_i_1_n_4 ,\dac_iir_reg[8]_i_1_n_5 ,\dac_iir_reg[8]_i_1_n_6 ,\dac_iir_reg[8]_i_1_n_7 }),
        .S({\dac_iir[8]_i_3_n_0 ,\dac_iir[8]_i_4_n_0 ,\dac_iir[8]_i_5_n_0 ,\dac_iir[8]_i_6_n_0 }));
  CARRY4 \dac_iir_reg[8]_i_2 
       (.CI(\dac_iir_reg[4]_i_2_n_0 ),
        .CO({\dac_iir_reg[8]_i_2_n_0 ,\dac_iir_reg[8]_i_2_n_1 ,\dac_iir_reg[8]_i_2_n_2 ,\dac_iir_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\^m_axis_tdata [15:12]),
        .O({\dac_iir_reg[8]_i_2_n_4 ,\dac_iir_reg[8]_i_2_n_5 ,\dac_iir_reg[8]_i_2_n_6 ,\dac_iir_reg[8]_i_2_n_7 }),
        .S({\dac_iir[8]_i_7_n_0 ,\dac_iir[8]_i_8_n_0 ,\dac_iir[8]_i_9_n_0 ,\dac_iir[8]_i_10_n_0 }));
  FDRE \dac_iir_reg[9] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\dac_iir_reg[8]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[9] ),
        .R(clear));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][0]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][0]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[0]),
        .Q(\NLW_delay_line_reg[31][0]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][0]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][10]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][10]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[10]),
        .Q(\NLW_delay_line_reg[31][10]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][10]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][11]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][11]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[11]),
        .Q(\NLW_delay_line_reg[31][11]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][11]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][12]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][12]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[12]),
        .Q(\NLW_delay_line_reg[31][12]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][12]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][13]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][13]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[13]),
        .Q(\NLW_delay_line_reg[31][13]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][13]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][14]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][14]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[14]),
        .Q(\NLW_delay_line_reg[31][14]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][14]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][15]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][15]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[15]),
        .Q(\NLW_delay_line_reg[31][15]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][15]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][16]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][16]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[16]),
        .Q(\NLW_delay_line_reg[31][16]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][16]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][17]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][17]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[17]),
        .Q(\NLW_delay_line_reg[31][17]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][17]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][18]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][18]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[18]),
        .Q(\NLW_delay_line_reg[31][18]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][18]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][19]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][19]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[19]),
        .Q(\NLW_delay_line_reg[31][19]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][19]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][1]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][1]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[1]),
        .Q(\NLW_delay_line_reg[31][1]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][1]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][20]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][20]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[20]),
        .Q(\NLW_delay_line_reg[31][20]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][20]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][21]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][21]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[21]),
        .Q(\NLW_delay_line_reg[31][21]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][21]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][22]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][22]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[22]),
        .Q(\NLW_delay_line_reg[31][22]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][22]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][23]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][23]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[23]),
        .Q(\NLW_delay_line_reg[31][23]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][23]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][2]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][2]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[2]),
        .Q(\NLW_delay_line_reg[31][2]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][2]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][3]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][3]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[3]),
        .Q(\NLW_delay_line_reg[31][3]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][3]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][4]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][4]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[4]),
        .Q(\NLW_delay_line_reg[31][4]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][4]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][5]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][5]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[5]),
        .Q(\NLW_delay_line_reg[31][5]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][5]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][6]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][6]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[6]),
        .Q(\NLW_delay_line_reg[31][6]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][6]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][7]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][7]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[7]),
        .Q(\NLW_delay_line_reg[31][7]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][7]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][8]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][8]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[8]),
        .Q(\NLW_delay_line_reg[31][8]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][8]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][9]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][9]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(selected_data[9]),
        .Q(\NLW_delay_line_reg[31][9]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][9]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][0]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][0]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][0]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][0]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][0]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][10]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][10]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][10]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][10]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][10]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][11]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][11]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][11]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][11]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][11]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][12]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][12]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][12]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][12]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][12]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][13]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][13]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][13]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][13]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][13]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][14]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][14]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][14]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][14]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][14]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][15]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][15]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][15]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][15]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][15]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][16]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][16]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][16]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][16]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][16]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][17]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][17]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][17]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][17]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][17]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][18]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][18]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][18]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][18]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][18]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][19]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][19]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][19]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][19]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][19]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][1]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][1]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][1]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][1]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][1]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][20]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][20]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][20]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][20]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][20]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][21]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][21]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][21]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][21]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][21]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][22]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][22]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][22]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][22]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][22]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][23]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][23]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][23]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][23]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][23]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][2]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][2]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][2]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][2]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][2]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][3]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][3]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][3]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][3]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][3]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][4]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][4]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][4]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][4]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][4]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][5]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][5]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][5]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][5]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][5]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][6]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][6]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][6]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][6]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][6]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][7]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][7]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][7]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][7]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][7]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][8]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][8]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][8]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][8]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][8]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][9]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][9]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(m_axis_tvalid),
        .CLK(aclk),
        .D(\delay_line_reg[31][9]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][9]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][9]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  FDRE \delay_line_reg[62][0]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][0]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][0]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][10]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][10]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][10]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][11]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][11]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][11]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][12]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][12]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][12]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][13]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][13]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][13]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][14]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][14]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][14]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][15]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][15]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][15]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][16]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][16]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][16]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][17]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][17]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][17]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][18]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][18]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][18]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][19]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][19]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][19]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][1]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][1]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][1]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][20]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][20]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][20]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][21]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][21]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][21]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][22]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][22]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][22]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][23]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][23]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][23]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][2]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][2]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][2]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][3]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][3]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][3]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][4]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][4]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][4]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][5]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][5]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][5]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][6]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][6]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][6]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][7]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][7]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][7]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][8]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][8]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][8]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][9]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\delay_line_reg[61][9]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][9]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[63][0] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__22_n_0),
        .Q(\delay_line_reg[63] [0]),
        .R(clear));
  FDRE \delay_line_reg[63][10] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__12_n_0),
        .Q(\delay_line_reg[63] [10]),
        .R(clear));
  FDRE \delay_line_reg[63][11] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__11_n_0),
        .Q(\delay_line_reg[63] [11]),
        .R(clear));
  FDRE \delay_line_reg[63][12] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__10_n_0),
        .Q(\delay_line_reg[63] [12]),
        .R(clear));
  FDRE \delay_line_reg[63][13] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__9_n_0),
        .Q(\delay_line_reg[63] [13]),
        .R(clear));
  FDRE \delay_line_reg[63][14] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__8_n_0),
        .Q(\delay_line_reg[63] [14]),
        .R(clear));
  FDRE \delay_line_reg[63][15] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__7_n_0),
        .Q(\delay_line_reg[63] [15]),
        .R(clear));
  FDRE \delay_line_reg[63][16] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__6_n_0),
        .Q(\delay_line_reg[63] [16]),
        .R(clear));
  FDRE \delay_line_reg[63][17] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__5_n_0),
        .Q(\delay_line_reg[63] [17]),
        .R(clear));
  FDRE \delay_line_reg[63][18] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__4_n_0),
        .Q(\delay_line_reg[63] [18]),
        .R(clear));
  FDRE \delay_line_reg[63][19] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__3_n_0),
        .Q(\delay_line_reg[63] [19]),
        .R(clear));
  FDRE \delay_line_reg[63][1] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__21_n_0),
        .Q(\delay_line_reg[63] [1]),
        .R(clear));
  FDRE \delay_line_reg[63][20] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__2_n_0),
        .Q(\delay_line_reg[63] [20]),
        .R(clear));
  FDRE \delay_line_reg[63][21] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__1_n_0),
        .Q(\delay_line_reg[63] [21]),
        .R(clear));
  FDRE \delay_line_reg[63][22] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__0_n_0),
        .Q(\delay_line_reg[63] [22]),
        .R(clear));
  FDRE \delay_line_reg[63][23] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate_n_0),
        .Q(\delay_line_reg[63] [23]),
        .R(clear));
  FDRE \delay_line_reg[63][2] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__20_n_0),
        .Q(\delay_line_reg[63] [2]),
        .R(clear));
  FDRE \delay_line_reg[63][3] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__19_n_0),
        .Q(\delay_line_reg[63] [3]),
        .R(clear));
  FDRE \delay_line_reg[63][4] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__18_n_0),
        .Q(\delay_line_reg[63] [4]),
        .R(clear));
  FDRE \delay_line_reg[63][5] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__17_n_0),
        .Q(\delay_line_reg[63] [5]),
        .R(clear));
  FDRE \delay_line_reg[63][6] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__16_n_0),
        .Q(\delay_line_reg[63] [6]),
        .R(clear));
  FDRE \delay_line_reg[63][7] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__15_n_0),
        .Q(\delay_line_reg[63] [7]),
        .R(clear));
  FDRE \delay_line_reg[63][8] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__14_n_0),
        .Q(\delay_line_reg[63] [8]),
        .R(clear));
  FDRE \delay_line_reg[63][9] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_gate__13_n_0),
        .Q(\delay_line_reg[63] [9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate
       (.I0(\delay_line_reg[62][23]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__0
       (.I0(\delay_line_reg[62][22]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__1
       (.I0(\delay_line_reg[62][21]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__10
       (.I0(\delay_line_reg[62][12]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__11
       (.I0(\delay_line_reg[62][11]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__12
       (.I0(\delay_line_reg[62][10]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__13
       (.I0(\delay_line_reg[62][9]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__14
       (.I0(\delay_line_reg[62][8]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__15
       (.I0(\delay_line_reg[62][7]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__16
       (.I0(\delay_line_reg[62][6]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__17
       (.I0(\delay_line_reg[62][5]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__18
       (.I0(\delay_line_reg[62][4]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__19
       (.I0(\delay_line_reg[62][3]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__2
       (.I0(\delay_line_reg[62][20]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__20
       (.I0(\delay_line_reg[62][2]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__21
       (.I0(\delay_line_reg[62][1]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__22
       (.I0(\delay_line_reg[62][0]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__3
       (.I0(\delay_line_reg[62][19]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__4
       (.I0(\delay_line_reg[62][18]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__5
       (.I0(\delay_line_reg[62][17]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__6
       (.I0(\delay_line_reg[62][16]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__7
       (.I0(\delay_line_reg[62][15]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__8
       (.I0(\delay_line_reg[62][14]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__9
       (.I0(\delay_line_reg[62][13]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__9_n_0));
  FDRE delay_line_reg_r
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(1'b1),
        .Q(delay_line_reg_r_n_0),
        .R(clear));
  FDRE delay_line_reg_r_0
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_n_0),
        .Q(delay_line_reg_r_0_n_0),
        .R(clear));
  FDRE delay_line_reg_r_1
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_0_n_0),
        .Q(delay_line_reg_r_1_n_0),
        .R(clear));
  FDRE delay_line_reg_r_10
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_9_n_0),
        .Q(delay_line_reg_r_10_n_0),
        .R(clear));
  FDRE delay_line_reg_r_11
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_10_n_0),
        .Q(delay_line_reg_r_11_n_0),
        .R(clear));
  FDRE delay_line_reg_r_12
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_11_n_0),
        .Q(delay_line_reg_r_12_n_0),
        .R(clear));
  FDRE delay_line_reg_r_13
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_12_n_0),
        .Q(delay_line_reg_r_13_n_0),
        .R(clear));
  FDRE delay_line_reg_r_14
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_13_n_0),
        .Q(delay_line_reg_r_14_n_0),
        .R(clear));
  FDRE delay_line_reg_r_15
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_14_n_0),
        .Q(delay_line_reg_r_15_n_0),
        .R(clear));
  FDRE delay_line_reg_r_16
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_15_n_0),
        .Q(delay_line_reg_r_16_n_0),
        .R(clear));
  FDRE delay_line_reg_r_17
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_16_n_0),
        .Q(delay_line_reg_r_17_n_0),
        .R(clear));
  FDRE delay_line_reg_r_18
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_17_n_0),
        .Q(delay_line_reg_r_18_n_0),
        .R(clear));
  FDRE delay_line_reg_r_19
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_18_n_0),
        .Q(delay_line_reg_r_19_n_0),
        .R(clear));
  FDRE delay_line_reg_r_2
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_1_n_0),
        .Q(delay_line_reg_r_2_n_0),
        .R(clear));
  FDRE delay_line_reg_r_20
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_19_n_0),
        .Q(delay_line_reg_r_20_n_0),
        .R(clear));
  FDRE delay_line_reg_r_21
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_20_n_0),
        .Q(delay_line_reg_r_21_n_0),
        .R(clear));
  FDRE delay_line_reg_r_22
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_21_n_0),
        .Q(delay_line_reg_r_22_n_0),
        .R(clear));
  FDRE delay_line_reg_r_23
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_22_n_0),
        .Q(delay_line_reg_r_23_n_0),
        .R(clear));
  FDRE delay_line_reg_r_24
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_23_n_0),
        .Q(delay_line_reg_r_24_n_0),
        .R(clear));
  FDRE delay_line_reg_r_25
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_24_n_0),
        .Q(delay_line_reg_r_25_n_0),
        .R(clear));
  FDRE delay_line_reg_r_26
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_25_n_0),
        .Q(delay_line_reg_r_26_n_0),
        .R(clear));
  FDRE delay_line_reg_r_27
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_26_n_0),
        .Q(delay_line_reg_r_27_n_0),
        .R(clear));
  FDRE delay_line_reg_r_28
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_27_n_0),
        .Q(delay_line_reg_r_28_n_0),
        .R(clear));
  FDRE delay_line_reg_r_29
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_28_n_0),
        .Q(delay_line_reg_r_29_n_0),
        .R(clear));
  FDRE delay_line_reg_r_3
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_2_n_0),
        .Q(delay_line_reg_r_3_n_0),
        .R(clear));
  FDRE delay_line_reg_r_30
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_29_n_0),
        .Q(delay_line_reg_r_30_n_0),
        .R(clear));
  FDRE delay_line_reg_r_31
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_30_n_0),
        .Q(delay_line_reg_r_31_n_0),
        .R(clear));
  FDRE delay_line_reg_r_32
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_31_n_0),
        .Q(delay_line_reg_r_32_n_0),
        .R(clear));
  FDRE delay_line_reg_r_33
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_32_n_0),
        .Q(delay_line_reg_r_33_n_0),
        .R(clear));
  FDRE delay_line_reg_r_34
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_33_n_0),
        .Q(delay_line_reg_r_34_n_0),
        .R(clear));
  FDRE delay_line_reg_r_35
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_34_n_0),
        .Q(delay_line_reg_r_35_n_0),
        .R(clear));
  FDRE delay_line_reg_r_36
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_35_n_0),
        .Q(delay_line_reg_r_36_n_0),
        .R(clear));
  FDRE delay_line_reg_r_37
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_36_n_0),
        .Q(delay_line_reg_r_37_n_0),
        .R(clear));
  FDRE delay_line_reg_r_38
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_37_n_0),
        .Q(delay_line_reg_r_38_n_0),
        .R(clear));
  FDRE delay_line_reg_r_39
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_38_n_0),
        .Q(delay_line_reg_r_39_n_0),
        .R(clear));
  FDRE delay_line_reg_r_4
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_3_n_0),
        .Q(delay_line_reg_r_4_n_0),
        .R(clear));
  FDRE delay_line_reg_r_40
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_39_n_0),
        .Q(delay_line_reg_r_40_n_0),
        .R(clear));
  FDRE delay_line_reg_r_41
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_40_n_0),
        .Q(delay_line_reg_r_41_n_0),
        .R(clear));
  FDRE delay_line_reg_r_42
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_41_n_0),
        .Q(delay_line_reg_r_42_n_0),
        .R(clear));
  FDRE delay_line_reg_r_43
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_42_n_0),
        .Q(delay_line_reg_r_43_n_0),
        .R(clear));
  FDRE delay_line_reg_r_44
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_43_n_0),
        .Q(delay_line_reg_r_44_n_0),
        .R(clear));
  FDRE delay_line_reg_r_45
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_44_n_0),
        .Q(delay_line_reg_r_45_n_0),
        .R(clear));
  FDRE delay_line_reg_r_46
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_45_n_0),
        .Q(delay_line_reg_r_46_n_0),
        .R(clear));
  FDRE delay_line_reg_r_47
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_46_n_0),
        .Q(delay_line_reg_r_47_n_0),
        .R(clear));
  FDRE delay_line_reg_r_48
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_47_n_0),
        .Q(delay_line_reg_r_48_n_0),
        .R(clear));
  FDRE delay_line_reg_r_49
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_48_n_0),
        .Q(delay_line_reg_r_49_n_0),
        .R(clear));
  FDRE delay_line_reg_r_5
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_4_n_0),
        .Q(delay_line_reg_r_5_n_0),
        .R(clear));
  FDRE delay_line_reg_r_50
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_49_n_0),
        .Q(delay_line_reg_r_50_n_0),
        .R(clear));
  FDRE delay_line_reg_r_51
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_50_n_0),
        .Q(delay_line_reg_r_51_n_0),
        .R(clear));
  FDRE delay_line_reg_r_52
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_51_n_0),
        .Q(delay_line_reg_r_52_n_0),
        .R(clear));
  FDRE delay_line_reg_r_53
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_52_n_0),
        .Q(delay_line_reg_r_53_n_0),
        .R(clear));
  FDRE delay_line_reg_r_54
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_53_n_0),
        .Q(delay_line_reg_r_54_n_0),
        .R(clear));
  FDRE delay_line_reg_r_55
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_54_n_0),
        .Q(delay_line_reg_r_55_n_0),
        .R(clear));
  FDRE delay_line_reg_r_56
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_55_n_0),
        .Q(delay_line_reg_r_56_n_0),
        .R(clear));
  FDRE delay_line_reg_r_57
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_56_n_0),
        .Q(delay_line_reg_r_57_n_0),
        .R(clear));
  FDRE delay_line_reg_r_58
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_57_n_0),
        .Q(delay_line_reg_r_58_n_0),
        .R(clear));
  FDRE delay_line_reg_r_59
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_58_n_0),
        .Q(delay_line_reg_r_59_n_0),
        .R(clear));
  FDRE delay_line_reg_r_6
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_5_n_0),
        .Q(delay_line_reg_r_6_n_0),
        .R(clear));
  FDRE delay_line_reg_r_60
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_59_n_0),
        .Q(delay_line_reg_r_60_n_0),
        .R(clear));
  FDRE delay_line_reg_r_61
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_60_n_0),
        .Q(delay_line_reg_r_61_n_0),
        .R(clear));
  FDRE delay_line_reg_r_7
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_6_n_0),
        .Q(delay_line_reg_r_7_n_0),
        .R(clear));
  FDRE delay_line_reg_r_8
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_7_n_0),
        .Q(delay_line_reg_r_8_n_0),
        .R(clear));
  FDRE delay_line_reg_r_9
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(delay_line_reg_r_8_n_0),
        .Q(delay_line_reg_r_9_n_0),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tlast_INST_0
       (.I0(m_axis_tvalid),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(m_axis_tlast));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    m_axis_tlast_INST_0_i_1
       (.I0(\transfer_cnt_reg_n_0_[0] ),
        .I1(\transfer_cnt_reg_n_0_[3] ),
        .I2(\transfer_cnt_reg_n_0_[5] ),
        .I3(\transfer_cnt_reg_n_0_[10] ),
        .I4(m_axis_tlast_INST_0_i_2_n_0),
        .I5(m_axis_tlast_INST_0_i_3_n_0),
        .O(m_axis_tlast_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    m_axis_tlast_INST_0_i_2
       (.I0(\transfer_cnt_reg_n_0_[8] ),
        .I1(\transfer_cnt_reg_n_0_[4] ),
        .I2(\transfer_cnt_reg_n_0_[6] ),
        .I3(\transfer_cnt_reg_n_0_[11] ),
        .O(m_axis_tlast_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    m_axis_tlast_INST_0_i_3
       (.I0(\transfer_cnt_reg_n_0_[7] ),
        .I1(\transfer_cnt_reg_n_0_[2] ),
        .I2(\transfer_cnt_reg_n_0_[1] ),
        .I3(\transfer_cnt_reg_n_0_[9] ),
        .O(m_axis_tlast_INST_0_i_3_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mux_meta_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(mux_ctrl[0]),
        .Q(mux_meta[0]),
        .R(clear));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mux_meta_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(mux_ctrl[1]),
        .Q(mux_meta[1]),
        .R(clear));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mux_meta_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(mux_ctrl[2]),
        .Q(mux_meta[2]),
        .R(clear));
  LUT3 #(
    .INIT(8'hB8)) 
    \mux_sel[0]_i_1 
       (.I0(mux_sync[0]),
        .I1(p_1_in),
        .I2(mux_sel[0]),
        .O(\mux_sel[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mux_sel[1]_i_1 
       (.I0(mux_sync[1]),
        .I1(p_1_in),
        .I2(mux_sel[1]),
        .O(\mux_sel[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mux_sel[2]_i_1 
       (.I0(mux_sync[2]),
        .I1(p_1_in),
        .I2(mux_sel[2]),
        .O(\mux_sel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mux_sel[2]_i_2 
       (.I0(mux_sync[0]),
        .I1(mux_sync_d[0]),
        .I2(mux_sync_d[2]),
        .I3(mux_sync[2]),
        .I4(mux_sync_d[1]),
        .I5(mux_sync[1]),
        .O(p_1_in));
  FDRE \mux_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mux_sel[0]_i_1_n_0 ),
        .Q(mux_sel[0]),
        .R(clear));
  FDRE \mux_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mux_sel[1]_i_1_n_0 ),
        .Q(mux_sel[1]),
        .R(clear));
  FDRE \mux_sel_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mux_sel[2]_i_1_n_0 ),
        .Q(mux_sel[2]),
        .R(clear));
  FDRE \mux_sync_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(mux_sync[0]),
        .Q(mux_sync_d[0]),
        .R(clear));
  FDRE \mux_sync_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(mux_sync[1]),
        .Q(mux_sync_d[1]),
        .R(clear));
  FDRE \mux_sync_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(mux_sync[2]),
        .Q(mux_sync_d[2]),
        .R(clear));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mux_sync_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(mux_meta[0]),
        .Q(mux_sync[0]),
        .R(clear));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mux_sync_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(mux_meta[1]),
        .Q(mux_sync[1]),
        .R(clear));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \mux_sync_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(mux_meta[2]),
        .Q(mux_sync[2]),
        .R(clear));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[0]_i_1 
       (.I0(mag_out[0]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[0]),
        .O(\selected_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23B82088)) 
    \selected_data[10]_i_1 
       (.I0(dphi_out[10]),
        .I1(mux_sel[1]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mag_out[10]),
        .O(\selected_data[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[11]_i_1 
       (.I0(mag_out[11]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[11]),
        .O(\selected_data[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23B82088)) 
    \selected_data[12]_i_1 
       (.I0(dphi_out[12]),
        .I1(mux_sel[1]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mag_out[12]),
        .O(\selected_data[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23B82088)) 
    \selected_data[13]_i_1 
       (.I0(dphi_out[13]),
        .I1(mux_sel[1]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mag_out[13]),
        .O(\selected_data[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23B82088)) 
    \selected_data[14]_i_1 
       (.I0(dphi_out[14]),
        .I1(mux_sel[1]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mag_out[14]),
        .O(\selected_data[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23B82088)) 
    \selected_data[15]_i_1 
       (.I0(dphi_out[15]),
        .I1(mux_sel[1]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mag_out[15]),
        .O(\selected_data[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[16]_i_1 
       (.I0(mag_out[16]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[16]),
        .O(\selected_data[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23B82088)) 
    \selected_data[17]_i_1 
       (.I0(dphi_out[17]),
        .I1(mux_sel[1]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mag_out[17]),
        .O(\selected_data[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[18]_i_1 
       (.I0(mag_out[18]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[18]),
        .O(\selected_data[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[19]_i_1 
       (.I0(mag_out[19]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[19]),
        .O(\selected_data[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23B82088)) 
    \selected_data[1]_i_1 
       (.I0(dphi_out[1]),
        .I1(mux_sel[1]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mag_out[1]),
        .O(\selected_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[20]_i_1 
       (.I0(mag_out[20]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[20]),
        .O(\selected_data[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[21]_i_1 
       (.I0(mag_out[21]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[21]),
        .O(\selected_data[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[22]_i_1 
       (.I0(mag_out[22]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[22]),
        .O(\selected_data[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2820)) 
    \selected_data[23]_i_1 
       (.I0(dphi_out[23]),
        .I1(mux_sel[0]),
        .I2(mux_sel[1]),
        .I3(mux_sel[2]),
        .O(\selected_data[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[2]_i_1 
       (.I0(mag_out[2]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[2]),
        .O(\selected_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[3]_i_1 
       (.I0(mag_out[3]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[3]),
        .O(\selected_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[4]_i_1 
       (.I0(mag_out[4]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[4]),
        .O(\selected_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[5]_i_1 
       (.I0(mag_out[5]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[5]),
        .O(\selected_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[6]_i_1 
       (.I0(mag_out[6]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[6]),
        .O(\selected_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23B82088)) 
    \selected_data[7]_i_1 
       (.I0(dphi_out[7]),
        .I1(mux_sel[1]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mag_out[7]),
        .O(\selected_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[8]_i_1 
       (.I0(mag_out[8]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[8]),
        .O(\selected_data[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EF80208)) 
    \selected_data[9]_i_1 
       (.I0(mag_out[9]),
        .I1(mux_sel[2]),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(dphi_out[9]),
        .O(\selected_data[9]_i_1_n_0 ));
  FDRE \selected_data_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[0]_i_1_n_0 ),
        .Q(selected_data[0]),
        .R(clear));
  FDRE \selected_data_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[10]_i_1_n_0 ),
        .Q(selected_data[10]),
        .R(clear));
  FDRE \selected_data_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[11]_i_1_n_0 ),
        .Q(selected_data[11]),
        .R(clear));
  FDRE \selected_data_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[12]_i_1_n_0 ),
        .Q(selected_data[12]),
        .R(clear));
  FDRE \selected_data_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[13]_i_1_n_0 ),
        .Q(selected_data[13]),
        .R(clear));
  FDRE \selected_data_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[14]_i_1_n_0 ),
        .Q(selected_data[14]),
        .R(clear));
  FDRE \selected_data_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[15]_i_1_n_0 ),
        .Q(selected_data[15]),
        .R(clear));
  FDRE \selected_data_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[16]_i_1_n_0 ),
        .Q(selected_data[16]),
        .R(clear));
  FDRE \selected_data_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[17]_i_1_n_0 ),
        .Q(selected_data[17]),
        .R(clear));
  FDRE \selected_data_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[18]_i_1_n_0 ),
        .Q(selected_data[18]),
        .R(clear));
  FDRE \selected_data_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[19]_i_1_n_0 ),
        .Q(selected_data[19]),
        .R(clear));
  FDRE \selected_data_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[1]_i_1_n_0 ),
        .Q(selected_data[1]),
        .R(clear));
  FDRE \selected_data_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[20]_i_1_n_0 ),
        .Q(selected_data[20]),
        .R(clear));
  FDRE \selected_data_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[21]_i_1_n_0 ),
        .Q(selected_data[21]),
        .R(clear));
  FDRE \selected_data_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[22]_i_1_n_0 ),
        .Q(selected_data[22]),
        .R(clear));
  FDRE \selected_data_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[23]_i_1_n_0 ),
        .Q(selected_data[23]),
        .R(clear));
  FDRE \selected_data_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[2]_i_1_n_0 ),
        .Q(selected_data[2]),
        .R(clear));
  FDRE \selected_data_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[3]_i_1_n_0 ),
        .Q(selected_data[3]),
        .R(clear));
  FDRE \selected_data_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[4]_i_1_n_0 ),
        .Q(selected_data[4]),
        .R(clear));
  FDRE \selected_data_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[5]_i_1_n_0 ),
        .Q(selected_data[5]),
        .R(clear));
  FDRE \selected_data_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[6]_i_1_n_0 ),
        .Q(selected_data[6]),
        .R(clear));
  FDRE \selected_data_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[7]_i_1_n_0 ),
        .Q(selected_data[7]),
        .R(clear));
  FDRE \selected_data_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[8]_i_1_n_0 ),
        .Q(selected_data[8]),
        .R(clear));
  FDRE \selected_data_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\selected_data[9]_i_1_n_0 ),
        .Q(selected_data[9]),
        .R(clear));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[11]_i_2 
       (.I0(selected_data[10]),
        .I1(\delay_line_reg[63] [10]),
        .I2(\^m_axis_tdata [4]),
        .O(\sum_reg[11]_i_2_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[11]_i_3 
       (.I0(selected_data[9]),
        .I1(\delay_line_reg[63] [9]),
        .I2(\^m_axis_tdata [3]),
        .O(\sum_reg[11]_i_3_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[11]_i_4 
       (.I0(selected_data[8]),
        .I1(\delay_line_reg[63] [8]),
        .I2(\^m_axis_tdata [2]),
        .O(\sum_reg[11]_i_4_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[11]_i_5 
       (.I0(selected_data[7]),
        .I1(\delay_line_reg[63] [7]),
        .I2(\^m_axis_tdata [1]),
        .O(\sum_reg[11]_i_5_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[11]_i_6 
       (.I0(selected_data[11]),
        .I1(\delay_line_reg[63] [11]),
        .I2(\^m_axis_tdata [5]),
        .I3(\sum_reg[11]_i_2_n_0 ),
        .O(\sum_reg[11]_i_6_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[11]_i_7 
       (.I0(selected_data[10]),
        .I1(\delay_line_reg[63] [10]),
        .I2(\^m_axis_tdata [4]),
        .I3(\sum_reg[11]_i_3_n_0 ),
        .O(\sum_reg[11]_i_7_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[11]_i_8 
       (.I0(selected_data[9]),
        .I1(\delay_line_reg[63] [9]),
        .I2(\^m_axis_tdata [3]),
        .I3(\sum_reg[11]_i_4_n_0 ),
        .O(\sum_reg[11]_i_8_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[11]_i_9 
       (.I0(selected_data[8]),
        .I1(\delay_line_reg[63] [8]),
        .I2(\^m_axis_tdata [2]),
        .I3(\sum_reg[11]_i_5_n_0 ),
        .O(\sum_reg[11]_i_9_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[15]_i_2 
       (.I0(selected_data[14]),
        .I1(\delay_line_reg[63] [14]),
        .I2(\^m_axis_tdata [8]),
        .O(\sum_reg[15]_i_2_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[15]_i_3 
       (.I0(selected_data[13]),
        .I1(\delay_line_reg[63] [13]),
        .I2(\^m_axis_tdata [7]),
        .O(\sum_reg[15]_i_3_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[15]_i_4 
       (.I0(selected_data[12]),
        .I1(\delay_line_reg[63] [12]),
        .I2(\^m_axis_tdata [6]),
        .O(\sum_reg[15]_i_4_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[15]_i_5 
       (.I0(selected_data[11]),
        .I1(\delay_line_reg[63] [11]),
        .I2(\^m_axis_tdata [5]),
        .O(\sum_reg[15]_i_5_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[15]_i_6 
       (.I0(selected_data[15]),
        .I1(\delay_line_reg[63] [15]),
        .I2(\^m_axis_tdata [9]),
        .I3(\sum_reg[15]_i_2_n_0 ),
        .O(\sum_reg[15]_i_6_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[15]_i_7 
       (.I0(selected_data[14]),
        .I1(\delay_line_reg[63] [14]),
        .I2(\^m_axis_tdata [8]),
        .I3(\sum_reg[15]_i_3_n_0 ),
        .O(\sum_reg[15]_i_7_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[15]_i_8 
       (.I0(selected_data[13]),
        .I1(\delay_line_reg[63] [13]),
        .I2(\^m_axis_tdata [7]),
        .I3(\sum_reg[15]_i_4_n_0 ),
        .O(\sum_reg[15]_i_8_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[15]_i_9 
       (.I0(selected_data[12]),
        .I1(\delay_line_reg[63] [12]),
        .I2(\^m_axis_tdata [6]),
        .I3(\sum_reg[15]_i_5_n_0 ),
        .O(\sum_reg[15]_i_9_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[19]_i_2 
       (.I0(selected_data[18]),
        .I1(\delay_line_reg[63] [18]),
        .I2(\^m_axis_tdata [12]),
        .O(\sum_reg[19]_i_2_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[19]_i_3 
       (.I0(selected_data[17]),
        .I1(\delay_line_reg[63] [17]),
        .I2(\^m_axis_tdata [11]),
        .O(\sum_reg[19]_i_3_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[19]_i_4 
       (.I0(selected_data[16]),
        .I1(\delay_line_reg[63] [16]),
        .I2(\^m_axis_tdata [10]),
        .O(\sum_reg[19]_i_4_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[19]_i_5 
       (.I0(selected_data[15]),
        .I1(\delay_line_reg[63] [15]),
        .I2(\^m_axis_tdata [9]),
        .O(\sum_reg[19]_i_5_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[19]_i_6 
       (.I0(selected_data[19]),
        .I1(\delay_line_reg[63] [19]),
        .I2(\^m_axis_tdata [13]),
        .I3(\sum_reg[19]_i_2_n_0 ),
        .O(\sum_reg[19]_i_6_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[19]_i_7 
       (.I0(selected_data[18]),
        .I1(\delay_line_reg[63] [18]),
        .I2(\^m_axis_tdata [12]),
        .I3(\sum_reg[19]_i_3_n_0 ),
        .O(\sum_reg[19]_i_7_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[19]_i_8 
       (.I0(selected_data[17]),
        .I1(\delay_line_reg[63] [17]),
        .I2(\^m_axis_tdata [11]),
        .I3(\sum_reg[19]_i_4_n_0 ),
        .O(\sum_reg[19]_i_8_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[19]_i_9 
       (.I0(selected_data[16]),
        .I1(\delay_line_reg[63] [16]),
        .I2(\^m_axis_tdata [10]),
        .I3(\sum_reg[19]_i_5_n_0 ),
        .O(\sum_reg[19]_i_9_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[23]_i_2 
       (.I0(selected_data[22]),
        .I1(\delay_line_reg[63] [22]),
        .I2(\^m_axis_tdata [16]),
        .O(\sum_reg[23]_i_2_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[23]_i_3 
       (.I0(selected_data[21]),
        .I1(\delay_line_reg[63] [21]),
        .I2(\^m_axis_tdata [15]),
        .O(\sum_reg[23]_i_3_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[23]_i_4 
       (.I0(selected_data[20]),
        .I1(\delay_line_reg[63] [20]),
        .I2(\^m_axis_tdata [14]),
        .O(\sum_reg[23]_i_4_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[23]_i_5 
       (.I0(selected_data[19]),
        .I1(\delay_line_reg[63] [19]),
        .I2(\^m_axis_tdata [13]),
        .O(\sum_reg[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[23]_i_6 
       (.I0(\sum_reg[23]_i_2_n_0 ),
        .I1(\^m_axis_tdata [17]),
        .I2(selected_data[23]),
        .I3(\delay_line_reg[63] [23]),
        .O(\sum_reg[23]_i_6_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[23]_i_7 
       (.I0(selected_data[22]),
        .I1(\delay_line_reg[63] [22]),
        .I2(\^m_axis_tdata [16]),
        .I3(\sum_reg[23]_i_3_n_0 ),
        .O(\sum_reg[23]_i_7_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[23]_i_8 
       (.I0(selected_data[21]),
        .I1(\delay_line_reg[63] [21]),
        .I2(\^m_axis_tdata [15]),
        .I3(\sum_reg[23]_i_4_n_0 ),
        .O(\sum_reg[23]_i_8_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[23]_i_9 
       (.I0(selected_data[20]),
        .I1(\delay_line_reg[63] [20]),
        .I2(\^m_axis_tdata [14]),
        .I3(\sum_reg[23]_i_5_n_0 ),
        .O(\sum_reg[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[27]_i_2 
       (.I0(\^m_axis_tdata [17]),
        .I1(selected_data[23]),
        .I2(\delay_line_reg[63] [23]),
        .O(\sum_reg[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[27]_i_3 
       (.I0(\^m_axis_tdata [20]),
        .I1(\^m_axis_tdata [21]),
        .O(\sum_reg[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[27]_i_4 
       (.I0(\^m_axis_tdata [19]),
        .I1(\^m_axis_tdata [20]),
        .O(\sum_reg[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[27]_i_5 
       (.I0(\^m_axis_tdata [18]),
        .I1(\^m_axis_tdata [19]),
        .O(\sum_reg[27]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB24D)) 
    \sum_reg[27]_i_6 
       (.I0(\delay_line_reg[63] [23]),
        .I1(selected_data[23]),
        .I2(\^m_axis_tdata [17]),
        .I3(\^m_axis_tdata [18]),
        .O(\sum_reg[27]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sum_reg[29]_i_1 
       (.I0(aresetn),
        .O(clear));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[29]_i_3 
       (.I0(\^m_axis_tdata [22]),
        .I1(\^m_axis_tdata [31]),
        .O(\sum_reg[29]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[29]_i_4 
       (.I0(\^m_axis_tdata [21]),
        .I1(\^m_axis_tdata [22]),
        .O(\sum_reg[29]_i_4_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[3]_i_2 
       (.I0(selected_data[2]),
        .I1(\delay_line_reg[63] [2]),
        .I2(sum_reg[2]),
        .O(\sum_reg[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[3]_i_3 
       (.I0(selected_data[1]),
        .I1(\delay_line_reg[63] [1]),
        .I2(sum_reg[1]),
        .O(\sum_reg[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sum_reg[3]_i_4 
       (.I0(sum_reg[0]),
        .I1(selected_data[0]),
        .O(\sum_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[3]_i_5 
       (.I0(selected_data[0]),
        .I1(sum_reg[0]),
        .O(\sum_reg[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[3]_i_6 
       (.I0(selected_data[3]),
        .I1(\delay_line_reg[63] [3]),
        .I2(sum_reg[3]),
        .I3(\sum_reg[3]_i_2_n_0 ),
        .O(\sum_reg[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[3]_i_7 
       (.I0(selected_data[2]),
        .I1(\delay_line_reg[63] [2]),
        .I2(sum_reg[2]),
        .I3(\sum_reg[3]_i_3_n_0 ),
        .O(\sum_reg[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[3]_i_8 
       (.I0(selected_data[1]),
        .I1(\delay_line_reg[63] [1]),
        .I2(sum_reg[1]),
        .I3(\sum_reg[3]_i_4_n_0 ),
        .O(\sum_reg[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_reg[3]_i_9 
       (.I0(sum_reg[0]),
        .I1(selected_data[0]),
        .I2(\delay_line_reg[63] [0]),
        .O(\sum_reg[3]_i_9_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[7]_i_2 
       (.I0(selected_data[6]),
        .I1(\delay_line_reg[63] [6]),
        .I2(\^m_axis_tdata [0]),
        .O(\sum_reg[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[7]_i_3 
       (.I0(selected_data[5]),
        .I1(\delay_line_reg[63] [5]),
        .I2(sum_reg[5]),
        .O(\sum_reg[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[7]_i_4 
       (.I0(selected_data[4]),
        .I1(\delay_line_reg[63] [4]),
        .I2(sum_reg[4]),
        .O(\sum_reg[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[7]_i_5 
       (.I0(selected_data[3]),
        .I1(\delay_line_reg[63] [3]),
        .I2(sum_reg[3]),
        .O(\sum_reg[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[7]_i_6 
       (.I0(selected_data[7]),
        .I1(\delay_line_reg[63] [7]),
        .I2(\^m_axis_tdata [1]),
        .I3(\sum_reg[7]_i_2_n_0 ),
        .O(\sum_reg[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[7]_i_7 
       (.I0(selected_data[6]),
        .I1(\delay_line_reg[63] [6]),
        .I2(\^m_axis_tdata [0]),
        .I3(\sum_reg[7]_i_3_n_0 ),
        .O(\sum_reg[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[7]_i_8 
       (.I0(selected_data[5]),
        .I1(\delay_line_reg[63] [5]),
        .I2(sum_reg[5]),
        .I3(\sum_reg[7]_i_4_n_0 ),
        .O(\sum_reg[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \sum_reg[7]_i_9 
       (.I0(selected_data[4]),
        .I1(\delay_line_reg[63] [4]),
        .I2(sum_reg[4]),
        .I3(\sum_reg[7]_i_5_n_0 ),
        .O(\sum_reg[7]_i_9_n_0 ));
  FDRE \sum_reg_reg[0] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[3]_i_1_n_7 ),
        .Q(sum_reg[0]),
        .R(clear));
  FDRE \sum_reg_reg[10] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[11]_i_1_n_5 ),
        .Q(\^m_axis_tdata [4]),
        .R(clear));
  FDRE \sum_reg_reg[11] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[11]_i_1_n_4 ),
        .Q(\^m_axis_tdata [5]),
        .R(clear));
  CARRY4 \sum_reg_reg[11]_i_1 
       (.CI(\sum_reg_reg[7]_i_1_n_0 ),
        .CO({\sum_reg_reg[11]_i_1_n_0 ,\sum_reg_reg[11]_i_1_n_1 ,\sum_reg_reg[11]_i_1_n_2 ,\sum_reg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg[11]_i_2_n_0 ,\sum_reg[11]_i_3_n_0 ,\sum_reg[11]_i_4_n_0 ,\sum_reg[11]_i_5_n_0 }),
        .O({\sum_reg_reg[11]_i_1_n_4 ,\sum_reg_reg[11]_i_1_n_5 ,\sum_reg_reg[11]_i_1_n_6 ,\sum_reg_reg[11]_i_1_n_7 }),
        .S({\sum_reg[11]_i_6_n_0 ,\sum_reg[11]_i_7_n_0 ,\sum_reg[11]_i_8_n_0 ,\sum_reg[11]_i_9_n_0 }));
  FDRE \sum_reg_reg[12] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[15]_i_1_n_7 ),
        .Q(\^m_axis_tdata [6]),
        .R(clear));
  FDRE \sum_reg_reg[13] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[15]_i_1_n_6 ),
        .Q(\^m_axis_tdata [7]),
        .R(clear));
  FDRE \sum_reg_reg[14] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[15]_i_1_n_5 ),
        .Q(\^m_axis_tdata [8]),
        .R(clear));
  FDRE \sum_reg_reg[15] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[15]_i_1_n_4 ),
        .Q(\^m_axis_tdata [9]),
        .R(clear));
  CARRY4 \sum_reg_reg[15]_i_1 
       (.CI(\sum_reg_reg[11]_i_1_n_0 ),
        .CO({\sum_reg_reg[15]_i_1_n_0 ,\sum_reg_reg[15]_i_1_n_1 ,\sum_reg_reg[15]_i_1_n_2 ,\sum_reg_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg[15]_i_2_n_0 ,\sum_reg[15]_i_3_n_0 ,\sum_reg[15]_i_4_n_0 ,\sum_reg[15]_i_5_n_0 }),
        .O({\sum_reg_reg[15]_i_1_n_4 ,\sum_reg_reg[15]_i_1_n_5 ,\sum_reg_reg[15]_i_1_n_6 ,\sum_reg_reg[15]_i_1_n_7 }),
        .S({\sum_reg[15]_i_6_n_0 ,\sum_reg[15]_i_7_n_0 ,\sum_reg[15]_i_8_n_0 ,\sum_reg[15]_i_9_n_0 }));
  FDRE \sum_reg_reg[16] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[19]_i_1_n_7 ),
        .Q(\^m_axis_tdata [10]),
        .R(clear));
  FDRE \sum_reg_reg[17] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[19]_i_1_n_6 ),
        .Q(\^m_axis_tdata [11]),
        .R(clear));
  FDRE \sum_reg_reg[18] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[19]_i_1_n_5 ),
        .Q(\^m_axis_tdata [12]),
        .R(clear));
  FDRE \sum_reg_reg[19] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[19]_i_1_n_4 ),
        .Q(\^m_axis_tdata [13]),
        .R(clear));
  CARRY4 \sum_reg_reg[19]_i_1 
       (.CI(\sum_reg_reg[15]_i_1_n_0 ),
        .CO({\sum_reg_reg[19]_i_1_n_0 ,\sum_reg_reg[19]_i_1_n_1 ,\sum_reg_reg[19]_i_1_n_2 ,\sum_reg_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg[19]_i_2_n_0 ,\sum_reg[19]_i_3_n_0 ,\sum_reg[19]_i_4_n_0 ,\sum_reg[19]_i_5_n_0 }),
        .O({\sum_reg_reg[19]_i_1_n_4 ,\sum_reg_reg[19]_i_1_n_5 ,\sum_reg_reg[19]_i_1_n_6 ,\sum_reg_reg[19]_i_1_n_7 }),
        .S({\sum_reg[19]_i_6_n_0 ,\sum_reg[19]_i_7_n_0 ,\sum_reg[19]_i_8_n_0 ,\sum_reg[19]_i_9_n_0 }));
  FDRE \sum_reg_reg[1] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[3]_i_1_n_6 ),
        .Q(sum_reg[1]),
        .R(clear));
  FDRE \sum_reg_reg[20] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[23]_i_1_n_7 ),
        .Q(\^m_axis_tdata [14]),
        .R(clear));
  FDRE \sum_reg_reg[21] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[23]_i_1_n_6 ),
        .Q(\^m_axis_tdata [15]),
        .R(clear));
  FDRE \sum_reg_reg[22] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[23]_i_1_n_5 ),
        .Q(\^m_axis_tdata [16]),
        .R(clear));
  FDRE \sum_reg_reg[23] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[23]_i_1_n_4 ),
        .Q(\^m_axis_tdata [17]),
        .R(clear));
  CARRY4 \sum_reg_reg[23]_i_1 
       (.CI(\sum_reg_reg[19]_i_1_n_0 ),
        .CO({\sum_reg_reg[23]_i_1_n_0 ,\sum_reg_reg[23]_i_1_n_1 ,\sum_reg_reg[23]_i_1_n_2 ,\sum_reg_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg[23]_i_2_n_0 ,\sum_reg[23]_i_3_n_0 ,\sum_reg[23]_i_4_n_0 ,\sum_reg[23]_i_5_n_0 }),
        .O({\sum_reg_reg[23]_i_1_n_4 ,\sum_reg_reg[23]_i_1_n_5 ,\sum_reg_reg[23]_i_1_n_6 ,\sum_reg_reg[23]_i_1_n_7 }),
        .S({\sum_reg[23]_i_6_n_0 ,\sum_reg[23]_i_7_n_0 ,\sum_reg[23]_i_8_n_0 ,\sum_reg[23]_i_9_n_0 }));
  FDRE \sum_reg_reg[24] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[27]_i_1_n_7 ),
        .Q(\^m_axis_tdata [18]),
        .R(clear));
  FDRE \sum_reg_reg[25] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[27]_i_1_n_6 ),
        .Q(\^m_axis_tdata [19]),
        .R(clear));
  FDRE \sum_reg_reg[26] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[27]_i_1_n_5 ),
        .Q(\^m_axis_tdata [20]),
        .R(clear));
  FDRE \sum_reg_reg[27] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[27]_i_1_n_4 ),
        .Q(\^m_axis_tdata [21]),
        .R(clear));
  CARRY4 \sum_reg_reg[27]_i_1 
       (.CI(\sum_reg_reg[23]_i_1_n_0 ),
        .CO({\sum_reg_reg[27]_i_1_n_0 ,\sum_reg_reg[27]_i_1_n_1 ,\sum_reg_reg[27]_i_1_n_2 ,\sum_reg_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\^m_axis_tdata [20:18],\sum_reg[27]_i_2_n_0 }),
        .O({\sum_reg_reg[27]_i_1_n_4 ,\sum_reg_reg[27]_i_1_n_5 ,\sum_reg_reg[27]_i_1_n_6 ,\sum_reg_reg[27]_i_1_n_7 }),
        .S({\sum_reg[27]_i_3_n_0 ,\sum_reg[27]_i_4_n_0 ,\sum_reg[27]_i_5_n_0 ,\sum_reg[27]_i_6_n_0 }));
  FDRE \sum_reg_reg[28] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[29]_i_2_n_7 ),
        .Q(\^m_axis_tdata [22]),
        .R(clear));
  FDRE \sum_reg_reg[29] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[29]_i_2_n_6 ),
        .Q(\^m_axis_tdata [31]),
        .R(clear));
  CARRY4 \sum_reg_reg[29]_i_2 
       (.CI(\sum_reg_reg[27]_i_1_n_0 ),
        .CO({\NLW_sum_reg_reg[29]_i_2_CO_UNCONNECTED [3:1],\sum_reg_reg[29]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\^m_axis_tdata [21]}),
        .O({\NLW_sum_reg_reg[29]_i_2_O_UNCONNECTED [3:2],\sum_reg_reg[29]_i_2_n_6 ,\sum_reg_reg[29]_i_2_n_7 }),
        .S({1'b0,1'b0,\sum_reg[29]_i_3_n_0 ,\sum_reg[29]_i_4_n_0 }));
  FDRE \sum_reg_reg[2] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[3]_i_1_n_5 ),
        .Q(sum_reg[2]),
        .R(clear));
  FDRE \sum_reg_reg[3] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[3]_i_1_n_4 ),
        .Q(sum_reg[3]),
        .R(clear));
  CARRY4 \sum_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sum_reg_reg[3]_i_1_n_0 ,\sum_reg_reg[3]_i_1_n_1 ,\sum_reg_reg[3]_i_1_n_2 ,\sum_reg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg[3]_i_2_n_0 ,\sum_reg[3]_i_3_n_0 ,\sum_reg[3]_i_4_n_0 ,\sum_reg[3]_i_5_n_0 }),
        .O({\sum_reg_reg[3]_i_1_n_4 ,\sum_reg_reg[3]_i_1_n_5 ,\sum_reg_reg[3]_i_1_n_6 ,\sum_reg_reg[3]_i_1_n_7 }),
        .S({\sum_reg[3]_i_6_n_0 ,\sum_reg[3]_i_7_n_0 ,\sum_reg[3]_i_8_n_0 ,\sum_reg[3]_i_9_n_0 }));
  FDRE \sum_reg_reg[4] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[7]_i_1_n_7 ),
        .Q(sum_reg[4]),
        .R(clear));
  FDRE \sum_reg_reg[5] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[7]_i_1_n_6 ),
        .Q(sum_reg[5]),
        .R(clear));
  FDRE \sum_reg_reg[6] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[7]_i_1_n_5 ),
        .Q(\^m_axis_tdata [0]),
        .R(clear));
  FDRE \sum_reg_reg[7] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[7]_i_1_n_4 ),
        .Q(\^m_axis_tdata [1]),
        .R(clear));
  CARRY4 \sum_reg_reg[7]_i_1 
       (.CI(\sum_reg_reg[3]_i_1_n_0 ),
        .CO({\sum_reg_reg[7]_i_1_n_0 ,\sum_reg_reg[7]_i_1_n_1 ,\sum_reg_reg[7]_i_1_n_2 ,\sum_reg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg[7]_i_2_n_0 ,\sum_reg[7]_i_3_n_0 ,\sum_reg[7]_i_4_n_0 ,\sum_reg[7]_i_5_n_0 }),
        .O({\sum_reg_reg[7]_i_1_n_4 ,\sum_reg_reg[7]_i_1_n_5 ,\sum_reg_reg[7]_i_1_n_6 ,\sum_reg_reg[7]_i_1_n_7 }),
        .S({\sum_reg[7]_i_6_n_0 ,\sum_reg[7]_i_7_n_0 ,\sum_reg[7]_i_8_n_0 ,\sum_reg[7]_i_9_n_0 }));
  FDRE \sum_reg_reg[8] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[11]_i_1_n_7 ),
        .Q(\^m_axis_tdata [2]),
        .R(clear));
  FDRE \sum_reg_reg[9] 
       (.C(aclk),
        .CE(m_axis_tvalid),
        .D(\sum_reg_reg[11]_i_1_n_6 ),
        .Q(\^m_axis_tdata [3]),
        .R(clear));
  LUT2 #(
    .INIT(4'h1)) 
    \transfer_cnt[0]_i_1 
       (.I0(\transfer_cnt_reg_n_0_[0] ),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(\transfer_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[10]_i_1 
       (.I0(data0[10]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \transfer_cnt[11]_i_1 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .O(transfer_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[11]_i_2 
       (.I0(data0[11]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[1]_i_1 
       (.I0(data0[1]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[2]_i_1 
       (.I0(data0[2]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[3]_i_1 
       (.I0(data0[3]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[4]_i_1 
       (.I0(data0[4]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[5]_i_1 
       (.I0(data0[5]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[6]_i_1 
       (.I0(data0[6]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[7]_i_1 
       (.I0(data0[7]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[8]_i_1 
       (.I0(data0[8]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \transfer_cnt[9]_i_1 
       (.I0(data0[9]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .O(transfer_cnt[9]));
  FDRE \transfer_cnt_reg[0] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(\transfer_cnt[0]_i_1_n_0 ),
        .Q(\transfer_cnt_reg_n_0_[0] ),
        .R(clear));
  FDRE \transfer_cnt_reg[10] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[10]),
        .Q(\transfer_cnt_reg_n_0_[10] ),
        .R(clear));
  FDRE \transfer_cnt_reg[11] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[11]),
        .Q(\transfer_cnt_reg_n_0_[11] ),
        .R(clear));
  CARRY4 \transfer_cnt_reg[11]_i_3 
       (.CI(\transfer_cnt_reg[8]_i_2_n_0 ),
        .CO({\NLW_transfer_cnt_reg[11]_i_3_CO_UNCONNECTED [3:2],\transfer_cnt_reg[11]_i_3_n_2 ,\transfer_cnt_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_transfer_cnt_reg[11]_i_3_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,\transfer_cnt_reg_n_0_[11] ,\transfer_cnt_reg_n_0_[10] ,\transfer_cnt_reg_n_0_[9] }));
  FDRE \transfer_cnt_reg[1] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[1]),
        .Q(\transfer_cnt_reg_n_0_[1] ),
        .R(clear));
  FDRE \transfer_cnt_reg[2] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[2]),
        .Q(\transfer_cnt_reg_n_0_[2] ),
        .R(clear));
  FDRE \transfer_cnt_reg[3] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[3]),
        .Q(\transfer_cnt_reg_n_0_[3] ),
        .R(clear));
  FDRE \transfer_cnt_reg[4] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[4]),
        .Q(\transfer_cnt_reg_n_0_[4] ),
        .R(clear));
  CARRY4 \transfer_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\transfer_cnt_reg[4]_i_2_n_0 ,\transfer_cnt_reg[4]_i_2_n_1 ,\transfer_cnt_reg[4]_i_2_n_2 ,\transfer_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\transfer_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\transfer_cnt_reg_n_0_[4] ,\transfer_cnt_reg_n_0_[3] ,\transfer_cnt_reg_n_0_[2] ,\transfer_cnt_reg_n_0_[1] }));
  FDRE \transfer_cnt_reg[5] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[5]),
        .Q(\transfer_cnt_reg_n_0_[5] ),
        .R(clear));
  FDRE \transfer_cnt_reg[6] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[6]),
        .Q(\transfer_cnt_reg_n_0_[6] ),
        .R(clear));
  FDRE \transfer_cnt_reg[7] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[7]),
        .Q(\transfer_cnt_reg_n_0_[7] ),
        .R(clear));
  FDRE \transfer_cnt_reg[8] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[8]),
        .Q(\transfer_cnt_reg_n_0_[8] ),
        .R(clear));
  CARRY4 \transfer_cnt_reg[8]_i_2 
       (.CI(\transfer_cnt_reg[4]_i_2_n_0 ),
        .CO({\transfer_cnt_reg[8]_i_2_n_0 ,\transfer_cnt_reg[8]_i_2_n_1 ,\transfer_cnt_reg[8]_i_2_n_2 ,\transfer_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\transfer_cnt_reg_n_0_[8] ,\transfer_cnt_reg_n_0_[7] ,\transfer_cnt_reg_n_0_[6] ,\transfer_cnt_reg_n_0_[5] }));
  FDRE \transfer_cnt_reg[9] 
       (.C(aclk),
        .CE(transfer_cnt0),
        .D(transfer_cnt[9]),
        .Q(\transfer_cnt_reg_n_0_[9] ),
        .R(clear));
  FDRE valid_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(data_valid),
        .Q(m_axis_tvalid),
        .R(clear));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
