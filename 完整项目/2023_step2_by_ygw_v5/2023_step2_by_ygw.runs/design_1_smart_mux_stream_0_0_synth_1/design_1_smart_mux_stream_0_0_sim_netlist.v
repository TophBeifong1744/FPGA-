// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 27 03:42:00 2026
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

  (* AXIS_COUNT_WIDTH = "5" *) 
  (* AXIS_FIFO_DEPTH = "16" *) 
  (* AXIS_PTR_WIDTH = "4" *) 
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

(* AXIS_COUNT_WIDTH = "5" *) (* AXIS_FIFO_DEPTH = "16" *) (* AXIS_PTR_WIDTH = "4" *) 
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
  wire audio_out_inferred_i_33_n_0;
  wire audio_out_inferred_i_34_n_0;
  wire audio_out_inferred_i_35_n_0;
  wire audio_out_inferred_i_36_n_0;
  wire audio_out_inferred_i_37_n_0;
  wire audio_out_inferred_i_40_n_0;
  wire audio_out_inferred_i_40_n_1;
  wire audio_out_inferred_i_40_n_2;
  wire audio_out_inferred_i_40_n_3;
  wire audio_out_inferred_i_41_n_0;
  wire audio_out_inferred_i_41_n_1;
  wire audio_out_inferred_i_41_n_2;
  wire audio_out_inferred_i_41_n_3;
  wire audio_out_inferred_i_42_n_0;
  wire audio_out_inferred_i_43_n_0;
  wire audio_out_inferred_i_43_n_1;
  wire audio_out_inferred_i_43_n_2;
  wire audio_out_inferred_i_43_n_3;
  wire audio_out_inferred_i_44_n_0;
  wire audio_out_inferred_i_45_n_0;
  wire audio_out_inferred_i_46_n_0;
  wire audio_out_inferred_i_47_n_0;
  wire audio_out_inferred_i_48_n_0;
  wire audio_out_inferred_i_49_n_0;
  wire audio_out_inferred_i_50_n_0;
  wire audio_out_inferred_i_51_n_0;
  wire audio_out_inferred_i_52_n_0;
  wire audio_out_inferred_i_52_n_1;
  wire audio_out_inferred_i_52_n_2;
  wire audio_out_inferred_i_52_n_3;
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
  wire audio_out_inferred_i_71_n_0;
  wire audio_out_inferred_i_72_n_0;
  wire audio_out_inferred_i_73_n_0;
  wire audio_out_inferred_i_74_n_0;
  wire audio_out_inferred_i_75_n_0;
  wire audio_valid;
  wire axis_data_fifo_reg_0_15_30_31_i_2_n_0;
  (* MARK_DEBUG *) wire [4:0]axis_fifo_level;
  wire \axis_fifo_level[4]_i_1_n_0 ;
  wire \axis_fifo_level[4]_i_3_n_0 ;
  wire \axis_fifo_level[4]_i_4_n_0 ;
  wire \axis_fifo_level[4]_i_5_n_0 ;
  wire \axis_fifo_level[4]_i_6_n_0 ;
  wire [4:0]axis_fifo_level__0;
  wire axis_last_fifo_reg_0_15_0_0_i_2_n_0;
  wire axis_last_fifo_reg_0_15_0_0_i_3_n_0;
  wire axis_last_fifo_reg_0_15_0_0_i_4_n_0;
  wire [3:1]axis_next_pointer0_return;
  wire [3:1]axis_next_pointer_return;
  (* MARK_DEBUG *) wire axis_overflow_sticky;
  wire axis_overflow_sticky_i_1_n_0;
  wire axis_pop;
  wire axis_push;
  wire \axis_read_pointer[0]_i_1_n_0 ;
  wire \axis_read_pointer_reg_n_0_[0] ;
  wire \axis_read_pointer_reg_n_0_[1] ;
  wire \axis_read_pointer_reg_n_0_[2] ;
  wire \axis_read_pointer_reg_n_0_[3] ;
  wire \axis_read_pointer_reg_rep_n_0_[1] ;
  wire \axis_read_pointer_reg_rep_n_0_[2] ;
  wire \axis_read_pointer_reg_rep_n_0_[3] ;
  wire \axis_read_pointer_rep[1]_i_1_n_0 ;
  wire \axis_read_pointer_rep[2]_i_1_n_0 ;
  wire \axis_read_pointer_rep[3]_i_1_n_0 ;
  wire \axis_write_pointer[0]_i_1_n_0 ;
  wire [15:0]bpsk_nrz_out;
  wire bpsk_sample_valid;
  (* async_reg = "true" *) wire capture_enable_meta;
  (* async_reg = "true" *) wire capture_enable_sync;
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
  wire \dac_iir[20]_i_11_n_0 ;
  wire \dac_iir[20]_i_12_n_0 ;
  wire \dac_iir[20]_i_13_n_0 ;
  wire \dac_iir[20]_i_14_n_0 ;
  wire \dac_iir[20]_i_3_n_0 ;
  wire \dac_iir[20]_i_4_n_0 ;
  wire \dac_iir[20]_i_5_n_0 ;
  wire \dac_iir[20]_i_6_n_0 ;
  wire \dac_iir[20]_i_7_n_0 ;
  wire \dac_iir[20]_i_8_n_0 ;
  wire \dac_iir[20]_i_9_n_0 ;
  wire \dac_iir[24]_i_10_n_0 ;
  wire \dac_iir[24]_i_11_n_0 ;
  wire \dac_iir[24]_i_12_n_0 ;
  wire \dac_iir[24]_i_13_n_0 ;
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
  wire frame_accepting_samples_i_1_n_0;
  wire frame_accepting_samples_reg_n_0;
  wire [11:1]frame_sample_count;
  wire \frame_sample_count[0]_i_1_n_0 ;
  wire \frame_sample_count_reg[11]_i_2_n_2 ;
  wire \frame_sample_count_reg[11]_i_2_n_3 ;
  wire \frame_sample_count_reg[4]_i_2_n_0 ;
  wire \frame_sample_count_reg[4]_i_2_n_1 ;
  wire \frame_sample_count_reg[4]_i_2_n_2 ;
  wire \frame_sample_count_reg[4]_i_2_n_3 ;
  wire \frame_sample_count_reg[8]_i_2_n_0 ;
  wire \frame_sample_count_reg[8]_i_2_n_1 ;
  wire \frame_sample_count_reg[8]_i_2_n_2 ;
  wire \frame_sample_count_reg[8]_i_2_n_3 ;
  wire \frame_sample_count_reg_n_0_[0] ;
  wire \frame_sample_count_reg_n_0_[10] ;
  wire \frame_sample_count_reg_n_0_[11] ;
  wire \frame_sample_count_reg_n_0_[1] ;
  wire \frame_sample_count_reg_n_0_[2] ;
  wire \frame_sample_count_reg_n_0_[3] ;
  wire \frame_sample_count_reg_n_0_[4] ;
  wire \frame_sample_count_reg_n_0_[5] ;
  wire \frame_sample_count_reg_n_0_[6] ;
  wire \frame_sample_count_reg_n_0_[7] ;
  wire \frame_sample_count_reg_n_0_[8] ;
  wire \frame_sample_count_reg_n_0_[9] ;
  wire in0;
  wire lpf_data_320;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
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
  wire p_0_in0_out;
  wire p_1_in;
  wire p_2_in;
  wire [3:0]pointer;
  wire pointer0;
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
  wire \sum_reg[29]_i_2_n_0 ;
  wire \sum_reg[29]_i_3_n_0 ;
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
  wire \sum_reg_reg[29]_i_1_n_3 ;
  wire \sum_reg_reg[29]_i_1_n_6 ;
  wire \sum_reg_reg[29]_i_1_n_7 ;
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
  wire \sum_reg_reg_n_0_[0] ;
  wire \sum_reg_reg_n_0_[10] ;
  wire \sum_reg_reg_n_0_[11] ;
  wire \sum_reg_reg_n_0_[12] ;
  wire \sum_reg_reg_n_0_[13] ;
  wire \sum_reg_reg_n_0_[14] ;
  wire \sum_reg_reg_n_0_[15] ;
  wire \sum_reg_reg_n_0_[16] ;
  wire \sum_reg_reg_n_0_[17] ;
  wire \sum_reg_reg_n_0_[18] ;
  wire \sum_reg_reg_n_0_[19] ;
  wire \sum_reg_reg_n_0_[1] ;
  wire \sum_reg_reg_n_0_[20] ;
  wire \sum_reg_reg_n_0_[21] ;
  wire \sum_reg_reg_n_0_[22] ;
  wire \sum_reg_reg_n_0_[23] ;
  wire \sum_reg_reg_n_0_[24] ;
  wire \sum_reg_reg_n_0_[25] ;
  wire \sum_reg_reg_n_0_[26] ;
  wire \sum_reg_reg_n_0_[27] ;
  wire \sum_reg_reg_n_0_[28] ;
  wire \sum_reg_reg_n_0_[2] ;
  wire \sum_reg_reg_n_0_[3] ;
  wire \sum_reg_reg_n_0_[4] ;
  wire \sum_reg_reg_n_0_[5] ;
  wire \sum_reg_reg_n_0_[6] ;
  wire \sum_reg_reg_n_0_[7] ;
  wire \sum_reg_reg_n_0_[8] ;
  wire \sum_reg_reg_n_0_[9] ;
  wire valid_reg;
  wire [3:1]NLW_audio_out_inferred_i_38_CO_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_38_O_UNCONNECTED;
  wire [3:1]NLW_audio_out_inferred_i_39_CO_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_39_O_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_40_O_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_41_O_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_43_O_UNCONNECTED;
  wire [3:0]NLW_audio_out_inferred_i_52_O_UNCONNECTED;
  wire [1:0]NLW_axis_data_fifo_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_axis_data_fifo_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_axis_data_fifo_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_axis_data_fifo_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_axis_data_fifo_reg_0_15_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_axis_data_fifo_reg_0_15_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_axis_data_fifo_reg_0_15_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_axis_data_fifo_reg_0_15_6_11_DOD_UNCONNECTED;
  wire NLW_axis_last_fifo_reg_0_15_0_0_SPO_UNCONNECTED;
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
  wire [3:2]\NLW_frame_sample_count_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_frame_sample_count_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_sum_reg_reg[29]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sum_reg_reg[29]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAFAEEEEAAAAAAAA)) 
    audio_out_inferred_i_1
       (.I0(audio_out_inferred_i_17_n_0),
        .I1(selected_data[22]),
        .I2(bpsk_nrz_out[15]),
        .I3(mux_sel[1]),
        .I4(mux_sel[0]),
        .I5(mux_sel[2]),
        .O(audio_out[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_10
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[6]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[8] ),
        .I5(audio_out_inferred_i_29_n_0),
        .O(audio_out[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_11
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[5]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[7] ),
        .I5(audio_out_inferred_i_30_n_0),
        .O(audio_out[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_12
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[4]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[6] ),
        .I5(audio_out_inferred_i_31_n_0),
        .O(audio_out[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_13
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[3]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[5] ),
        .I5(audio_out_inferred_i_32_n_0),
        .O(audio_out[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_14
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[2]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[4] ),
        .I5(audio_out_inferred_i_33_n_0),
        .O(audio_out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_15
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[1]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[3] ),
        .I5(audio_out_inferred_i_34_n_0),
        .O(audio_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_16
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[0]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[2] ),
        .I5(audio_out_inferred_i_35_n_0),
        .O(audio_out[0]));
  LUT6 #(
    .INIT(64'h88888888F8F8F888)) 
    audio_out_inferred_i_17
       (.I0(\sum_reg_reg_n_0_[27] ),
        .I1(audio_out_inferred_i_36_n_0),
        .I2(audio_out_inferred_i_37_n_0),
        .I3(\dac_iir_reg_n_0_[17] ),
        .I4(fm_audio_out2),
        .I5(fm_audio_out1),
        .O(audio_out_inferred_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    audio_out_inferred_i_18
       (.I0(mux_sel[1]),
        .I1(mux_sel[0]),
        .I2(mux_sel[2]),
        .I3(fm_audio_out1),
        .O(audio_out_inferred_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    audio_out_inferred_i_19
       (.I0(mux_sel[1]),
        .I1(mux_sel[0]),
        .I2(mux_sel[2]),
        .O(audio_out_inferred_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_2
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[14]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[16] ),
        .I5(audio_out_inferred_i_21_n_0),
        .O(audio_out[14]));
  LUT4 #(
    .INIT(16'h0002)) 
    audio_out_inferred_i_20
       (.I0(mux_sel[1]),
        .I1(mux_sel[0]),
        .I2(mux_sel[2]),
        .I3(fm_audio_out2),
        .O(audio_out_inferred_i_20_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_21
       (.I0(selected_data[21]),
        .I1(\sum_reg_reg_n_0_[26] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_21_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_22
       (.I0(selected_data[20]),
        .I1(\sum_reg_reg_n_0_[25] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_22_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_23
       (.I0(selected_data[19]),
        .I1(\sum_reg_reg_n_0_[24] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_23_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_24
       (.I0(selected_data[18]),
        .I1(\sum_reg_reg_n_0_[23] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_24_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_25
       (.I0(selected_data[17]),
        .I1(\sum_reg_reg_n_0_[22] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_25_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_26
       (.I0(selected_data[16]),
        .I1(\sum_reg_reg_n_0_[21] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_26_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_27
       (.I0(selected_data[15]),
        .I1(\sum_reg_reg_n_0_[20] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_27_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_28
       (.I0(selected_data[14]),
        .I1(\sum_reg_reg_n_0_[19] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_28_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_29
       (.I0(selected_data[13]),
        .I1(\sum_reg_reg_n_0_[18] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_3
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[13]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[15] ),
        .I5(audio_out_inferred_i_22_n_0),
        .O(audio_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_30
       (.I0(selected_data[12]),
        .I1(\sum_reg_reg_n_0_[17] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_30_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_31
       (.I0(selected_data[11]),
        .I1(\sum_reg_reg_n_0_[16] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_31_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_32
       (.I0(selected_data[10]),
        .I1(\sum_reg_reg_n_0_[15] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_32_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_33
       (.I0(selected_data[9]),
        .I1(\sum_reg_reg_n_0_[14] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_33_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_34
       (.I0(selected_data[8]),
        .I1(\sum_reg_reg_n_0_[13] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_34_n_0));
  LUT5 #(
    .INIT(32'h00AA0C00)) 
    audio_out_inferred_i_35
       (.I0(selected_data[7]),
        .I1(\sum_reg_reg_n_0_[12] ),
        .I2(mux_sel[1]),
        .I3(mux_sel[0]),
        .I4(mux_sel[2]),
        .O(audio_out_inferred_i_35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    audio_out_inferred_i_36
       (.I0(mux_sel[1]),
        .I1(mux_sel[0]),
        .I2(mux_sel[2]),
        .O(audio_out_inferred_i_36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h10)) 
    audio_out_inferred_i_37
       (.I0(mux_sel[2]),
        .I1(mux_sel[0]),
        .I2(mux_sel[1]),
        .O(audio_out_inferred_i_37_n_0));
  CARRY4 audio_out_inferred_i_38
       (.CI(audio_out_inferred_i_40_n_0),
        .CO({NLW_audio_out_inferred_i_38_CO_UNCONNECTED[3:1],fm_audio_out2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_audio_out_inferred_i_38_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,p_0_in0}));
  CARRY4 audio_out_inferred_i_39
       (.CI(audio_out_inferred_i_41_n_0),
        .CO({NLW_audio_out_inferred_i_39_CO_UNCONNECTED[3:1],fm_audio_out1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_audio_out_inferred_i_39_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,audio_out_inferred_i_42_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_4
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[12]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[14] ),
        .I5(audio_out_inferred_i_23_n_0),
        .O(audio_out[12]));
  CARRY4 audio_out_inferred_i_40
       (.CI(audio_out_inferred_i_43_n_0),
        .CO({audio_out_inferred_i_40_n_0,audio_out_inferred_i_40_n_1,audio_out_inferred_i_40_n_2,audio_out_inferred_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({audio_out_inferred_i_44_n_0,audio_out_inferred_i_45_n_0,audio_out_inferred_i_46_n_0,audio_out_inferred_i_47_n_0}),
        .O(NLW_audio_out_inferred_i_40_O_UNCONNECTED[3:0]),
        .S({audio_out_inferred_i_48_n_0,audio_out_inferred_i_49_n_0,audio_out_inferred_i_50_n_0,audio_out_inferred_i_51_n_0}));
  CARRY4 audio_out_inferred_i_41
       (.CI(audio_out_inferred_i_52_n_0),
        .CO({audio_out_inferred_i_41_n_0,audio_out_inferred_i_41_n_1,audio_out_inferred_i_41_n_2,audio_out_inferred_i_41_n_3}),
        .CYINIT(1'b0),
        .DI({audio_out_inferred_i_53_n_0,audio_out_inferred_i_54_n_0,audio_out_inferred_i_55_n_0,audio_out_inferred_i_56_n_0}),
        .O(NLW_audio_out_inferred_i_41_O_UNCONNECTED[3:0]),
        .S({audio_out_inferred_i_57_n_0,audio_out_inferred_i_58_n_0,audio_out_inferred_i_59_n_0,audio_out_inferred_i_60_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    audio_out_inferred_i_42
       (.I0(p_0_in0),
        .O(audio_out_inferred_i_42_n_0));
  CARRY4 audio_out_inferred_i_43
       (.CI(1'b0),
        .CO({audio_out_inferred_i_43_n_0,audio_out_inferred_i_43_n_1,audio_out_inferred_i_43_n_2,audio_out_inferred_i_43_n_3}),
        .CYINIT(1'b0),
        .DI({audio_out_inferred_i_61_n_0,audio_out_inferred_i_62_n_0,audio_out_inferred_i_63_n_0,audio_out_inferred_i_64_n_0}),
        .O(NLW_audio_out_inferred_i_43_O_UNCONNECTED[3:0]),
        .S({audio_out_inferred_i_65_n_0,audio_out_inferred_i_66_n_0,audio_out_inferred_i_67_n_0,audio_out_inferred_i_68_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_44
       (.I0(\dac_iir_reg_n_0_[30] ),
        .I1(p_0_in0),
        .O(audio_out_inferred_i_44_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_45
       (.I0(\dac_iir_reg_n_0_[28] ),
        .I1(\dac_iir_reg_n_0_[29] ),
        .O(audio_out_inferred_i_45_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_46
       (.I0(\dac_iir_reg_n_0_[26] ),
        .I1(\dac_iir_reg_n_0_[27] ),
        .O(audio_out_inferred_i_46_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_47
       (.I0(\dac_iir_reg_n_0_[24] ),
        .I1(\dac_iir_reg_n_0_[25] ),
        .O(audio_out_inferred_i_47_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_48
       (.I0(p_0_in0),
        .I1(\dac_iir_reg_n_0_[30] ),
        .O(audio_out_inferred_i_48_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_49
       (.I0(\dac_iir_reg_n_0_[28] ),
        .I1(\dac_iir_reg_n_0_[29] ),
        .O(audio_out_inferred_i_49_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_5
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[11]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[13] ),
        .I5(audio_out_inferred_i_24_n_0),
        .O(audio_out[11]));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_50
       (.I0(\dac_iir_reg_n_0_[26] ),
        .I1(\dac_iir_reg_n_0_[27] ),
        .O(audio_out_inferred_i_50_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_51
       (.I0(\dac_iir_reg_n_0_[24] ),
        .I1(\dac_iir_reg_n_0_[25] ),
        .O(audio_out_inferred_i_51_n_0));
  CARRY4 audio_out_inferred_i_52
       (.CI(1'b0),
        .CO({audio_out_inferred_i_52_n_0,audio_out_inferred_i_52_n_1,audio_out_inferred_i_52_n_2,audio_out_inferred_i_52_n_3}),
        .CYINIT(1'b0),
        .DI({audio_out_inferred_i_69_n_0,audio_out_inferred_i_70_n_0,audio_out_inferred_i_71_n_0,\dac_iir_reg_n_0_[17] }),
        .O(NLW_audio_out_inferred_i_52_O_UNCONNECTED[3:0]),
        .S({audio_out_inferred_i_72_n_0,audio_out_inferred_i_73_n_0,audio_out_inferred_i_74_n_0,audio_out_inferred_i_75_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_53
       (.I0(\dac_iir_reg_n_0_[30] ),
        .I1(p_0_in0),
        .O(audio_out_inferred_i_53_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_54
       (.I0(\dac_iir_reg_n_0_[28] ),
        .I1(\dac_iir_reg_n_0_[29] ),
        .O(audio_out_inferred_i_54_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_55
       (.I0(\dac_iir_reg_n_0_[26] ),
        .I1(\dac_iir_reg_n_0_[27] ),
        .O(audio_out_inferred_i_55_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_56
       (.I0(\dac_iir_reg_n_0_[24] ),
        .I1(\dac_iir_reg_n_0_[25] ),
        .O(audio_out_inferred_i_56_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_57
       (.I0(p_0_in0),
        .I1(\dac_iir_reg_n_0_[30] ),
        .O(audio_out_inferred_i_57_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_58
       (.I0(\dac_iir_reg_n_0_[28] ),
        .I1(\dac_iir_reg_n_0_[29] ),
        .O(audio_out_inferred_i_58_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_59
       (.I0(\dac_iir_reg_n_0_[26] ),
        .I1(\dac_iir_reg_n_0_[27] ),
        .O(audio_out_inferred_i_59_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_6
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[10]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[12] ),
        .I5(audio_out_inferred_i_25_n_0),
        .O(audio_out[10]));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_60
       (.I0(\dac_iir_reg_n_0_[24] ),
        .I1(\dac_iir_reg_n_0_[25] ),
        .O(audio_out_inferred_i_60_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_61
       (.I0(\dac_iir_reg_n_0_[22] ),
        .I1(\dac_iir_reg_n_0_[23] ),
        .O(audio_out_inferred_i_61_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_62
       (.I0(\dac_iir_reg_n_0_[20] ),
        .I1(\dac_iir_reg_n_0_[21] ),
        .O(audio_out_inferred_i_62_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_inferred_i_63
       (.I0(\dac_iir_reg_n_0_[18] ),
        .I1(\dac_iir_reg_n_0_[19] ),
        .O(audio_out_inferred_i_63_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    audio_out_inferred_i_64
       (.I0(\dac_iir_reg_n_0_[17] ),
        .O(audio_out_inferred_i_64_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_65
       (.I0(\dac_iir_reg_n_0_[22] ),
        .I1(\dac_iir_reg_n_0_[23] ),
        .O(audio_out_inferred_i_65_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_66
       (.I0(\dac_iir_reg_n_0_[20] ),
        .I1(\dac_iir_reg_n_0_[21] ),
        .O(audio_out_inferred_i_66_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_inferred_i_67
       (.I0(\dac_iir_reg_n_0_[18] ),
        .I1(\dac_iir_reg_n_0_[19] ),
        .O(audio_out_inferred_i_67_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    audio_out_inferred_i_68
       (.I0(\dac_iir_reg_n_0_[17] ),
        .I1(\dac_iir_reg_n_0_[16] ),
        .O(audio_out_inferred_i_68_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_69
       (.I0(\dac_iir_reg_n_0_[22] ),
        .I1(\dac_iir_reg_n_0_[23] ),
        .O(audio_out_inferred_i_69_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_7
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[9]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[11] ),
        .I5(audio_out_inferred_i_26_n_0),
        .O(audio_out[9]));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_70
       (.I0(\dac_iir_reg_n_0_[20] ),
        .I1(\dac_iir_reg_n_0_[21] ),
        .O(audio_out_inferred_i_70_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    audio_out_inferred_i_71
       (.I0(\dac_iir_reg_n_0_[18] ),
        .I1(\dac_iir_reg_n_0_[19] ),
        .O(audio_out_inferred_i_71_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_72
       (.I0(\dac_iir_reg_n_0_[22] ),
        .I1(\dac_iir_reg_n_0_[23] ),
        .O(audio_out_inferred_i_72_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_73
       (.I0(\dac_iir_reg_n_0_[20] ),
        .I1(\dac_iir_reg_n_0_[21] ),
        .O(audio_out_inferred_i_73_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    audio_out_inferred_i_74
       (.I0(\dac_iir_reg_n_0_[18] ),
        .I1(\dac_iir_reg_n_0_[19] ),
        .O(audio_out_inferred_i_74_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    audio_out_inferred_i_75
       (.I0(\dac_iir_reg_n_0_[16] ),
        .I1(\dac_iir_reg_n_0_[17] ),
        .O(audio_out_inferred_i_75_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_8
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[8]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[10] ),
        .I5(audio_out_inferred_i_27_n_0),
        .O(audio_out[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    audio_out_inferred_i_9
       (.I0(audio_out_inferred_i_18_n_0),
        .I1(audio_out_inferred_i_19_n_0),
        .I2(bpsk_nrz_out[7]),
        .I3(audio_out_inferred_i_20_n_0),
        .I4(\dac_iir_reg_n_0_[9] ),
        .I5(audio_out_inferred_i_28_n_0),
        .O(audio_out[7]));
  LUT5 #(
    .INIT(32'hFFBFF083)) 
    audio_valid_INST_0
       (.I0(bpsk_sample_valid),
        .I1(mux_sel[2]),
        .I2(mux_sel[0]),
        .I3(mux_sel[1]),
        .I4(valid_reg),
        .O(audio_valid));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M axis_data_fifo_reg_0_15_0_5
       (.ADDRA({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,pointer}),
        .DIA({\sum_reg_reg_n_0_[7] ,\sum_reg_reg_n_0_[6] }),
        .DIB({\sum_reg_reg_n_0_[9] ,\sum_reg_reg_n_0_[8] }),
        .DIC({\sum_reg_reg_n_0_[11] ,\sum_reg_reg_n_0_[10] }),
        .DID({1'b0,1'b0}),
        .DOA(m_axis_tdata[1:0]),
        .DOB(m_axis_tdata[3:2]),
        .DOC(m_axis_tdata[5:4]),
        .DOD(NLW_axis_data_fifo_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_0_in0_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M axis_data_fifo_reg_0_15_12_17
       (.ADDRA({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,pointer}),
        .DIA({\sum_reg_reg_n_0_[19] ,\sum_reg_reg_n_0_[18] }),
        .DIB({\sum_reg_reg_n_0_[21] ,\sum_reg_reg_n_0_[20] }),
        .DIC({\sum_reg_reg_n_0_[23] ,\sum_reg_reg_n_0_[22] }),
        .DID({1'b0,1'b0}),
        .DOA(m_axis_tdata[13:12]),
        .DOB(m_axis_tdata[15:14]),
        .DOC(m_axis_tdata[17:16]),
        .DOD(NLW_axis_data_fifo_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_0_in0_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M axis_data_fifo_reg_0_15_18_23
       (.ADDRA({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,pointer}),
        .DIA({\sum_reg_reg_n_0_[25] ,\sum_reg_reg_n_0_[24] }),
        .DIB({\sum_reg_reg_n_0_[27] ,\sum_reg_reg_n_0_[26] }),
        .DIC({lpf_data_320,\sum_reg_reg_n_0_[28] }),
        .DID({1'b0,1'b0}),
        .DOA(m_axis_tdata[19:18]),
        .DOB(m_axis_tdata[21:20]),
        .DOC(m_axis_tdata[23:22]),
        .DOD(NLW_axis_data_fifo_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_0_in0_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M axis_data_fifo_reg_0_15_24_29
       (.ADDRA({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,pointer}),
        .DIA({lpf_data_320,lpf_data_320}),
        .DIB({lpf_data_320,lpf_data_320}),
        .DIC({lpf_data_320,lpf_data_320}),
        .DID({1'b0,1'b0}),
        .DOA(m_axis_tdata[25:24]),
        .DOB(m_axis_tdata[27:26]),
        .DOC(m_axis_tdata[29:28]),
        .DOD(NLW_axis_data_fifo_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_0_in0_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M axis_data_fifo_reg_0_15_30_31
       (.ADDRA({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,pointer}),
        .DIA({lpf_data_320,lpf_data_320}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(m_axis_tdata[31:30]),
        .DOB(NLW_axis_data_fifo_reg_0_15_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_axis_data_fifo_reg_0_15_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_axis_data_fifo_reg_0_15_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_0_in0_out));
  LUT5 #(
    .INIT(32'h80000000)) 
    axis_data_fifo_reg_0_15_30_31_i_1
       (.I0(axis_data_fifo_reg_0_15_30_31_i_2_n_0),
        .I1(frame_accepting_samples_reg_n_0),
        .I2(valid_reg),
        .I3(capture_enable_sync),
        .I4(aresetn),
        .O(p_0_in0_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    axis_data_fifo_reg_0_15_30_31_i_2
       (.I0(axis_fifo_level[4]),
        .I1(m_axis_tready),
        .I2(axis_fifo_level[1]),
        .I3(axis_fifo_level[2]),
        .I4(axis_fifo_level[0]),
        .I5(axis_fifo_level[3]),
        .O(axis_data_fifo_reg_0_15_30_31_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M axis_data_fifo_reg_0_15_6_11
       (.ADDRA({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRB({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRC({1'b0,\axis_read_pointer_reg_rep_n_0_[3] ,\axis_read_pointer_reg_rep_n_0_[2] ,\axis_read_pointer_reg_rep_n_0_[1] ,\axis_read_pointer_reg_n_0_[0] }),
        .ADDRD({1'b0,pointer}),
        .DIA({\sum_reg_reg_n_0_[13] ,\sum_reg_reg_n_0_[12] }),
        .DIB({\sum_reg_reg_n_0_[15] ,\sum_reg_reg_n_0_[14] }),
        .DIC({\sum_reg_reg_n_0_[17] ,\sum_reg_reg_n_0_[16] }),
        .DID({1'b0,1'b0}),
        .DOA(m_axis_tdata[7:6]),
        .DOB(m_axis_tdata[9:8]),
        .DOC(m_axis_tdata[11:10]),
        .DOD(NLW_axis_data_fifo_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_0_in0_out));
  LUT1 #(
    .INIT(2'h1)) 
    \axis_fifo_level[0]_i_1 
       (.I0(axis_fifo_level[0]),
        .O(axis_fifo_level__0[0]));
  LUT5 #(
    .INIT(32'h7DDDD777)) 
    \axis_fifo_level[1]_i_1 
       (.I0(axis_data_fifo_reg_0_15_30_31_i_2_n_0),
        .I1(axis_fifo_level[0]),
        .I2(valid_reg),
        .I3(frame_accepting_samples_reg_n_0),
        .I4(axis_fifo_level[1]),
        .O(axis_fifo_level__0[1]));
  LUT5 #(
    .INIT(32'hDF75F75D)) 
    \axis_fifo_level[2]_i_1 
       (.I0(axis_data_fifo_reg_0_15_30_31_i_2_n_0),
        .I1(\axis_fifo_level[4]_i_6_n_0 ),
        .I2(axis_fifo_level[0]),
        .I3(axis_fifo_level[2]),
        .I4(axis_fifo_level[1]),
        .O(axis_fifo_level__0[2]));
  LUT6 #(
    .INIT(64'hDFFB2004FFFFFFFF)) 
    \axis_fifo_level[3]_i_1 
       (.I0(axis_fifo_level[0]),
        .I1(\axis_fifo_level[4]_i_6_n_0 ),
        .I2(axis_fifo_level[2]),
        .I3(axis_fifo_level[1]),
        .I4(axis_fifo_level[3]),
        .I5(axis_data_fifo_reg_0_15_30_31_i_2_n_0),
        .O(axis_fifo_level__0[3]));
  LUT5 #(
    .INIT(32'h1EEEB000)) 
    \axis_fifo_level[4]_i_1 
       (.I0(\axis_fifo_level[4]_i_3_n_0 ),
        .I1(axis_fifo_level[4]),
        .I2(frame_accepting_samples_reg_n_0),
        .I3(valid_reg),
        .I4(m_axis_tready),
        .O(\axis_fifo_level[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB487B487B4B4B484)) 
    \axis_fifo_level[4]_i_2 
       (.I0(\axis_fifo_level[4]_i_4_n_0 ),
        .I1(axis_fifo_level[1]),
        .I2(axis_fifo_level[4]),
        .I3(\axis_fifo_level[4]_i_5_n_0 ),
        .I4(m_axis_tready),
        .I5(\axis_fifo_level[4]_i_6_n_0 ),
        .O(axis_fifo_level__0[4]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axis_fifo_level[4]_i_3 
       (.I0(axis_fifo_level[3]),
        .I1(axis_fifo_level[0]),
        .I2(axis_fifo_level[2]),
        .I3(axis_fifo_level[1]),
        .O(\axis_fifo_level[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \axis_fifo_level[4]_i_4 
       (.I0(axis_fifo_level[2]),
        .I1(frame_accepting_samples_reg_n_0),
        .I2(valid_reg),
        .I3(capture_enable_sync),
        .I4(axis_fifo_level[0]),
        .I5(axis_fifo_level[3]),
        .O(\axis_fifo_level[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \axis_fifo_level[4]_i_5 
       (.I0(axis_fifo_level[2]),
        .I1(axis_fifo_level[0]),
        .I2(axis_fifo_level[3]),
        .O(\axis_fifo_level[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \axis_fifo_level[4]_i_6 
       (.I0(capture_enable_sync),
        .I1(valid_reg),
        .I2(frame_accepting_samples_reg_n_0),
        .O(\axis_fifo_level[4]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axis_fifo_level_reg[0] 
       (.C(aclk),
        .CE(\axis_fifo_level[4]_i_1_n_0 ),
        .D(axis_fifo_level__0[0]),
        .Q(axis_fifo_level[0]),
        .R(pointer0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axis_fifo_level_reg[1] 
       (.C(aclk),
        .CE(\axis_fifo_level[4]_i_1_n_0 ),
        .D(axis_fifo_level__0[1]),
        .Q(axis_fifo_level[1]),
        .R(pointer0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axis_fifo_level_reg[2] 
       (.C(aclk),
        .CE(\axis_fifo_level[4]_i_1_n_0 ),
        .D(axis_fifo_level__0[2]),
        .Q(axis_fifo_level[2]),
        .R(pointer0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axis_fifo_level_reg[3] 
       (.C(aclk),
        .CE(\axis_fifo_level[4]_i_1_n_0 ),
        .D(axis_fifo_level__0[3]),
        .Q(axis_fifo_level[3]),
        .R(pointer0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \axis_fifo_level_reg[4] 
       (.C(aclk),
        .CE(\axis_fifo_level[4]_i_1_n_0 ),
        .D(axis_fifo_level__0[4]),
        .Q(axis_fifo_level[4]),
        .R(pointer0));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    axis_last_fifo_reg_0_15_0_0
       (.A0(pointer[0]),
        .A1(pointer[1]),
        .A2(pointer[2]),
        .A3(pointer[3]),
        .A4(1'b0),
        .D(p_2_in),
        .DPO(m_axis_tlast),
        .DPRA0(\axis_read_pointer_reg_n_0_[0] ),
        .DPRA1(\axis_read_pointer_reg_rep_n_0_[1] ),
        .DPRA2(\axis_read_pointer_reg_rep_n_0_[2] ),
        .DPRA3(\axis_read_pointer_reg_rep_n_0_[3] ),
        .DPRA4(1'b0),
        .SPO(NLW_axis_last_fifo_reg_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(aclk),
        .WE(p_0_in0_out));
  LUT1 #(
    .INIT(2'h1)) 
    axis_last_fifo_reg_0_15_0_0_i_1
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    axis_last_fifo_reg_0_15_0_0_i_2
       (.I0(axis_last_fifo_reg_0_15_0_0_i_3_n_0),
        .I1(\frame_sample_count_reg_n_0_[5] ),
        .I2(\frame_sample_count_reg_n_0_[4] ),
        .I3(\frame_sample_count_reg_n_0_[7] ),
        .I4(\frame_sample_count_reg_n_0_[6] ),
        .I5(axis_last_fifo_reg_0_15_0_0_i_4_n_0),
        .O(axis_last_fifo_reg_0_15_0_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    axis_last_fifo_reg_0_15_0_0_i_3
       (.I0(\frame_sample_count_reg_n_0_[9] ),
        .I1(\frame_sample_count_reg_n_0_[8] ),
        .I2(\frame_sample_count_reg_n_0_[10] ),
        .I3(\frame_sample_count_reg_n_0_[11] ),
        .O(axis_last_fifo_reg_0_15_0_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    axis_last_fifo_reg_0_15_0_0_i_4
       (.I0(\frame_sample_count_reg_n_0_[1] ),
        .I1(\frame_sample_count_reg_n_0_[0] ),
        .I2(\frame_sample_count_reg_n_0_[3] ),
        .I3(\frame_sample_count_reg_n_0_[2] ),
        .O(axis_last_fifo_reg_0_15_0_0_i_4_n_0));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    axis_overflow_sticky_i_1
       (.I0(axis_overflow_sticky),
        .I1(capture_enable_sync),
        .I2(valid_reg),
        .I3(frame_accepting_samples_reg_n_0),
        .I4(axis_data_fifo_reg_0_15_30_31_i_2_n_0),
        .O(axis_overflow_sticky_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE axis_overflow_sticky_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axis_overflow_sticky_i_1_n_0),
        .Q(axis_overflow_sticky),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \axis_read_pointer[0]_i_1 
       (.I0(\axis_read_pointer_reg_n_0_[0] ),
        .O(\axis_read_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axis_read_pointer[1]_i_1 
       (.I0(\axis_read_pointer_reg_n_0_[1] ),
        .I1(\axis_read_pointer_reg_n_0_[0] ),
        .O(axis_next_pointer0_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axis_read_pointer[2]_i_1 
       (.I0(\axis_read_pointer_reg_n_0_[1] ),
        .I1(\axis_read_pointer_reg_n_0_[0] ),
        .I2(\axis_read_pointer_reg_n_0_[2] ),
        .O(axis_next_pointer0_return[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \axis_read_pointer[3]_i_1 
       (.I0(axis_fifo_level[4]),
        .I1(axis_fifo_level[3]),
        .I2(axis_fifo_level[0]),
        .I3(axis_fifo_level[2]),
        .I4(axis_fifo_level[1]),
        .I5(m_axis_tready),
        .O(axis_pop));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axis_read_pointer[3]_i_2 
       (.I0(\axis_read_pointer_reg_n_0_[1] ),
        .I1(\axis_read_pointer_reg_n_0_[0] ),
        .I2(\axis_read_pointer_reg_n_0_[2] ),
        .I3(\axis_read_pointer_reg_n_0_[3] ),
        .O(axis_next_pointer0_return[3]));
  FDRE \axis_read_pointer_reg[0] 
       (.C(aclk),
        .CE(axis_pop),
        .D(\axis_read_pointer[0]_i_1_n_0 ),
        .Q(\axis_read_pointer_reg_n_0_[0] ),
        .R(pointer0));
  FDRE \axis_read_pointer_reg[1] 
       (.C(aclk),
        .CE(axis_pop),
        .D(axis_next_pointer0_return[1]),
        .Q(\axis_read_pointer_reg_n_0_[1] ),
        .R(pointer0));
  FDRE \axis_read_pointer_reg[2] 
       (.C(aclk),
        .CE(axis_pop),
        .D(axis_next_pointer0_return[2]),
        .Q(\axis_read_pointer_reg_n_0_[2] ),
        .R(pointer0));
  FDRE \axis_read_pointer_reg[3] 
       (.C(aclk),
        .CE(axis_pop),
        .D(axis_next_pointer0_return[3]),
        .Q(\axis_read_pointer_reg_n_0_[3] ),
        .R(pointer0));
  FDRE \axis_read_pointer_reg_rep[1] 
       (.C(aclk),
        .CE(axis_pop),
        .D(\axis_read_pointer_rep[1]_i_1_n_0 ),
        .Q(\axis_read_pointer_reg_rep_n_0_[1] ),
        .R(pointer0));
  FDRE \axis_read_pointer_reg_rep[2] 
       (.C(aclk),
        .CE(axis_pop),
        .D(\axis_read_pointer_rep[2]_i_1_n_0 ),
        .Q(\axis_read_pointer_reg_rep_n_0_[2] ),
        .R(pointer0));
  FDRE \axis_read_pointer_reg_rep[3] 
       (.C(aclk),
        .CE(axis_pop),
        .D(\axis_read_pointer_rep[3]_i_1_n_0 ),
        .Q(\axis_read_pointer_reg_rep_n_0_[3] ),
        .R(pointer0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axis_read_pointer_rep[1]_i_1 
       (.I0(\axis_read_pointer_reg_n_0_[0] ),
        .I1(\axis_read_pointer_reg_n_0_[1] ),
        .O(\axis_read_pointer_rep[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axis_read_pointer_rep[2]_i_1 
       (.I0(\axis_read_pointer_reg_n_0_[2] ),
        .I1(\axis_read_pointer_reg_n_0_[0] ),
        .I2(\axis_read_pointer_reg_n_0_[1] ),
        .O(\axis_read_pointer_rep[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axis_read_pointer_rep[3]_i_1 
       (.I0(\axis_read_pointer_reg_n_0_[3] ),
        .I1(\axis_read_pointer_reg_n_0_[2] ),
        .I2(\axis_read_pointer_reg_n_0_[0] ),
        .I3(\axis_read_pointer_reg_n_0_[1] ),
        .O(\axis_read_pointer_rep[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \axis_write_pointer[0]_i_1 
       (.I0(pointer[0]),
        .O(\axis_write_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axis_write_pointer[1]_i_1 
       (.I0(pointer[0]),
        .I1(pointer[1]),
        .O(axis_next_pointer_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axis_write_pointer[2]_i_1 
       (.I0(pointer[2]),
        .I1(pointer[0]),
        .I2(pointer[1]),
        .O(axis_next_pointer_return[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \axis_write_pointer[3]_i_1 
       (.I0(capture_enable_sync),
        .I1(aresetn),
        .O(pointer0));
  LUT4 #(
    .INIT(16'h8000)) 
    \axis_write_pointer[3]_i_2 
       (.I0(axis_data_fifo_reg_0_15_30_31_i_2_n_0),
        .I1(frame_accepting_samples_reg_n_0),
        .I2(valid_reg),
        .I3(capture_enable_sync),
        .O(axis_push));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axis_write_pointer[3]_i_3 
       (.I0(pointer[3]),
        .I1(pointer[2]),
        .I2(pointer[0]),
        .I3(pointer[1]),
        .O(axis_next_pointer_return[3]));
  FDRE \axis_write_pointer_reg[0] 
       (.C(aclk),
        .CE(axis_push),
        .D(\axis_write_pointer[0]_i_1_n_0 ),
        .Q(pointer[0]),
        .R(pointer0));
  FDRE \axis_write_pointer_reg[1] 
       (.C(aclk),
        .CE(axis_push),
        .D(axis_next_pointer_return[1]),
        .Q(pointer[1]),
        .R(pointer0));
  FDRE \axis_write_pointer_reg[2] 
       (.C(aclk),
        .CE(axis_push),
        .D(axis_next_pointer_return[2]),
        .Q(pointer[2]),
        .R(pointer0));
  FDRE \axis_write_pointer_reg[3] 
       (.C(aclk),
        .CE(axis_push),
        .D(axis_next_pointer_return[3]),
        .Q(pointer[3]),
        .R(pointer0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE capture_enable_meta_reg
       (.C(aclk),
        .CE(1'b1),
        .D(mux_ctrl[8]),
        .Q(capture_enable_meta),
        .R(clear));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE capture_enable_sync_reg
       (.C(aclk),
        .CE(1'b1),
        .D(capture_enable_meta),
        .Q(capture_enable_sync),
        .R(clear));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_10 
       (.I0(\sum_reg_reg_n_0_[11] ),
        .I1(\dac_iir_reg_n_0_[5] ),
        .O(\dac_iir[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_11 
       (.I0(\sum_reg_reg_n_0_[10] ),
        .I1(\dac_iir_reg_n_0_[4] ),
        .O(\dac_iir[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_12 
       (.I0(\sum_reg_reg_n_0_[9] ),
        .I1(\dac_iir_reg_n_0_[3] ),
        .O(\dac_iir[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_13 
       (.I0(\sum_reg_reg_n_0_[8] ),
        .I1(\dac_iir_reg_n_0_[2] ),
        .O(\dac_iir[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_14 
       (.I0(\sum_reg_reg_n_0_[7] ),
        .I1(\dac_iir_reg_n_0_[1] ),
        .O(\dac_iir[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_15 
       (.I0(\sum_reg_reg_n_0_[6] ),
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
       (.I0(\sum_reg_reg_n_0_[13] ),
        .I1(\dac_iir_reg_n_0_[7] ),
        .O(\dac_iir[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[0]_i_9 
       (.I0(\sum_reg_reg_n_0_[12] ),
        .I1(\dac_iir_reg_n_0_[6] ),
        .O(\dac_iir[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[12]_i_10 
       (.I0(\sum_reg_reg_n_0_[22] ),
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
       (.I0(\sum_reg_reg_n_0_[25] ),
        .I1(\dac_iir_reg_n_0_[19] ),
        .O(\dac_iir[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[12]_i_8 
       (.I0(\sum_reg_reg_n_0_[24] ),
        .I1(\dac_iir_reg_n_0_[18] ),
        .O(\dac_iir[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[12]_i_9 
       (.I0(\sum_reg_reg_n_0_[23] ),
        .I1(\dac_iir_reg_n_0_[17] ),
        .O(\dac_iir[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[16]_i_10 
       (.I0(\sum_reg_reg_n_0_[26] ),
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
        .I1(lpf_data_320),
        .O(\dac_iir[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[16]_i_8 
       (.I0(\sum_reg_reg_n_0_[28] ),
        .I1(\dac_iir_reg_n_0_[22] ),
        .O(\dac_iir[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[16]_i_9 
       (.I0(\sum_reg_reg_n_0_[27] ),
        .I1(\dac_iir_reg_n_0_[21] ),
        .O(\dac_iir[16]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_iir[20]_i_10 
       (.I0(\dac_iir_reg_n_0_[23] ),
        .O(\dac_iir[20]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[20]_i_11 
       (.I0(\dac_iir_reg_n_0_[26] ),
        .I1(\dac_iir_reg_n_0_[27] ),
        .O(\dac_iir[20]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[20]_i_12 
       (.I0(\dac_iir_reg_n_0_[25] ),
        .I1(\dac_iir_reg_n_0_[26] ),
        .O(\dac_iir[20]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[20]_i_13 
       (.I0(\dac_iir_reg_n_0_[24] ),
        .I1(\dac_iir_reg_n_0_[25] ),
        .O(\dac_iir[20]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[20]_i_14 
       (.I0(\dac_iir_reg_n_0_[23] ),
        .I1(\dac_iir_reg_n_0_[24] ),
        .O(\dac_iir[20]_i_14_n_0 ));
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
  LUT1 #(
    .INIT(2'h1)) 
    \dac_iir[20]_i_7 
       (.I0(\dac_iir_reg_n_0_[26] ),
        .O(\dac_iir[20]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_iir[20]_i_8 
       (.I0(\dac_iir_reg_n_0_[25] ),
        .O(\dac_iir[20]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_iir[20]_i_9 
       (.I0(\dac_iir_reg_n_0_[24] ),
        .O(\dac_iir[20]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[24]_i_10 
       (.I0(p_0_in0),
        .I1(\dac_iir_reg_n_0_[30] ),
        .O(\dac_iir[24]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[24]_i_11 
       (.I0(\dac_iir_reg_n_0_[29] ),
        .I1(\dac_iir_reg_n_0_[30] ),
        .O(\dac_iir[24]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[24]_i_12 
       (.I0(\dac_iir_reg_n_0_[28] ),
        .I1(\dac_iir_reg_n_0_[29] ),
        .O(\dac_iir[24]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[24]_i_13 
       (.I0(\dac_iir_reg_n_0_[27] ),
        .I1(\dac_iir_reg_n_0_[28] ),
        .O(\dac_iir[24]_i_13_n_0 ));
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
  LUT1 #(
    .INIT(2'h1)) 
    \dac_iir[24]_i_7 
       (.I0(\dac_iir_reg_n_0_[29] ),
        .O(\dac_iir[24]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_iir[24]_i_8 
       (.I0(\dac_iir_reg_n_0_[28] ),
        .O(\dac_iir[24]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_iir[24]_i_9 
       (.I0(\dac_iir_reg_n_0_[27] ),
        .O(\dac_iir[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_iir[28]_i_2 
       (.I0(in0),
        .I1(p_0_in0),
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
       (.I0(\sum_reg_reg_n_0_[14] ),
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
       (.I0(\sum_reg_reg_n_0_[17] ),
        .I1(\dac_iir_reg_n_0_[11] ),
        .O(\dac_iir[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[4]_i_8 
       (.I0(\sum_reg_reg_n_0_[16] ),
        .I1(\dac_iir_reg_n_0_[10] ),
        .O(\dac_iir[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[4]_i_9 
       (.I0(\sum_reg_reg_n_0_[15] ),
        .I1(\dac_iir_reg_n_0_[9] ),
        .O(\dac_iir[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[8]_i_10 
       (.I0(\sum_reg_reg_n_0_[18] ),
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
       (.I0(\sum_reg_reg_n_0_[21] ),
        .I1(\dac_iir_reg_n_0_[15] ),
        .O(\dac_iir[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[8]_i_8 
       (.I0(\sum_reg_reg_n_0_[20] ),
        .I1(\dac_iir_reg_n_0_[14] ),
        .O(\dac_iir[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_iir[8]_i_9 
       (.I0(\sum_reg_reg_n_0_[19] ),
        .I1(\dac_iir_reg_n_0_[13] ),
        .O(\dac_iir[8]_i_9_n_0 ));
  FDRE \dac_iir_reg[0] 
       (.C(aclk),
        .CE(valid_reg),
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
        .DI({\sum_reg_reg_n_0_[13] ,\sum_reg_reg_n_0_[12] ,\sum_reg_reg_n_0_[11] ,\sum_reg_reg_n_0_[10] }),
        .O({\dac_iir_reg[0]_i_2_n_4 ,\dac_iir_reg[0]_i_2_n_5 ,\dac_iir_reg[0]_i_2_n_6 ,\dac_iir_reg[0]_i_2_n_7 }),
        .S({\dac_iir[0]_i_8_n_0 ,\dac_iir[0]_i_9_n_0 ,\dac_iir[0]_i_10_n_0 ,\dac_iir[0]_i_11_n_0 }));
  CARRY4 \dac_iir_reg[0]_i_7 
       (.CI(1'b0),
        .CO({\dac_iir_reg[0]_i_7_n_0 ,\dac_iir_reg[0]_i_7_n_1 ,\dac_iir_reg[0]_i_7_n_2 ,\dac_iir_reg[0]_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI({\sum_reg_reg_n_0_[9] ,\sum_reg_reg_n_0_[8] ,\sum_reg_reg_n_0_[7] ,\sum_reg_reg_n_0_[6] }),
        .O(\NLW_dac_iir_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\dac_iir[0]_i_12_n_0 ,\dac_iir[0]_i_13_n_0 ,\dac_iir[0]_i_14_n_0 ,\dac_iir[0]_i_15_n_0 }));
  FDRE \dac_iir_reg[10] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[8]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[10] ),
        .R(clear));
  FDRE \dac_iir_reg[11] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[8]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[11] ),
        .R(clear));
  FDRE \dac_iir_reg[12] 
       (.C(aclk),
        .CE(valid_reg),
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
        .DI({\sum_reg_reg_n_0_[25] ,\sum_reg_reg_n_0_[24] ,\sum_reg_reg_n_0_[23] ,\sum_reg_reg_n_0_[22] }),
        .O({\dac_iir_reg[12]_i_2_n_4 ,\dac_iir_reg[12]_i_2_n_5 ,\dac_iir_reg[12]_i_2_n_6 ,\dac_iir_reg[12]_i_2_n_7 }),
        .S({\dac_iir[12]_i_7_n_0 ,\dac_iir[12]_i_8_n_0 ,\dac_iir[12]_i_9_n_0 ,\dac_iir[12]_i_10_n_0 }));
  FDRE \dac_iir_reg[13] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[12]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[13] ),
        .R(clear));
  FDRE \dac_iir_reg[14] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[12]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[14] ),
        .R(clear));
  FDRE \dac_iir_reg[15] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[12]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[15] ),
        .R(clear));
  FDRE \dac_iir_reg[16] 
       (.C(aclk),
        .CE(valid_reg),
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
        .DI({\dac_iir_reg_n_0_[23] ,\sum_reg_reg_n_0_[28] ,\sum_reg_reg_n_0_[27] ,\sum_reg_reg_n_0_[26] }),
        .O({\dac_iir_reg[16]_i_2_n_4 ,\dac_iir_reg[16]_i_2_n_5 ,\dac_iir_reg[16]_i_2_n_6 ,\dac_iir_reg[16]_i_2_n_7 }),
        .S({\dac_iir[16]_i_7_n_0 ,\dac_iir[16]_i_8_n_0 ,\dac_iir[16]_i_9_n_0 ,\dac_iir[16]_i_10_n_0 }));
  FDRE \dac_iir_reg[17] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[16]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[17] ),
        .R(clear));
  FDRE \dac_iir_reg[18] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[16]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[18] ),
        .R(clear));
  FDRE \dac_iir_reg[19] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[16]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[19] ),
        .R(clear));
  FDRE \dac_iir_reg[1] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[0]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[1] ),
        .R(clear));
  FDRE \dac_iir_reg[20] 
       (.C(aclk),
        .CE(valid_reg),
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
        .DI({\dac_iir[20]_i_7_n_0 ,\dac_iir[20]_i_8_n_0 ,\dac_iir[20]_i_9_n_0 ,\dac_iir[20]_i_10_n_0 }),
        .O({\dac_iir_reg[20]_i_2_n_4 ,\dac_iir_reg[20]_i_2_n_5 ,\dac_iir_reg[20]_i_2_n_6 ,\dac_iir_reg[20]_i_2_n_7 }),
        .S({\dac_iir[20]_i_11_n_0 ,\dac_iir[20]_i_12_n_0 ,\dac_iir[20]_i_13_n_0 ,\dac_iir[20]_i_14_n_0 }));
  FDRE \dac_iir_reg[21] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[20]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[21] ),
        .R(clear));
  FDRE \dac_iir_reg[22] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[20]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[22] ),
        .R(clear));
  FDRE \dac_iir_reg[23] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[20]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[23] ),
        .R(clear));
  FDRE \dac_iir_reg[24] 
       (.C(aclk),
        .CE(valid_reg),
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
        .DI({1'b0,\dac_iir[24]_i_7_n_0 ,\dac_iir[24]_i_8_n_0 ,\dac_iir[24]_i_9_n_0 }),
        .O({in0,\dac_iir_reg[24]_i_2_n_5 ,\dac_iir_reg[24]_i_2_n_6 ,\dac_iir_reg[24]_i_2_n_7 }),
        .S({\dac_iir[24]_i_10_n_0 ,\dac_iir[24]_i_11_n_0 ,\dac_iir[24]_i_12_n_0 ,\dac_iir[24]_i_13_n_0 }));
  FDRE \dac_iir_reg[25] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[24]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[25] ),
        .R(clear));
  FDRE \dac_iir_reg[26] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[24]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[26] ),
        .R(clear));
  FDRE \dac_iir_reg[27] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[24]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[27] ),
        .R(clear));
  FDRE \dac_iir_reg[28] 
       (.C(aclk),
        .CE(valid_reg),
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
        .CE(valid_reg),
        .D(\dac_iir_reg[28]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[29] ),
        .R(clear));
  FDRE \dac_iir_reg[2] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[0]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[2] ),
        .R(clear));
  FDRE \dac_iir_reg[30] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[28]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[30] ),
        .R(clear));
  FDRE \dac_iir_reg[31] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[28]_i_1_n_4 ),
        .Q(p_0_in0),
        .R(clear));
  FDRE \dac_iir_reg[3] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[0]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[3] ),
        .R(clear));
  FDRE \dac_iir_reg[4] 
       (.C(aclk),
        .CE(valid_reg),
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
        .DI({\sum_reg_reg_n_0_[17] ,\sum_reg_reg_n_0_[16] ,\sum_reg_reg_n_0_[15] ,\sum_reg_reg_n_0_[14] }),
        .O({\dac_iir_reg[4]_i_2_n_4 ,\dac_iir_reg[4]_i_2_n_5 ,\dac_iir_reg[4]_i_2_n_6 ,\dac_iir_reg[4]_i_2_n_7 }),
        .S({\dac_iir[4]_i_7_n_0 ,\dac_iir[4]_i_8_n_0 ,\dac_iir[4]_i_9_n_0 ,\dac_iir[4]_i_10_n_0 }));
  FDRE \dac_iir_reg[5] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[4]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[5] ),
        .R(clear));
  FDRE \dac_iir_reg[6] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[4]_i_1_n_5 ),
        .Q(\dac_iir_reg_n_0_[6] ),
        .R(clear));
  FDRE \dac_iir_reg[7] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[4]_i_1_n_4 ),
        .Q(\dac_iir_reg_n_0_[7] ),
        .R(clear));
  FDRE \dac_iir_reg[8] 
       (.C(aclk),
        .CE(valid_reg),
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
        .DI({\sum_reg_reg_n_0_[21] ,\sum_reg_reg_n_0_[20] ,\sum_reg_reg_n_0_[19] ,\sum_reg_reg_n_0_[18] }),
        .O({\dac_iir_reg[8]_i_2_n_4 ,\dac_iir_reg[8]_i_2_n_5 ,\dac_iir_reg[8]_i_2_n_6 ,\dac_iir_reg[8]_i_2_n_7 }),
        .S({\dac_iir[8]_i_7_n_0 ,\dac_iir[8]_i_8_n_0 ,\dac_iir[8]_i_9_n_0 ,\dac_iir[8]_i_10_n_0 }));
  FDRE \dac_iir_reg[9] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\dac_iir_reg[8]_i_1_n_6 ),
        .Q(\dac_iir_reg_n_0_[9] ),
        .R(clear));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][0]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][0]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[0]),
        .Q(\NLW_delay_line_reg[31][0]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][0]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][10]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][10]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[10]),
        .Q(\NLW_delay_line_reg[31][10]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][10]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][11]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][11]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[11]),
        .Q(\NLW_delay_line_reg[31][11]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][11]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][12]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][12]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[12]),
        .Q(\NLW_delay_line_reg[31][12]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][12]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][13]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][13]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[13]),
        .Q(\NLW_delay_line_reg[31][13]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][13]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][14]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][14]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[14]),
        .Q(\NLW_delay_line_reg[31][14]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][14]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][15]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][15]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[15]),
        .Q(\NLW_delay_line_reg[31][15]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][15]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][16]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][16]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[16]),
        .Q(\NLW_delay_line_reg[31][16]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][16]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][17]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][17]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[17]),
        .Q(\NLW_delay_line_reg[31][17]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][17]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][18]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][18]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[18]),
        .Q(\NLW_delay_line_reg[31][18]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][18]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][19]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][19]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[19]),
        .Q(\NLW_delay_line_reg[31][19]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][19]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][1]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][1]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[1]),
        .Q(\NLW_delay_line_reg[31][1]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][1]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][20]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][20]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[20]),
        .Q(\NLW_delay_line_reg[31][20]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][20]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][21]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][21]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[21]),
        .Q(\NLW_delay_line_reg[31][21]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][21]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][22]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][22]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[22]),
        .Q(\NLW_delay_line_reg[31][22]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][22]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][23]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][23]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[23]),
        .Q(\NLW_delay_line_reg[31][23]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][23]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][2]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][2]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[2]),
        .Q(\NLW_delay_line_reg[31][2]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][2]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][3]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][3]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[3]),
        .Q(\NLW_delay_line_reg[31][3]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][3]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][4]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][4]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[4]),
        .Q(\NLW_delay_line_reg[31][4]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][4]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][5]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][5]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[5]),
        .Q(\NLW_delay_line_reg[31][5]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][5]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][6]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][6]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[6]),
        .Q(\NLW_delay_line_reg[31][6]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][6]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][7]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][7]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[7]),
        .Q(\NLW_delay_line_reg[31][7]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][7]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][8]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][8]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[8]),
        .Q(\NLW_delay_line_reg[31][8]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][8]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[31] " *) 
  (* srl_name = "inst/\delay_line_reg[31][9]_srl32___delay_line_reg_r_30 " *) 
  SRLC32E \delay_line_reg[31][9]_srl32___delay_line_reg_r_30 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(selected_data[9]),
        .Q(\NLW_delay_line_reg[31][9]_srl32___delay_line_reg_r_30_Q_UNCONNECTED ),
        .Q31(\delay_line_reg[31][9]_srl32___delay_line_reg_r_30_n_1 ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][0]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][0]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][0]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][0]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][0]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][10]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][10]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][10]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][10]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][10]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][11]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][11]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][11]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][11]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][11]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][12]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][12]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][12]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][12]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][12]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][13]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][13]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][13]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][13]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][13]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][14]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][14]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][14]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][14]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][14]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][15]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][15]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][15]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][15]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][15]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][16]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][16]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][16]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][16]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][16]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][17]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][17]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][17]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][17]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][17]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][18]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][18]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][18]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][18]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][18]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][19]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][19]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][19]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][19]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][19]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][1]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][1]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][1]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][1]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][1]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][20]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][20]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][20]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][20]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][20]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][21]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][21]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][21]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][21]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][21]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][22]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][22]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][22]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][22]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][22]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][23]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][23]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][23]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][23]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][23]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][2]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][2]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][2]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][2]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][2]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][3]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][3]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][3]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][3]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][3]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][4]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][4]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][4]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][4]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][4]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][5]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][5]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][5]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][5]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][5]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][6]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][6]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][6]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][6]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][6]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][7]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][7]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][7]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][7]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][7]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][8]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][8]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][8]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][8]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][8]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\delay_line_reg[61] " *) 
  (* srl_name = "inst/\delay_line_reg[61][9]_srl30___delay_line_reg_r_60 " *) 
  SRLC32E \delay_line_reg[61][9]_srl30___delay_line_reg_r_60 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(valid_reg),
        .CLK(aclk),
        .D(\delay_line_reg[31][9]_srl32___delay_line_reg_r_30_n_1 ),
        .Q(\delay_line_reg[61][9]_srl30___delay_line_reg_r_60_n_0 ),
        .Q31(\NLW_delay_line_reg[61][9]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED ));
  FDRE \delay_line_reg[62][0]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][0]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][0]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][10]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][10]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][10]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][11]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][11]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][11]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][12]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][12]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][12]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][13]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][13]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][13]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][14]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][14]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][14]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][15]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][15]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][15]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][16]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][16]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][16]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][17]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][17]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][17]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][18]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][18]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][18]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][19]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][19]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][19]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][1]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][1]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][1]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][20]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][20]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][20]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][21]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][21]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][21]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][22]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][22]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][22]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][23]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][23]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][23]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][2]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][2]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][2]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][3]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][3]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][3]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][4]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][4]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][4]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][5]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][5]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][5]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][6]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][6]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][6]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][7]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][7]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][7]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][8]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][8]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][8]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[62][9]_delay_line_reg_r_61 
       (.C(aclk),
        .CE(valid_reg),
        .D(\delay_line_reg[61][9]_srl30___delay_line_reg_r_60_n_0 ),
        .Q(\delay_line_reg[62][9]_delay_line_reg_r_61_n_0 ),
        .R(1'b0));
  FDRE \delay_line_reg[63][0] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__22_n_0),
        .Q(\delay_line_reg[63] [0]),
        .R(clear));
  FDRE \delay_line_reg[63][10] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__12_n_0),
        .Q(\delay_line_reg[63] [10]),
        .R(clear));
  FDRE \delay_line_reg[63][11] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__11_n_0),
        .Q(\delay_line_reg[63] [11]),
        .R(clear));
  FDRE \delay_line_reg[63][12] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__10_n_0),
        .Q(\delay_line_reg[63] [12]),
        .R(clear));
  FDRE \delay_line_reg[63][13] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__9_n_0),
        .Q(\delay_line_reg[63] [13]),
        .R(clear));
  FDRE \delay_line_reg[63][14] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__8_n_0),
        .Q(\delay_line_reg[63] [14]),
        .R(clear));
  FDRE \delay_line_reg[63][15] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__7_n_0),
        .Q(\delay_line_reg[63] [15]),
        .R(clear));
  FDRE \delay_line_reg[63][16] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__6_n_0),
        .Q(\delay_line_reg[63] [16]),
        .R(clear));
  FDRE \delay_line_reg[63][17] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__5_n_0),
        .Q(\delay_line_reg[63] [17]),
        .R(clear));
  FDRE \delay_line_reg[63][18] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__4_n_0),
        .Q(\delay_line_reg[63] [18]),
        .R(clear));
  FDRE \delay_line_reg[63][19] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__3_n_0),
        .Q(\delay_line_reg[63] [19]),
        .R(clear));
  FDRE \delay_line_reg[63][1] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__21_n_0),
        .Q(\delay_line_reg[63] [1]),
        .R(clear));
  FDRE \delay_line_reg[63][20] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__2_n_0),
        .Q(\delay_line_reg[63] [20]),
        .R(clear));
  FDRE \delay_line_reg[63][21] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__1_n_0),
        .Q(\delay_line_reg[63] [21]),
        .R(clear));
  FDRE \delay_line_reg[63][22] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__0_n_0),
        .Q(\delay_line_reg[63] [22]),
        .R(clear));
  FDRE \delay_line_reg[63][23] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate_n_0),
        .Q(\delay_line_reg[63] [23]),
        .R(clear));
  FDRE \delay_line_reg[63][2] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__20_n_0),
        .Q(\delay_line_reg[63] [2]),
        .R(clear));
  FDRE \delay_line_reg[63][3] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__19_n_0),
        .Q(\delay_line_reg[63] [3]),
        .R(clear));
  FDRE \delay_line_reg[63][4] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__18_n_0),
        .Q(\delay_line_reg[63] [4]),
        .R(clear));
  FDRE \delay_line_reg[63][5] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__17_n_0),
        .Q(\delay_line_reg[63] [5]),
        .R(clear));
  FDRE \delay_line_reg[63][6] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__16_n_0),
        .Q(\delay_line_reg[63] [6]),
        .R(clear));
  FDRE \delay_line_reg[63][7] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__15_n_0),
        .Q(\delay_line_reg[63] [7]),
        .R(clear));
  FDRE \delay_line_reg[63][8] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__14_n_0),
        .Q(\delay_line_reg[63] [8]),
        .R(clear));
  FDRE \delay_line_reg[63][9] 
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_gate__13_n_0),
        .Q(\delay_line_reg[63] [9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate
       (.I0(\delay_line_reg[62][23]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__0
       (.I0(\delay_line_reg[62][22]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__1
       (.I0(\delay_line_reg[62][21]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__10
       (.I0(\delay_line_reg[62][12]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__11
       (.I0(\delay_line_reg[62][11]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__12
       (.I0(\delay_line_reg[62][10]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__13
       (.I0(\delay_line_reg[62][9]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__14
       (.I0(\delay_line_reg[62][8]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__15
       (.I0(\delay_line_reg[62][7]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__16
       (.I0(\delay_line_reg[62][6]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__17
       (.I0(\delay_line_reg[62][5]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__18
       (.I0(\delay_line_reg[62][4]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__19
       (.I0(\delay_line_reg[62][3]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__2
       (.I0(\delay_line_reg[62][20]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__20
       (.I0(\delay_line_reg[62][2]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__21
       (.I0(\delay_line_reg[62][1]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__22
       (.I0(\delay_line_reg[62][0]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__3
       (.I0(\delay_line_reg[62][19]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__4
       (.I0(\delay_line_reg[62][18]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__5
       (.I0(\delay_line_reg[62][17]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__6
       (.I0(\delay_line_reg[62][16]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__7
       (.I0(\delay_line_reg[62][15]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__8
       (.I0(\delay_line_reg[62][14]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_line_reg_gate__9
       (.I0(\delay_line_reg[62][13]_delay_line_reg_r_61_n_0 ),
        .I1(delay_line_reg_r_61_n_0),
        .O(delay_line_reg_gate__9_n_0));
  FDRE delay_line_reg_r
       (.C(aclk),
        .CE(valid_reg),
        .D(1'b1),
        .Q(delay_line_reg_r_n_0),
        .R(clear));
  FDRE delay_line_reg_r_0
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_n_0),
        .Q(delay_line_reg_r_0_n_0),
        .R(clear));
  FDRE delay_line_reg_r_1
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_0_n_0),
        .Q(delay_line_reg_r_1_n_0),
        .R(clear));
  FDRE delay_line_reg_r_10
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_9_n_0),
        .Q(delay_line_reg_r_10_n_0),
        .R(clear));
  FDRE delay_line_reg_r_11
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_10_n_0),
        .Q(delay_line_reg_r_11_n_0),
        .R(clear));
  FDRE delay_line_reg_r_12
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_11_n_0),
        .Q(delay_line_reg_r_12_n_0),
        .R(clear));
  FDRE delay_line_reg_r_13
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_12_n_0),
        .Q(delay_line_reg_r_13_n_0),
        .R(clear));
  FDRE delay_line_reg_r_14
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_13_n_0),
        .Q(delay_line_reg_r_14_n_0),
        .R(clear));
  FDRE delay_line_reg_r_15
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_14_n_0),
        .Q(delay_line_reg_r_15_n_0),
        .R(clear));
  FDRE delay_line_reg_r_16
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_15_n_0),
        .Q(delay_line_reg_r_16_n_0),
        .R(clear));
  FDRE delay_line_reg_r_17
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_16_n_0),
        .Q(delay_line_reg_r_17_n_0),
        .R(clear));
  FDRE delay_line_reg_r_18
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_17_n_0),
        .Q(delay_line_reg_r_18_n_0),
        .R(clear));
  FDRE delay_line_reg_r_19
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_18_n_0),
        .Q(delay_line_reg_r_19_n_0),
        .R(clear));
  FDRE delay_line_reg_r_2
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_1_n_0),
        .Q(delay_line_reg_r_2_n_0),
        .R(clear));
  FDRE delay_line_reg_r_20
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_19_n_0),
        .Q(delay_line_reg_r_20_n_0),
        .R(clear));
  FDRE delay_line_reg_r_21
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_20_n_0),
        .Q(delay_line_reg_r_21_n_0),
        .R(clear));
  FDRE delay_line_reg_r_22
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_21_n_0),
        .Q(delay_line_reg_r_22_n_0),
        .R(clear));
  FDRE delay_line_reg_r_23
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_22_n_0),
        .Q(delay_line_reg_r_23_n_0),
        .R(clear));
  FDRE delay_line_reg_r_24
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_23_n_0),
        .Q(delay_line_reg_r_24_n_0),
        .R(clear));
  FDRE delay_line_reg_r_25
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_24_n_0),
        .Q(delay_line_reg_r_25_n_0),
        .R(clear));
  FDRE delay_line_reg_r_26
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_25_n_0),
        .Q(delay_line_reg_r_26_n_0),
        .R(clear));
  FDRE delay_line_reg_r_27
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_26_n_0),
        .Q(delay_line_reg_r_27_n_0),
        .R(clear));
  FDRE delay_line_reg_r_28
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_27_n_0),
        .Q(delay_line_reg_r_28_n_0),
        .R(clear));
  FDRE delay_line_reg_r_29
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_28_n_0),
        .Q(delay_line_reg_r_29_n_0),
        .R(clear));
  FDRE delay_line_reg_r_3
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_2_n_0),
        .Q(delay_line_reg_r_3_n_0),
        .R(clear));
  FDRE delay_line_reg_r_30
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_29_n_0),
        .Q(delay_line_reg_r_30_n_0),
        .R(clear));
  FDRE delay_line_reg_r_31
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_30_n_0),
        .Q(delay_line_reg_r_31_n_0),
        .R(clear));
  FDRE delay_line_reg_r_32
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_31_n_0),
        .Q(delay_line_reg_r_32_n_0),
        .R(clear));
  FDRE delay_line_reg_r_33
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_32_n_0),
        .Q(delay_line_reg_r_33_n_0),
        .R(clear));
  FDRE delay_line_reg_r_34
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_33_n_0),
        .Q(delay_line_reg_r_34_n_0),
        .R(clear));
  FDRE delay_line_reg_r_35
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_34_n_0),
        .Q(delay_line_reg_r_35_n_0),
        .R(clear));
  FDRE delay_line_reg_r_36
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_35_n_0),
        .Q(delay_line_reg_r_36_n_0),
        .R(clear));
  FDRE delay_line_reg_r_37
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_36_n_0),
        .Q(delay_line_reg_r_37_n_0),
        .R(clear));
  FDRE delay_line_reg_r_38
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_37_n_0),
        .Q(delay_line_reg_r_38_n_0),
        .R(clear));
  FDRE delay_line_reg_r_39
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_38_n_0),
        .Q(delay_line_reg_r_39_n_0),
        .R(clear));
  FDRE delay_line_reg_r_4
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_3_n_0),
        .Q(delay_line_reg_r_4_n_0),
        .R(clear));
  FDRE delay_line_reg_r_40
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_39_n_0),
        .Q(delay_line_reg_r_40_n_0),
        .R(clear));
  FDRE delay_line_reg_r_41
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_40_n_0),
        .Q(delay_line_reg_r_41_n_0),
        .R(clear));
  FDRE delay_line_reg_r_42
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_41_n_0),
        .Q(delay_line_reg_r_42_n_0),
        .R(clear));
  FDRE delay_line_reg_r_43
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_42_n_0),
        .Q(delay_line_reg_r_43_n_0),
        .R(clear));
  FDRE delay_line_reg_r_44
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_43_n_0),
        .Q(delay_line_reg_r_44_n_0),
        .R(clear));
  FDRE delay_line_reg_r_45
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_44_n_0),
        .Q(delay_line_reg_r_45_n_0),
        .R(clear));
  FDRE delay_line_reg_r_46
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_45_n_0),
        .Q(delay_line_reg_r_46_n_0),
        .R(clear));
  FDRE delay_line_reg_r_47
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_46_n_0),
        .Q(delay_line_reg_r_47_n_0),
        .R(clear));
  FDRE delay_line_reg_r_48
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_47_n_0),
        .Q(delay_line_reg_r_48_n_0),
        .R(clear));
  FDRE delay_line_reg_r_49
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_48_n_0),
        .Q(delay_line_reg_r_49_n_0),
        .R(clear));
  FDRE delay_line_reg_r_5
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_4_n_0),
        .Q(delay_line_reg_r_5_n_0),
        .R(clear));
  FDRE delay_line_reg_r_50
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_49_n_0),
        .Q(delay_line_reg_r_50_n_0),
        .R(clear));
  FDRE delay_line_reg_r_51
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_50_n_0),
        .Q(delay_line_reg_r_51_n_0),
        .R(clear));
  FDRE delay_line_reg_r_52
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_51_n_0),
        .Q(delay_line_reg_r_52_n_0),
        .R(clear));
  FDRE delay_line_reg_r_53
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_52_n_0),
        .Q(delay_line_reg_r_53_n_0),
        .R(clear));
  FDRE delay_line_reg_r_54
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_53_n_0),
        .Q(delay_line_reg_r_54_n_0),
        .R(clear));
  FDRE delay_line_reg_r_55
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_54_n_0),
        .Q(delay_line_reg_r_55_n_0),
        .R(clear));
  FDRE delay_line_reg_r_56
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_55_n_0),
        .Q(delay_line_reg_r_56_n_0),
        .R(clear));
  FDRE delay_line_reg_r_57
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_56_n_0),
        .Q(delay_line_reg_r_57_n_0),
        .R(clear));
  FDRE delay_line_reg_r_58
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_57_n_0),
        .Q(delay_line_reg_r_58_n_0),
        .R(clear));
  FDRE delay_line_reg_r_59
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_58_n_0),
        .Q(delay_line_reg_r_59_n_0),
        .R(clear));
  FDRE delay_line_reg_r_6
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_5_n_0),
        .Q(delay_line_reg_r_6_n_0),
        .R(clear));
  FDRE delay_line_reg_r_60
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_59_n_0),
        .Q(delay_line_reg_r_60_n_0),
        .R(clear));
  FDRE delay_line_reg_r_61
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_60_n_0),
        .Q(delay_line_reg_r_61_n_0),
        .R(clear));
  FDRE delay_line_reg_r_7
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_6_n_0),
        .Q(delay_line_reg_r_7_n_0),
        .R(clear));
  FDRE delay_line_reg_r_8
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_7_n_0),
        .Q(delay_line_reg_r_8_n_0),
        .R(clear));
  FDRE delay_line_reg_r_9
       (.C(aclk),
        .CE(valid_reg),
        .D(delay_line_reg_r_8_n_0),
        .Q(delay_line_reg_r_9_n_0),
        .R(clear));
  LUT6 #(
    .INIT(64'hB030FFFFFFFFFFFF)) 
    frame_accepting_samples_i_1
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(valid_reg),
        .I2(frame_accepting_samples_reg_n_0),
        .I3(axis_data_fifo_reg_0_15_30_31_i_2_n_0),
        .I4(aresetn),
        .I5(capture_enable_sync),
        .O(frame_accepting_samples_i_1_n_0));
  FDRE frame_accepting_samples_reg
       (.C(aclk),
        .CE(1'b1),
        .D(frame_accepting_samples_i_1_n_0),
        .Q(frame_accepting_samples_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_sample_count[0]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(\frame_sample_count_reg_n_0_[0] ),
        .O(\frame_sample_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[10]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[10]),
        .O(frame_sample_count[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[11]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[11]),
        .O(frame_sample_count[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[1]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[1]),
        .O(frame_sample_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[2]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[2]),
        .O(frame_sample_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[3]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[3]),
        .O(frame_sample_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[4]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[4]),
        .O(frame_sample_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[5]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[5]),
        .O(frame_sample_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[6]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[6]),
        .O(frame_sample_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[7]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[7]),
        .O(frame_sample_count[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[8]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[8]),
        .O(frame_sample_count[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame_sample_count[9]_i_1 
       (.I0(axis_last_fifo_reg_0_15_0_0_i_2_n_0),
        .I1(data0[9]),
        .O(frame_sample_count[9]));
  FDRE \frame_sample_count_reg[0] 
       (.C(aclk),
        .CE(axis_push),
        .D(\frame_sample_count[0]_i_1_n_0 ),
        .Q(\frame_sample_count_reg_n_0_[0] ),
        .R(pointer0));
  FDRE \frame_sample_count_reg[10] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[10]),
        .Q(\frame_sample_count_reg_n_0_[10] ),
        .R(pointer0));
  FDRE \frame_sample_count_reg[11] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[11]),
        .Q(\frame_sample_count_reg_n_0_[11] ),
        .R(pointer0));
  CARRY4 \frame_sample_count_reg[11]_i_2 
       (.CI(\frame_sample_count_reg[8]_i_2_n_0 ),
        .CO({\NLW_frame_sample_count_reg[11]_i_2_CO_UNCONNECTED [3:2],\frame_sample_count_reg[11]_i_2_n_2 ,\frame_sample_count_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_frame_sample_count_reg[11]_i_2_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,\frame_sample_count_reg_n_0_[11] ,\frame_sample_count_reg_n_0_[10] ,\frame_sample_count_reg_n_0_[9] }));
  FDRE \frame_sample_count_reg[1] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[1]),
        .Q(\frame_sample_count_reg_n_0_[1] ),
        .R(pointer0));
  FDRE \frame_sample_count_reg[2] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[2]),
        .Q(\frame_sample_count_reg_n_0_[2] ),
        .R(pointer0));
  FDRE \frame_sample_count_reg[3] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[3]),
        .Q(\frame_sample_count_reg_n_0_[3] ),
        .R(pointer0));
  FDRE \frame_sample_count_reg[4] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[4]),
        .Q(\frame_sample_count_reg_n_0_[4] ),
        .R(pointer0));
  CARRY4 \frame_sample_count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\frame_sample_count_reg[4]_i_2_n_0 ,\frame_sample_count_reg[4]_i_2_n_1 ,\frame_sample_count_reg[4]_i_2_n_2 ,\frame_sample_count_reg[4]_i_2_n_3 }),
        .CYINIT(\frame_sample_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\frame_sample_count_reg_n_0_[4] ,\frame_sample_count_reg_n_0_[3] ,\frame_sample_count_reg_n_0_[2] ,\frame_sample_count_reg_n_0_[1] }));
  FDRE \frame_sample_count_reg[5] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[5]),
        .Q(\frame_sample_count_reg_n_0_[5] ),
        .R(pointer0));
  FDRE \frame_sample_count_reg[6] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[6]),
        .Q(\frame_sample_count_reg_n_0_[6] ),
        .R(pointer0));
  FDRE \frame_sample_count_reg[7] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[7]),
        .Q(\frame_sample_count_reg_n_0_[7] ),
        .R(pointer0));
  FDRE \frame_sample_count_reg[8] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[8]),
        .Q(\frame_sample_count_reg_n_0_[8] ),
        .R(pointer0));
  CARRY4 \frame_sample_count_reg[8]_i_2 
       (.CI(\frame_sample_count_reg[4]_i_2_n_0 ),
        .CO({\frame_sample_count_reg[8]_i_2_n_0 ,\frame_sample_count_reg[8]_i_2_n_1 ,\frame_sample_count_reg[8]_i_2_n_2 ,\frame_sample_count_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\frame_sample_count_reg_n_0_[8] ,\frame_sample_count_reg_n_0_[7] ,\frame_sample_count_reg_n_0_[6] ,\frame_sample_count_reg_n_0_[5] }));
  FDRE \frame_sample_count_reg[9] 
       (.C(aclk),
        .CE(axis_push),
        .D(frame_sample_count[9]),
        .Q(\frame_sample_count_reg_n_0_[9] ),
        .R(pointer0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m_axis_tvalid_INST_0
       (.I0(axis_fifo_level[1]),
        .I1(axis_fifo_level[2]),
        .I2(axis_fifo_level[0]),
        .I3(axis_fifo_level[3]),
        .I4(axis_fifo_level[4]),
        .O(m_axis_tvalid));
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
    .INIT(32'h00AAACC0)) 
    \selected_data[0]_i_1 
       (.I0(dphi_out[0]),
        .I1(mag_out[0]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[10]_i_1 
       (.I0(dphi_out[10]),
        .I1(mag_out[10]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[11]_i_1 
       (.I0(dphi_out[11]),
        .I1(mag_out[11]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[12]_i_1 
       (.I0(dphi_out[12]),
        .I1(mag_out[12]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[13]_i_1 
       (.I0(dphi_out[13]),
        .I1(mag_out[13]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[14]_i_1 
       (.I0(dphi_out[14]),
        .I1(mag_out[14]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[15]_i_1 
       (.I0(dphi_out[15]),
        .I1(mag_out[15]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[16]_i_1 
       (.I0(dphi_out[16]),
        .I1(mag_out[16]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[17]_i_1 
       (.I0(dphi_out[17]),
        .I1(mag_out[17]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[18]_i_1 
       (.I0(dphi_out[18]),
        .I1(mag_out[18]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[19]_i_1 
       (.I0(dphi_out[19]),
        .I1(mag_out[19]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[1]_i_1 
       (.I0(dphi_out[1]),
        .I1(mag_out[1]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[20]_i_1 
       (.I0(dphi_out[20]),
        .I1(mag_out[20]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[21]_i_1 
       (.I0(dphi_out[21]),
        .I1(mag_out[21]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[22]_i_1 
       (.I0(dphi_out[22]),
        .I1(mag_out[22]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6200)) 
    \selected_data[23]_i_1 
       (.I0(mux_sel[1]),
        .I1(mux_sel[0]),
        .I2(mux_sel[2]),
        .I3(dphi_out[23]),
        .O(\selected_data[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[2]_i_1 
       (.I0(dphi_out[2]),
        .I1(mag_out[2]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[3]_i_1 
       (.I0(dphi_out[3]),
        .I1(mag_out[3]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[4]_i_1 
       (.I0(dphi_out[4]),
        .I1(mag_out[4]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[5]_i_1 
       (.I0(dphi_out[5]),
        .I1(mag_out[5]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[6]_i_1 
       (.I0(dphi_out[6]),
        .I1(mag_out[6]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[7]_i_1 
       (.I0(dphi_out[7]),
        .I1(mag_out[7]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[8]_i_1 
       (.I0(dphi_out[8]),
        .I1(mag_out[8]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
        .O(\selected_data[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAACC0)) 
    \selected_data[9]_i_1 
       (.I0(dphi_out[9]),
        .I1(mag_out[9]),
        .I2(mux_sel[2]),
        .I3(mux_sel[0]),
        .I4(mux_sel[1]),
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
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[11]_i_2 
       (.I0(\delay_line_reg[63] [10]),
        .I1(\sum_reg_reg_n_0_[10] ),
        .I2(selected_data[10]),
        .O(\sum_reg[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[11]_i_3 
       (.I0(\delay_line_reg[63] [9]),
        .I1(\sum_reg_reg_n_0_[9] ),
        .I2(selected_data[9]),
        .O(\sum_reg[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[11]_i_4 
       (.I0(\delay_line_reg[63] [8]),
        .I1(\sum_reg_reg_n_0_[8] ),
        .I2(selected_data[8]),
        .O(\sum_reg[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[11]_i_5 
       (.I0(\delay_line_reg[63] [7]),
        .I1(\sum_reg_reg_n_0_[7] ),
        .I2(selected_data[7]),
        .O(\sum_reg[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[11]_i_6 
       (.I0(selected_data[10]),
        .I1(\sum_reg_reg_n_0_[10] ),
        .I2(\delay_line_reg[63] [10]),
        .I3(\delay_line_reg[63] [11]),
        .I4(selected_data[11]),
        .I5(\sum_reg_reg_n_0_[11] ),
        .O(\sum_reg[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[11]_i_7 
       (.I0(selected_data[9]),
        .I1(\sum_reg_reg_n_0_[9] ),
        .I2(\delay_line_reg[63] [9]),
        .I3(\delay_line_reg[63] [10]),
        .I4(selected_data[10]),
        .I5(\sum_reg_reg_n_0_[10] ),
        .O(\sum_reg[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[11]_i_8 
       (.I0(selected_data[8]),
        .I1(\sum_reg_reg_n_0_[8] ),
        .I2(\delay_line_reg[63] [8]),
        .I3(\delay_line_reg[63] [9]),
        .I4(selected_data[9]),
        .I5(\sum_reg_reg_n_0_[9] ),
        .O(\sum_reg[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[11]_i_9 
       (.I0(selected_data[7]),
        .I1(\sum_reg_reg_n_0_[7] ),
        .I2(\delay_line_reg[63] [7]),
        .I3(\delay_line_reg[63] [8]),
        .I4(selected_data[8]),
        .I5(\sum_reg_reg_n_0_[8] ),
        .O(\sum_reg[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[15]_i_2 
       (.I0(\delay_line_reg[63] [14]),
        .I1(\sum_reg_reg_n_0_[14] ),
        .I2(selected_data[14]),
        .O(\sum_reg[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[15]_i_3 
       (.I0(\delay_line_reg[63] [13]),
        .I1(\sum_reg_reg_n_0_[13] ),
        .I2(selected_data[13]),
        .O(\sum_reg[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[15]_i_4 
       (.I0(\delay_line_reg[63] [12]),
        .I1(\sum_reg_reg_n_0_[12] ),
        .I2(selected_data[12]),
        .O(\sum_reg[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[15]_i_5 
       (.I0(\delay_line_reg[63] [11]),
        .I1(\sum_reg_reg_n_0_[11] ),
        .I2(selected_data[11]),
        .O(\sum_reg[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[15]_i_6 
       (.I0(selected_data[14]),
        .I1(\sum_reg_reg_n_0_[14] ),
        .I2(\delay_line_reg[63] [14]),
        .I3(\delay_line_reg[63] [15]),
        .I4(selected_data[15]),
        .I5(\sum_reg_reg_n_0_[15] ),
        .O(\sum_reg[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[15]_i_7 
       (.I0(selected_data[13]),
        .I1(\sum_reg_reg_n_0_[13] ),
        .I2(\delay_line_reg[63] [13]),
        .I3(\delay_line_reg[63] [14]),
        .I4(selected_data[14]),
        .I5(\sum_reg_reg_n_0_[14] ),
        .O(\sum_reg[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[15]_i_8 
       (.I0(selected_data[12]),
        .I1(\sum_reg_reg_n_0_[12] ),
        .I2(\delay_line_reg[63] [12]),
        .I3(\delay_line_reg[63] [13]),
        .I4(selected_data[13]),
        .I5(\sum_reg_reg_n_0_[13] ),
        .O(\sum_reg[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[15]_i_9 
       (.I0(selected_data[11]),
        .I1(\sum_reg_reg_n_0_[11] ),
        .I2(\delay_line_reg[63] [11]),
        .I3(\delay_line_reg[63] [12]),
        .I4(selected_data[12]),
        .I5(\sum_reg_reg_n_0_[12] ),
        .O(\sum_reg[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[19]_i_2 
       (.I0(\delay_line_reg[63] [18]),
        .I1(\sum_reg_reg_n_0_[18] ),
        .I2(selected_data[18]),
        .O(\sum_reg[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[19]_i_3 
       (.I0(\delay_line_reg[63] [17]),
        .I1(\sum_reg_reg_n_0_[17] ),
        .I2(selected_data[17]),
        .O(\sum_reg[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[19]_i_4 
       (.I0(\delay_line_reg[63] [16]),
        .I1(\sum_reg_reg_n_0_[16] ),
        .I2(selected_data[16]),
        .O(\sum_reg[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[19]_i_5 
       (.I0(\delay_line_reg[63] [15]),
        .I1(\sum_reg_reg_n_0_[15] ),
        .I2(selected_data[15]),
        .O(\sum_reg[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[19]_i_6 
       (.I0(selected_data[18]),
        .I1(\sum_reg_reg_n_0_[18] ),
        .I2(\delay_line_reg[63] [18]),
        .I3(\delay_line_reg[63] [19]),
        .I4(selected_data[19]),
        .I5(\sum_reg_reg_n_0_[19] ),
        .O(\sum_reg[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[19]_i_7 
       (.I0(selected_data[17]),
        .I1(\sum_reg_reg_n_0_[17] ),
        .I2(\delay_line_reg[63] [17]),
        .I3(\delay_line_reg[63] [18]),
        .I4(selected_data[18]),
        .I5(\sum_reg_reg_n_0_[18] ),
        .O(\sum_reg[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[19]_i_8 
       (.I0(selected_data[16]),
        .I1(\sum_reg_reg_n_0_[16] ),
        .I2(\delay_line_reg[63] [16]),
        .I3(\delay_line_reg[63] [17]),
        .I4(selected_data[17]),
        .I5(\sum_reg_reg_n_0_[17] ),
        .O(\sum_reg[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[19]_i_9 
       (.I0(selected_data[15]),
        .I1(\sum_reg_reg_n_0_[15] ),
        .I2(\delay_line_reg[63] [15]),
        .I3(\delay_line_reg[63] [16]),
        .I4(selected_data[16]),
        .I5(\sum_reg_reg_n_0_[16] ),
        .O(\sum_reg[19]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[23]_i_2 
       (.I0(\delay_line_reg[63] [22]),
        .I1(\sum_reg_reg_n_0_[22] ),
        .I2(selected_data[22]),
        .O(\sum_reg[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[23]_i_3 
       (.I0(\delay_line_reg[63] [21]),
        .I1(\sum_reg_reg_n_0_[21] ),
        .I2(selected_data[21]),
        .O(\sum_reg[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[23]_i_4 
       (.I0(\delay_line_reg[63] [20]),
        .I1(\sum_reg_reg_n_0_[20] ),
        .I2(selected_data[20]),
        .O(\sum_reg[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[23]_i_5 
       (.I0(\delay_line_reg[63] [19]),
        .I1(\sum_reg_reg_n_0_[19] ),
        .I2(selected_data[19]),
        .O(\sum_reg[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[23]_i_6 
       (.I0(selected_data[22]),
        .I1(\sum_reg_reg_n_0_[22] ),
        .I2(\delay_line_reg[63] [22]),
        .I3(\delay_line_reg[63] [23]),
        .I4(selected_data[23]),
        .I5(\sum_reg_reg_n_0_[23] ),
        .O(\sum_reg[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[23]_i_7 
       (.I0(selected_data[21]),
        .I1(\sum_reg_reg_n_0_[21] ),
        .I2(\delay_line_reg[63] [21]),
        .I3(\delay_line_reg[63] [22]),
        .I4(selected_data[22]),
        .I5(\sum_reg_reg_n_0_[22] ),
        .O(\sum_reg[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[23]_i_8 
       (.I0(selected_data[20]),
        .I1(\sum_reg_reg_n_0_[20] ),
        .I2(\delay_line_reg[63] [20]),
        .I3(\delay_line_reg[63] [21]),
        .I4(selected_data[21]),
        .I5(\sum_reg_reg_n_0_[21] ),
        .O(\sum_reg[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[23]_i_9 
       (.I0(selected_data[19]),
        .I1(\sum_reg_reg_n_0_[19] ),
        .I2(\delay_line_reg[63] [19]),
        .I3(\delay_line_reg[63] [20]),
        .I4(selected_data[20]),
        .I5(\sum_reg_reg_n_0_[20] ),
        .O(\sum_reg[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \sum_reg[27]_i_2 
       (.I0(\delay_line_reg[63] [23]),
        .I1(selected_data[23]),
        .I2(\sum_reg_reg_n_0_[23] ),
        .O(\sum_reg[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[27]_i_3 
       (.I0(\sum_reg_reg_n_0_[26] ),
        .I1(\sum_reg_reg_n_0_[27] ),
        .O(\sum_reg[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[27]_i_4 
       (.I0(\sum_reg_reg_n_0_[25] ),
        .I1(\sum_reg_reg_n_0_[26] ),
        .O(\sum_reg[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[27]_i_5 
       (.I0(\sum_reg_reg_n_0_[24] ),
        .I1(\sum_reg_reg_n_0_[25] ),
        .O(\sum_reg[27]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB24D)) 
    \sum_reg[27]_i_6 
       (.I0(\sum_reg_reg_n_0_[23] ),
        .I1(selected_data[23]),
        .I2(\delay_line_reg[63] [23]),
        .I3(\sum_reg_reg_n_0_[24] ),
        .O(\sum_reg[27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[29]_i_2 
       (.I0(\sum_reg_reg_n_0_[28] ),
        .I1(lpf_data_320),
        .O(\sum_reg[29]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[29]_i_3 
       (.I0(\sum_reg_reg_n_0_[27] ),
        .I1(\sum_reg_reg_n_0_[28] ),
        .O(\sum_reg[29]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[3]_i_2 
       (.I0(\delay_line_reg[63] [2]),
        .I1(\sum_reg_reg_n_0_[2] ),
        .I2(selected_data[2]),
        .O(\sum_reg[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[3]_i_3 
       (.I0(\delay_line_reg[63] [1]),
        .I1(\sum_reg_reg_n_0_[1] ),
        .I2(selected_data[1]),
        .O(\sum_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sum_reg[3]_i_4 
       (.I0(selected_data[0]),
        .I1(\sum_reg_reg_n_0_[0] ),
        .O(\sum_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg[3]_i_5 
       (.I0(selected_data[0]),
        .I1(\sum_reg_reg_n_0_[0] ),
        .O(\sum_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[3]_i_6 
       (.I0(selected_data[2]),
        .I1(\sum_reg_reg_n_0_[2] ),
        .I2(\delay_line_reg[63] [2]),
        .I3(\delay_line_reg[63] [3]),
        .I4(selected_data[3]),
        .I5(\sum_reg_reg_n_0_[3] ),
        .O(\sum_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[3]_i_7 
       (.I0(selected_data[1]),
        .I1(\sum_reg_reg_n_0_[1] ),
        .I2(\delay_line_reg[63] [1]),
        .I3(\delay_line_reg[63] [2]),
        .I4(selected_data[2]),
        .I5(\sum_reg_reg_n_0_[2] ),
        .O(\sum_reg[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \sum_reg[3]_i_8 
       (.I0(\sum_reg_reg_n_0_[0] ),
        .I1(selected_data[0]),
        .I2(\delay_line_reg[63] [1]),
        .I3(selected_data[1]),
        .I4(\sum_reg_reg_n_0_[1] ),
        .O(\sum_reg[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_reg[3]_i_9 
       (.I0(\sum_reg_reg_n_0_[0] ),
        .I1(selected_data[0]),
        .I2(\delay_line_reg[63] [0]),
        .O(\sum_reg[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[7]_i_2 
       (.I0(\delay_line_reg[63] [6]),
        .I1(\sum_reg_reg_n_0_[6] ),
        .I2(selected_data[6]),
        .O(\sum_reg[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[7]_i_3 
       (.I0(\delay_line_reg[63] [5]),
        .I1(\sum_reg_reg_n_0_[5] ),
        .I2(selected_data[5]),
        .O(\sum_reg[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[7]_i_4 
       (.I0(\delay_line_reg[63] [4]),
        .I1(\sum_reg_reg_n_0_[4] ),
        .I2(selected_data[4]),
        .O(\sum_reg[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \sum_reg[7]_i_5 
       (.I0(\delay_line_reg[63] [3]),
        .I1(\sum_reg_reg_n_0_[3] ),
        .I2(selected_data[3]),
        .O(\sum_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[7]_i_6 
       (.I0(selected_data[6]),
        .I1(\sum_reg_reg_n_0_[6] ),
        .I2(\delay_line_reg[63] [6]),
        .I3(\delay_line_reg[63] [7]),
        .I4(selected_data[7]),
        .I5(\sum_reg_reg_n_0_[7] ),
        .O(\sum_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[7]_i_7 
       (.I0(selected_data[5]),
        .I1(\sum_reg_reg_n_0_[5] ),
        .I2(\delay_line_reg[63] [5]),
        .I3(\delay_line_reg[63] [6]),
        .I4(selected_data[6]),
        .I5(\sum_reg_reg_n_0_[6] ),
        .O(\sum_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[7]_i_8 
       (.I0(selected_data[4]),
        .I1(\sum_reg_reg_n_0_[4] ),
        .I2(\delay_line_reg[63] [4]),
        .I3(\delay_line_reg[63] [5]),
        .I4(selected_data[5]),
        .I5(\sum_reg_reg_n_0_[5] ),
        .O(\sum_reg[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \sum_reg[7]_i_9 
       (.I0(selected_data[3]),
        .I1(\sum_reg_reg_n_0_[3] ),
        .I2(\delay_line_reg[63] [3]),
        .I3(\delay_line_reg[63] [4]),
        .I4(selected_data[4]),
        .I5(\sum_reg_reg_n_0_[4] ),
        .O(\sum_reg[7]_i_9_n_0 ));
  FDRE \sum_reg_reg[0] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[3]_i_1_n_7 ),
        .Q(\sum_reg_reg_n_0_[0] ),
        .R(clear));
  FDRE \sum_reg_reg[10] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[11]_i_1_n_5 ),
        .Q(\sum_reg_reg_n_0_[10] ),
        .R(clear));
  FDRE \sum_reg_reg[11] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[11]_i_1_n_4 ),
        .Q(\sum_reg_reg_n_0_[11] ),
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
        .CE(valid_reg),
        .D(\sum_reg_reg[15]_i_1_n_7 ),
        .Q(\sum_reg_reg_n_0_[12] ),
        .R(clear));
  FDRE \sum_reg_reg[13] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[15]_i_1_n_6 ),
        .Q(\sum_reg_reg_n_0_[13] ),
        .R(clear));
  FDRE \sum_reg_reg[14] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[15]_i_1_n_5 ),
        .Q(\sum_reg_reg_n_0_[14] ),
        .R(clear));
  FDRE \sum_reg_reg[15] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[15]_i_1_n_4 ),
        .Q(\sum_reg_reg_n_0_[15] ),
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
        .CE(valid_reg),
        .D(\sum_reg_reg[19]_i_1_n_7 ),
        .Q(\sum_reg_reg_n_0_[16] ),
        .R(clear));
  FDRE \sum_reg_reg[17] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[19]_i_1_n_6 ),
        .Q(\sum_reg_reg_n_0_[17] ),
        .R(clear));
  FDRE \sum_reg_reg[18] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[19]_i_1_n_5 ),
        .Q(\sum_reg_reg_n_0_[18] ),
        .R(clear));
  FDRE \sum_reg_reg[19] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[19]_i_1_n_4 ),
        .Q(\sum_reg_reg_n_0_[19] ),
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
        .CE(valid_reg),
        .D(\sum_reg_reg[3]_i_1_n_6 ),
        .Q(\sum_reg_reg_n_0_[1] ),
        .R(clear));
  FDRE \sum_reg_reg[20] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[23]_i_1_n_7 ),
        .Q(\sum_reg_reg_n_0_[20] ),
        .R(clear));
  FDRE \sum_reg_reg[21] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[23]_i_1_n_6 ),
        .Q(\sum_reg_reg_n_0_[21] ),
        .R(clear));
  FDRE \sum_reg_reg[22] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[23]_i_1_n_5 ),
        .Q(\sum_reg_reg_n_0_[22] ),
        .R(clear));
  FDRE \sum_reg_reg[23] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[23]_i_1_n_4 ),
        .Q(\sum_reg_reg_n_0_[23] ),
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
        .CE(valid_reg),
        .D(\sum_reg_reg[27]_i_1_n_7 ),
        .Q(\sum_reg_reg_n_0_[24] ),
        .R(clear));
  FDRE \sum_reg_reg[25] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[27]_i_1_n_6 ),
        .Q(\sum_reg_reg_n_0_[25] ),
        .R(clear));
  FDRE \sum_reg_reg[26] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[27]_i_1_n_5 ),
        .Q(\sum_reg_reg_n_0_[26] ),
        .R(clear));
  FDRE \sum_reg_reg[27] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[27]_i_1_n_4 ),
        .Q(\sum_reg_reg_n_0_[27] ),
        .R(clear));
  CARRY4 \sum_reg_reg[27]_i_1 
       (.CI(\sum_reg_reg[23]_i_1_n_0 ),
        .CO({\sum_reg_reg[27]_i_1_n_0 ,\sum_reg_reg[27]_i_1_n_1 ,\sum_reg_reg[27]_i_1_n_2 ,\sum_reg_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_reg_n_0_[26] ,\sum_reg_reg_n_0_[25] ,\sum_reg_reg_n_0_[24] ,\sum_reg[27]_i_2_n_0 }),
        .O({\sum_reg_reg[27]_i_1_n_4 ,\sum_reg_reg[27]_i_1_n_5 ,\sum_reg_reg[27]_i_1_n_6 ,\sum_reg_reg[27]_i_1_n_7 }),
        .S({\sum_reg[27]_i_3_n_0 ,\sum_reg[27]_i_4_n_0 ,\sum_reg[27]_i_5_n_0 ,\sum_reg[27]_i_6_n_0 }));
  FDRE \sum_reg_reg[28] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[29]_i_1_n_7 ),
        .Q(\sum_reg_reg_n_0_[28] ),
        .R(clear));
  FDRE \sum_reg_reg[29] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[29]_i_1_n_6 ),
        .Q(lpf_data_320),
        .R(clear));
  CARRY4 \sum_reg_reg[29]_i_1 
       (.CI(\sum_reg_reg[27]_i_1_n_0 ),
        .CO({\NLW_sum_reg_reg[29]_i_1_CO_UNCONNECTED [3:1],\sum_reg_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sum_reg_reg_n_0_[27] }),
        .O({\NLW_sum_reg_reg[29]_i_1_O_UNCONNECTED [3:2],\sum_reg_reg[29]_i_1_n_6 ,\sum_reg_reg[29]_i_1_n_7 }),
        .S({1'b0,1'b0,\sum_reg[29]_i_2_n_0 ,\sum_reg[29]_i_3_n_0 }));
  FDRE \sum_reg_reg[2] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[3]_i_1_n_5 ),
        .Q(\sum_reg_reg_n_0_[2] ),
        .R(clear));
  FDRE \sum_reg_reg[3] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[3]_i_1_n_4 ),
        .Q(\sum_reg_reg_n_0_[3] ),
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
        .CE(valid_reg),
        .D(\sum_reg_reg[7]_i_1_n_7 ),
        .Q(\sum_reg_reg_n_0_[4] ),
        .R(clear));
  FDRE \sum_reg_reg[5] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[7]_i_1_n_6 ),
        .Q(\sum_reg_reg_n_0_[5] ),
        .R(clear));
  FDRE \sum_reg_reg[6] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[7]_i_1_n_5 ),
        .Q(\sum_reg_reg_n_0_[6] ),
        .R(clear));
  FDRE \sum_reg_reg[7] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[7]_i_1_n_4 ),
        .Q(\sum_reg_reg_n_0_[7] ),
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
        .CE(valid_reg),
        .D(\sum_reg_reg[11]_i_1_n_7 ),
        .Q(\sum_reg_reg_n_0_[8] ),
        .R(clear));
  FDRE \sum_reg_reg[9] 
       (.C(aclk),
        .CE(valid_reg),
        .D(\sum_reg_reg[11]_i_1_n_6 ),
        .Q(\sum_reg_reg_n_0_[9] ),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    valid_reg_i_1
       (.I0(aresetn),
        .O(clear));
  FDRE valid_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(data_valid),
        .Q(valid_reg),
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
