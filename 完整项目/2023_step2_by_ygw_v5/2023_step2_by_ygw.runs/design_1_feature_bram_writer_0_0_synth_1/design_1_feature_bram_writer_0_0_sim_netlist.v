// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 27 03:42:00 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_feature_bram_writer_0_0_sim_netlist.v
// Design      : design_1_feature_bram_writer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_feature_bram_writer_0_0,feature_bram_writer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "feature_bram_writer,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    frame_done,
    var_mag_num,
    var_freq_num,
    mean_mag_num,
    mean_freq_num,
    psk_spike_count,
    psk_flag,
    bpsk_carrier_locked,
    bpsk_timing_locked,
    bpsk_rate_code,
    bpsk_bit_data,
    bpsk_bit_valid,
    hist_mag_rd_addr,
    hist_mag_rd_data,
    hist_freq_rd_addr,
    hist_freq_rd_data,
    bram_en,
    bram_we,
    bram_addr,
    bram_wdata,
    busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
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

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire bpsk_bit_data;
  wire bpsk_bit_valid;
  wire bpsk_carrier_locked;
  wire [1:0]bpsk_rate_code;
  wire bpsk_timing_locked;
  wire [7:2]\^bram_addr ;
  wire bram_en;
  wire [31:0]bram_wdata;
  wire busy;
  wire frame_done;
  wire [3:0]hist_freq_rd_addr;
  wire [31:0]hist_freq_rd_data;
  wire [3:0]hist_mag_rd_addr;
  wire [31:0]hist_mag_rd_data;
  wire [31:0]mean_freq_num;
  wire [31:0]mean_mag_num;
  wire psk_flag;
  wire [31:0]psk_spike_count;
  wire [63:0]var_freq_num;
  wire [63:0]var_mag_num;

  assign bram_addr[31] = \<const0> ;
  assign bram_addr[30] = \<const0> ;
  assign bram_addr[29] = \<const0> ;
  assign bram_addr[28] = \<const0> ;
  assign bram_addr[27] = \<const0> ;
  assign bram_addr[26] = \<const0> ;
  assign bram_addr[25] = \<const0> ;
  assign bram_addr[24] = \<const0> ;
  assign bram_addr[23] = \<const0> ;
  assign bram_addr[22] = \<const0> ;
  assign bram_addr[21] = \<const0> ;
  assign bram_addr[20] = \<const0> ;
  assign bram_addr[19] = \<const0> ;
  assign bram_addr[18] = \<const0> ;
  assign bram_addr[17] = \<const0> ;
  assign bram_addr[16] = \<const0> ;
  assign bram_addr[15] = \<const0> ;
  assign bram_addr[14] = \<const0> ;
  assign bram_addr[13] = \<const0> ;
  assign bram_addr[12] = \<const0> ;
  assign bram_addr[11] = \<const0> ;
  assign bram_addr[10] = \<const0> ;
  assign bram_addr[9] = \<const0> ;
  assign bram_addr[8] = \<const0> ;
  assign bram_addr[7:2] = \^bram_addr [7:2];
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign bram_we[3] = bram_en;
  assign bram_we[2] = bram_en;
  assign bram_we[1] = bram_en;
  assign bram_we[0] = bram_en;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_feature_bram_writer inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .bpsk_bit_data(bpsk_bit_data),
        .bpsk_bit_valid(bpsk_bit_valid),
        .bpsk_carrier_locked(bpsk_carrier_locked),
        .bpsk_rate_code(bpsk_rate_code),
        .bpsk_timing_locked(bpsk_timing_locked),
        .bram_addr(\^bram_addr ),
        .bram_en(bram_en),
        .bram_wdata(bram_wdata),
        .busy_reg_0(busy),
        .frame_done(frame_done),
        .hist_freq_rd_addr(hist_freq_rd_addr),
        .hist_freq_rd_data(hist_freq_rd_data),
        .hist_mag_rd_addr(hist_mag_rd_addr),
        .hist_mag_rd_data(hist_mag_rd_data),
        .mean_freq_num(mean_freq_num),
        .mean_mag_num(mean_mag_num),
        .psk_flag(psk_flag),
        .psk_spike_count(psk_spike_count[30:0]),
        .var_freq_num(var_freq_num),
        .var_mag_num(var_mag_num));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_feature_bram_writer
   (busy_reg_0,
    bram_en,
    hist_freq_rd_addr,
    hist_mag_rd_addr,
    bram_wdata,
    bram_addr,
    frame_done,
    aresetn,
    aclk,
    bpsk_bit_valid,
    bpsk_carrier_locked,
    bpsk_timing_locked,
    bpsk_rate_code,
    psk_flag,
    mean_freq_num,
    mean_mag_num,
    var_freq_num,
    var_mag_num,
    psk_spike_count,
    bpsk_bit_data,
    hist_mag_rd_data,
    hist_freq_rd_data);
  output busy_reg_0;
  output bram_en;
  output [3:0]hist_freq_rd_addr;
  output [3:0]hist_mag_rd_addr;
  output [31:0]bram_wdata;
  output [5:0]bram_addr;
  input frame_done;
  input aresetn;
  input aclk;
  input bpsk_bit_valid;
  input bpsk_carrier_locked;
  input bpsk_timing_locked;
  input [1:0]bpsk_rate_code;
  input psk_flag;
  input [31:0]mean_freq_num;
  input [31:0]mean_mag_num;
  input [63:0]var_freq_num;
  input [63:0]var_mag_num;
  input [30:0]psk_spike_count;
  input bpsk_bit_data;
  input [31:0]hist_mag_rd_data;
  input [31:0]hist_freq_rd_data;

  wire aclk;
  wire aresetn;
  wire bit_overflow_sticky;
  wire bit_overflow_sticky_i_1_n_0;
  wire bpsk_bit_data;
  wire bpsk_bit_valid;
  wire bpsk_carrier_locked;
  wire [1:0]bpsk_rate_code;
  wire bpsk_timing_locked;
  wire [5:0]bram_addr;
  wire bram_en;
  wire [31:0]bram_wdata;
  wire \bram_wdata[0]_INST_0_i_1_n_0 ;
  wire \bram_wdata[0]_INST_0_i_2_n_0 ;
  wire \bram_wdata[0]_INST_0_i_3_n_0 ;
  wire \bram_wdata[0]_INST_0_i_5_n_0 ;
  wire \bram_wdata[0]_INST_0_i_6_n_0 ;
  wire \bram_wdata[10]_INST_0_i_1_n_0 ;
  wire \bram_wdata[10]_INST_0_i_2_n_0 ;
  wire \bram_wdata[10]_INST_0_i_3_n_0 ;
  wire \bram_wdata[10]_INST_0_i_5_n_0 ;
  wire \bram_wdata[10]_INST_0_i_6_n_0 ;
  wire \bram_wdata[11]_INST_0_i_1_n_0 ;
  wire \bram_wdata[11]_INST_0_i_2_n_0 ;
  wire \bram_wdata[11]_INST_0_i_3_n_0 ;
  wire \bram_wdata[11]_INST_0_i_5_n_0 ;
  wire \bram_wdata[11]_INST_0_i_6_n_0 ;
  wire \bram_wdata[12]_INST_0_i_1_n_0 ;
  wire \bram_wdata[12]_INST_0_i_2_n_0 ;
  wire \bram_wdata[12]_INST_0_i_3_n_0 ;
  wire \bram_wdata[12]_INST_0_i_3_n_1 ;
  wire \bram_wdata[12]_INST_0_i_3_n_2 ;
  wire \bram_wdata[12]_INST_0_i_3_n_3 ;
  wire \bram_wdata[12]_INST_0_i_3_n_4 ;
  wire \bram_wdata[12]_INST_0_i_3_n_5 ;
  wire \bram_wdata[12]_INST_0_i_3_n_6 ;
  wire \bram_wdata[12]_INST_0_i_3_n_7 ;
  wire \bram_wdata[12]_INST_0_i_4_n_0 ;
  wire \bram_wdata[12]_INST_0_i_6_n_0 ;
  wire \bram_wdata[12]_INST_0_i_7_n_0 ;
  wire \bram_wdata[13]_INST_0_i_1_n_0 ;
  wire \bram_wdata[13]_INST_0_i_2_n_0 ;
  wire \bram_wdata[13]_INST_0_i_3_n_0 ;
  wire \bram_wdata[13]_INST_0_i_5_n_0 ;
  wire \bram_wdata[13]_INST_0_i_6_n_0 ;
  wire \bram_wdata[14]_INST_0_i_1_n_0 ;
  wire \bram_wdata[14]_INST_0_i_2_n_0 ;
  wire \bram_wdata[14]_INST_0_i_3_n_0 ;
  wire \bram_wdata[14]_INST_0_i_5_n_0 ;
  wire \bram_wdata[14]_INST_0_i_6_n_0 ;
  wire \bram_wdata[15]_INST_0_i_1_n_0 ;
  wire \bram_wdata[15]_INST_0_i_2_n_0 ;
  wire \bram_wdata[15]_INST_0_i_3_n_0 ;
  wire \bram_wdata[15]_INST_0_i_5_n_0 ;
  wire \bram_wdata[15]_INST_0_i_6_n_0 ;
  wire \bram_wdata[16]_INST_0_i_1_n_0 ;
  wire \bram_wdata[16]_INST_0_i_2_n_0 ;
  wire \bram_wdata[16]_INST_0_i_3_n_0 ;
  wire \bram_wdata[16]_INST_0_i_3_n_1 ;
  wire \bram_wdata[16]_INST_0_i_3_n_2 ;
  wire \bram_wdata[16]_INST_0_i_3_n_3 ;
  wire \bram_wdata[16]_INST_0_i_3_n_4 ;
  wire \bram_wdata[16]_INST_0_i_3_n_5 ;
  wire \bram_wdata[16]_INST_0_i_3_n_6 ;
  wire \bram_wdata[16]_INST_0_i_3_n_7 ;
  wire \bram_wdata[16]_INST_0_i_4_n_0 ;
  wire \bram_wdata[16]_INST_0_i_6_n_0 ;
  wire \bram_wdata[16]_INST_0_i_7_n_0 ;
  wire \bram_wdata[17]_INST_0_i_1_n_0 ;
  wire \bram_wdata[17]_INST_0_i_2_n_0 ;
  wire \bram_wdata[17]_INST_0_i_3_n_0 ;
  wire \bram_wdata[17]_INST_0_i_5_n_0 ;
  wire \bram_wdata[17]_INST_0_i_6_n_0 ;
  wire \bram_wdata[18]_INST_0_i_1_n_0 ;
  wire \bram_wdata[18]_INST_0_i_2_n_0 ;
  wire \bram_wdata[18]_INST_0_i_3_n_0 ;
  wire \bram_wdata[18]_INST_0_i_5_n_0 ;
  wire \bram_wdata[18]_INST_0_i_6_n_0 ;
  wire \bram_wdata[19]_INST_0_i_1_n_0 ;
  wire \bram_wdata[19]_INST_0_i_2_n_0 ;
  wire \bram_wdata[19]_INST_0_i_3_n_0 ;
  wire \bram_wdata[19]_INST_0_i_5_n_0 ;
  wire \bram_wdata[19]_INST_0_i_6_n_0 ;
  wire \bram_wdata[1]_INST_0_i_1_n_0 ;
  wire \bram_wdata[1]_INST_0_i_2_n_0 ;
  wire \bram_wdata[1]_INST_0_i_3_n_0 ;
  wire \bram_wdata[1]_INST_0_i_5_n_0 ;
  wire \bram_wdata[1]_INST_0_i_6_n_0 ;
  wire \bram_wdata[20]_INST_0_i_1_n_0 ;
  wire \bram_wdata[20]_INST_0_i_2_n_0 ;
  wire \bram_wdata[20]_INST_0_i_3_n_0 ;
  wire \bram_wdata[20]_INST_0_i_3_n_1 ;
  wire \bram_wdata[20]_INST_0_i_3_n_2 ;
  wire \bram_wdata[20]_INST_0_i_3_n_3 ;
  wire \bram_wdata[20]_INST_0_i_3_n_4 ;
  wire \bram_wdata[20]_INST_0_i_3_n_5 ;
  wire \bram_wdata[20]_INST_0_i_3_n_6 ;
  wire \bram_wdata[20]_INST_0_i_3_n_7 ;
  wire \bram_wdata[20]_INST_0_i_4_n_0 ;
  wire \bram_wdata[20]_INST_0_i_6_n_0 ;
  wire \bram_wdata[20]_INST_0_i_7_n_0 ;
  wire \bram_wdata[21]_INST_0_i_1_n_0 ;
  wire \bram_wdata[21]_INST_0_i_2_n_0 ;
  wire \bram_wdata[21]_INST_0_i_3_n_0 ;
  wire \bram_wdata[21]_INST_0_i_5_n_0 ;
  wire \bram_wdata[21]_INST_0_i_6_n_0 ;
  wire \bram_wdata[22]_INST_0_i_1_n_0 ;
  wire \bram_wdata[22]_INST_0_i_2_n_0 ;
  wire \bram_wdata[22]_INST_0_i_3_n_0 ;
  wire \bram_wdata[22]_INST_0_i_5_n_0 ;
  wire \bram_wdata[22]_INST_0_i_6_n_0 ;
  wire \bram_wdata[23]_INST_0_i_1_n_0 ;
  wire \bram_wdata[23]_INST_0_i_2_n_0 ;
  wire \bram_wdata[23]_INST_0_i_3_n_0 ;
  wire \bram_wdata[23]_INST_0_i_5_n_0 ;
  wire \bram_wdata[23]_INST_0_i_6_n_0 ;
  wire \bram_wdata[24]_INST_0_i_1_n_0 ;
  wire \bram_wdata[24]_INST_0_i_2_n_0 ;
  wire \bram_wdata[24]_INST_0_i_3_n_0 ;
  wire \bram_wdata[24]_INST_0_i_3_n_1 ;
  wire \bram_wdata[24]_INST_0_i_3_n_2 ;
  wire \bram_wdata[24]_INST_0_i_3_n_3 ;
  wire \bram_wdata[24]_INST_0_i_3_n_4 ;
  wire \bram_wdata[24]_INST_0_i_3_n_5 ;
  wire \bram_wdata[24]_INST_0_i_3_n_6 ;
  wire \bram_wdata[24]_INST_0_i_3_n_7 ;
  wire \bram_wdata[24]_INST_0_i_4_n_0 ;
  wire \bram_wdata[24]_INST_0_i_6_n_0 ;
  wire \bram_wdata[24]_INST_0_i_7_n_0 ;
  wire \bram_wdata[25]_INST_0_i_1_n_0 ;
  wire \bram_wdata[25]_INST_0_i_2_n_0 ;
  wire \bram_wdata[25]_INST_0_i_3_n_0 ;
  wire \bram_wdata[25]_INST_0_i_5_n_0 ;
  wire \bram_wdata[25]_INST_0_i_6_n_0 ;
  wire \bram_wdata[26]_INST_0_i_1_n_0 ;
  wire \bram_wdata[26]_INST_0_i_2_n_0 ;
  wire \bram_wdata[26]_INST_0_i_3_n_0 ;
  wire \bram_wdata[26]_INST_0_i_5_n_0 ;
  wire \bram_wdata[26]_INST_0_i_6_n_0 ;
  wire \bram_wdata[27]_INST_0_i_1_n_0 ;
  wire \bram_wdata[27]_INST_0_i_2_n_0 ;
  wire \bram_wdata[27]_INST_0_i_3_n_0 ;
  wire \bram_wdata[27]_INST_0_i_5_n_0 ;
  wire \bram_wdata[27]_INST_0_i_6_n_0 ;
  wire \bram_wdata[28]_INST_0_i_1_n_0 ;
  wire \bram_wdata[28]_INST_0_i_2_n_0 ;
  wire \bram_wdata[28]_INST_0_i_3_n_0 ;
  wire \bram_wdata[28]_INST_0_i_3_n_1 ;
  wire \bram_wdata[28]_INST_0_i_3_n_2 ;
  wire \bram_wdata[28]_INST_0_i_3_n_3 ;
  wire \bram_wdata[28]_INST_0_i_3_n_4 ;
  wire \bram_wdata[28]_INST_0_i_3_n_5 ;
  wire \bram_wdata[28]_INST_0_i_3_n_6 ;
  wire \bram_wdata[28]_INST_0_i_3_n_7 ;
  wire \bram_wdata[28]_INST_0_i_4_n_0 ;
  wire \bram_wdata[28]_INST_0_i_6_n_0 ;
  wire \bram_wdata[28]_INST_0_i_7_n_0 ;
  wire \bram_wdata[29]_INST_0_i_1_n_0 ;
  wire \bram_wdata[29]_INST_0_i_2_n_0 ;
  wire \bram_wdata[29]_INST_0_i_3_n_0 ;
  wire \bram_wdata[29]_INST_0_i_5_n_0 ;
  wire \bram_wdata[29]_INST_0_i_6_n_0 ;
  wire \bram_wdata[2]_INST_0_i_1_n_0 ;
  wire \bram_wdata[2]_INST_0_i_2_n_0 ;
  wire \bram_wdata[2]_INST_0_i_3_n_0 ;
  wire \bram_wdata[2]_INST_0_i_5_n_0 ;
  wire \bram_wdata[2]_INST_0_i_6_n_0 ;
  wire \bram_wdata[30]_INST_0_i_1_n_0 ;
  wire \bram_wdata[30]_INST_0_i_2_n_0 ;
  wire \bram_wdata[30]_INST_0_i_3_n_0 ;
  wire \bram_wdata[30]_INST_0_i_5_n_0 ;
  wire \bram_wdata[30]_INST_0_i_6_n_0 ;
  wire \bram_wdata[31]_INST_0_i_10_n_0 ;
  wire \bram_wdata[31]_INST_0_i_11_n_0 ;
  wire \bram_wdata[31]_INST_0_i_1_n_0 ;
  wire \bram_wdata[31]_INST_0_i_2_n_0 ;
  wire \bram_wdata[31]_INST_0_i_3_n_0 ;
  wire \bram_wdata[31]_INST_0_i_4_n_2 ;
  wire \bram_wdata[31]_INST_0_i_4_n_3 ;
  wire \bram_wdata[31]_INST_0_i_4_n_5 ;
  wire \bram_wdata[31]_INST_0_i_4_n_6 ;
  wire \bram_wdata[31]_INST_0_i_4_n_7 ;
  wire \bram_wdata[31]_INST_0_i_5_n_0 ;
  wire \bram_wdata[31]_INST_0_i_7_n_0 ;
  wire \bram_wdata[31]_INST_0_i_8_n_0 ;
  wire \bram_wdata[31]_INST_0_i_9_n_0 ;
  wire \bram_wdata[3]_INST_0_i_1_n_0 ;
  wire \bram_wdata[3]_INST_0_i_2_n_0 ;
  wire \bram_wdata[3]_INST_0_i_3_n_0 ;
  wire \bram_wdata[3]_INST_0_i_5_n_0 ;
  wire \bram_wdata[3]_INST_0_i_6_n_0 ;
  wire \bram_wdata[4]_INST_0_i_1_n_0 ;
  wire \bram_wdata[4]_INST_0_i_2_n_0 ;
  wire \bram_wdata[4]_INST_0_i_3_n_0 ;
  wire \bram_wdata[4]_INST_0_i_3_n_1 ;
  wire \bram_wdata[4]_INST_0_i_3_n_2 ;
  wire \bram_wdata[4]_INST_0_i_3_n_3 ;
  wire \bram_wdata[4]_INST_0_i_3_n_4 ;
  wire \bram_wdata[4]_INST_0_i_3_n_5 ;
  wire \bram_wdata[4]_INST_0_i_3_n_6 ;
  wire \bram_wdata[4]_INST_0_i_3_n_7 ;
  wire \bram_wdata[4]_INST_0_i_4_n_0 ;
  wire \bram_wdata[4]_INST_0_i_6_n_0 ;
  wire \bram_wdata[4]_INST_0_i_7_n_0 ;
  wire \bram_wdata[5]_INST_0_i_1_n_0 ;
  wire \bram_wdata[5]_INST_0_i_2_n_0 ;
  wire \bram_wdata[5]_INST_0_i_3_n_0 ;
  wire \bram_wdata[5]_INST_0_i_5_n_0 ;
  wire \bram_wdata[5]_INST_0_i_6_n_0 ;
  wire \bram_wdata[6]_INST_0_i_1_n_0 ;
  wire \bram_wdata[6]_INST_0_i_2_n_0 ;
  wire \bram_wdata[6]_INST_0_i_3_n_0 ;
  wire \bram_wdata[6]_INST_0_i_5_n_0 ;
  wire \bram_wdata[6]_INST_0_i_6_n_0 ;
  wire \bram_wdata[7]_INST_0_i_1_n_0 ;
  wire \bram_wdata[7]_INST_0_i_2_n_0 ;
  wire \bram_wdata[7]_INST_0_i_3_n_0 ;
  wire \bram_wdata[7]_INST_0_i_5_n_0 ;
  wire \bram_wdata[7]_INST_0_i_6_n_0 ;
  wire \bram_wdata[7]_INST_0_i_7_n_0 ;
  wire \bram_wdata[7]_INST_0_i_8_n_0 ;
  wire \bram_wdata[8]_INST_0_i_1_n_0 ;
  wire \bram_wdata[8]_INST_0_i_2_n_0 ;
  wire \bram_wdata[8]_INST_0_i_3_n_0 ;
  wire \bram_wdata[8]_INST_0_i_3_n_1 ;
  wire \bram_wdata[8]_INST_0_i_3_n_2 ;
  wire \bram_wdata[8]_INST_0_i_3_n_3 ;
  wire \bram_wdata[8]_INST_0_i_3_n_4 ;
  wire \bram_wdata[8]_INST_0_i_3_n_5 ;
  wire \bram_wdata[8]_INST_0_i_3_n_6 ;
  wire \bram_wdata[8]_INST_0_i_3_n_7 ;
  wire \bram_wdata[8]_INST_0_i_4_n_0 ;
  wire \bram_wdata[8]_INST_0_i_6_n_0 ;
  wire \bram_wdata[8]_INST_0_i_7_n_0 ;
  wire \bram_wdata[9]_INST_0_i_1_n_0 ;
  wire \bram_wdata[9]_INST_0_i_2_n_0 ;
  wire \bram_wdata[9]_INST_0_i_3_n_0 ;
  wire \bram_wdata[9]_INST_0_i_5_n_0 ;
  wire \bram_wdata[9]_INST_0_i_6_n_0 ;
  wire busy7_out;
  wire busy_i_2_n_0;
  wire busy_reg_0;
  wire clear;
  wire [127:0]collect_bits;
  wire \collect_bits[111]_i_2_n_0 ;
  wire \collect_bits[112]_i_2_n_0 ;
  wire \collect_bits[113]_i_2_n_0 ;
  wire \collect_bits[114]_i_2_n_0 ;
  wire \collect_bits[115]_i_2_n_0 ;
  wire \collect_bits[116]_i_2_n_0 ;
  wire \collect_bits[117]_i_2_n_0 ;
  wire \collect_bits[118]_i_2_n_0 ;
  wire \collect_bits[119]_i_2_n_0 ;
  wire \collect_bits[120]_i_2_n_0 ;
  wire \collect_bits[121]_i_2_n_0 ;
  wire \collect_bits[122]_i_2_n_0 ;
  wire \collect_bits[123]_i_2_n_0 ;
  wire \collect_bits[124]_i_2_n_0 ;
  wire \collect_bits[125]_i_2_n_0 ;
  wire \collect_bits[126]_i_2_n_0 ;
  wire \collect_bits[127]_i_2_n_0 ;
  wire \collect_bits[127]_i_3_n_0 ;
  wire \collect_bits[15]_i_2_n_0 ;
  wire \collect_bits[31]_i_2_n_0 ;
  wire \collect_bits[47]_i_2_n_0 ;
  wire \collect_bits[63]_i_2_n_0 ;
  wire \collect_bits[79]_i_2_n_0 ;
  wire \collect_bits[95]_i_2_n_0 ;
  wire [127:0]collect_bits_next;
  wire [127:0]collect_bits_next__255;
  wire [7:0]collect_count;
  wire \collect_count[0]_i_1_n_0 ;
  wire \collect_count[5]_i_2_n_0 ;
  wire \collect_count[7]_i_1_n_0 ;
  wire \collect_count[7]_i_3_n_0 ;
  wire \collect_count[7]_rep__0_i_1_n_0 ;
  wire \collect_count[7]_rep__1_i_1_n_0 ;
  wire \collect_count[7]_rep_i_1_n_0 ;
  wire [7:0]collect_count_next;
  wire [7:1]collect_count_next__15;
  wire \collect_count_reg[7]_rep__0_n_0 ;
  wire \collect_count_reg[7]_rep__1_n_0 ;
  wire \collect_count_reg[7]_rep_n_0 ;
  wire [7:0]collect_drop_count;
  wire \collect_drop_count[4]_i_2_n_0 ;
  wire \collect_drop_count[5]_i_2_n_0 ;
  wire \collect_drop_count[7]_i_2_n_0 ;
  wire \collect_drop_count[7]_i_3_n_0 ;
  wire \collect_drop_count[7]_i_4_n_0 ;
  wire [7:0]collect_drop_count_next;
  wire [7:0]collect_drop_count_next__23;
  wire collect_overflow;
  wire collect_overflow_i_1_n_0;
  wire collect_overflow_next;
  wire commit;
  wire commit_i_1_n_0;
  wire [31:0]data10;
  wire [31:0]data11;
  wire [31:0]data12;
  wire [31:0]data14;
  wire [4:0]data7;
  wire frame_done;
  wire [3:0]hist_freq_rd_addr;
  wire [31:0]hist_freq_rd_data;
  wire [3:0]hist_mag_rd_addr;
  wire \hist_mag_rd_addr[3]_INST_0_i_1_n_0 ;
  wire [31:0]hist_mag_rd_data;
  wire [31:0]mean_freq_num;
  wire [31:0]mean_mag_num;
  wire [5:2]p_0_in;
  wire psk_flag;
  wire [30:0]psk_spike_count;
  wire \sequence[0]_i_1_n_0 ;
  wire \sequence[0]_i_3_n_0 ;
  wire [31:0]sequence_reg;
  wire \sequence_reg[0]_i_2_n_0 ;
  wire \sequence_reg[0]_i_2_n_1 ;
  wire \sequence_reg[0]_i_2_n_2 ;
  wire \sequence_reg[0]_i_2_n_3 ;
  wire \sequence_reg[0]_i_2_n_4 ;
  wire \sequence_reg[0]_i_2_n_5 ;
  wire \sequence_reg[0]_i_2_n_6 ;
  wire \sequence_reg[0]_i_2_n_7 ;
  wire \sequence_reg[12]_i_1_n_0 ;
  wire \sequence_reg[12]_i_1_n_1 ;
  wire \sequence_reg[12]_i_1_n_2 ;
  wire \sequence_reg[12]_i_1_n_3 ;
  wire \sequence_reg[12]_i_1_n_4 ;
  wire \sequence_reg[12]_i_1_n_5 ;
  wire \sequence_reg[12]_i_1_n_6 ;
  wire \sequence_reg[12]_i_1_n_7 ;
  wire \sequence_reg[16]_i_1_n_0 ;
  wire \sequence_reg[16]_i_1_n_1 ;
  wire \sequence_reg[16]_i_1_n_2 ;
  wire \sequence_reg[16]_i_1_n_3 ;
  wire \sequence_reg[16]_i_1_n_4 ;
  wire \sequence_reg[16]_i_1_n_5 ;
  wire \sequence_reg[16]_i_1_n_6 ;
  wire \sequence_reg[16]_i_1_n_7 ;
  wire \sequence_reg[20]_i_1_n_0 ;
  wire \sequence_reg[20]_i_1_n_1 ;
  wire \sequence_reg[20]_i_1_n_2 ;
  wire \sequence_reg[20]_i_1_n_3 ;
  wire \sequence_reg[20]_i_1_n_4 ;
  wire \sequence_reg[20]_i_1_n_5 ;
  wire \sequence_reg[20]_i_1_n_6 ;
  wire \sequence_reg[20]_i_1_n_7 ;
  wire \sequence_reg[24]_i_1_n_0 ;
  wire \sequence_reg[24]_i_1_n_1 ;
  wire \sequence_reg[24]_i_1_n_2 ;
  wire \sequence_reg[24]_i_1_n_3 ;
  wire \sequence_reg[24]_i_1_n_4 ;
  wire \sequence_reg[24]_i_1_n_5 ;
  wire \sequence_reg[24]_i_1_n_6 ;
  wire \sequence_reg[24]_i_1_n_7 ;
  wire \sequence_reg[28]_i_1_n_1 ;
  wire \sequence_reg[28]_i_1_n_2 ;
  wire \sequence_reg[28]_i_1_n_3 ;
  wire \sequence_reg[28]_i_1_n_4 ;
  wire \sequence_reg[28]_i_1_n_5 ;
  wire \sequence_reg[28]_i_1_n_6 ;
  wire \sequence_reg[28]_i_1_n_7 ;
  wire \sequence_reg[4]_i_1_n_0 ;
  wire \sequence_reg[4]_i_1_n_1 ;
  wire \sequence_reg[4]_i_1_n_2 ;
  wire \sequence_reg[4]_i_1_n_3 ;
  wire \sequence_reg[4]_i_1_n_4 ;
  wire \sequence_reg[4]_i_1_n_5 ;
  wire \sequence_reg[4]_i_1_n_6 ;
  wire \sequence_reg[4]_i_1_n_7 ;
  wire \sequence_reg[8]_i_1_n_0 ;
  wire \sequence_reg[8]_i_1_n_1 ;
  wire \sequence_reg[8]_i_1_n_2 ;
  wire \sequence_reg[8]_i_1_n_3 ;
  wire \sequence_reg[8]_i_1_n_4 ;
  wire \sequence_reg[8]_i_1_n_5 ;
  wire \sequence_reg[8]_i_1_n_6 ;
  wire \sequence_reg[8]_i_1_n_7 ;
  wire [7:0]snap_bit_count;
  wire \snap_bit_count[5]_i_2_n_0 ;
  wire snap_bit_overflow_sticky;
  wire snap_bit_overflow_sticky_i_1_n_0;
  wire \snap_bits_reg_n_0_[0] ;
  wire \snap_bits_reg_n_0_[10] ;
  wire \snap_bits_reg_n_0_[11] ;
  wire \snap_bits_reg_n_0_[12] ;
  wire \snap_bits_reg_n_0_[13] ;
  wire \snap_bits_reg_n_0_[14] ;
  wire \snap_bits_reg_n_0_[15] ;
  wire \snap_bits_reg_n_0_[16] ;
  wire \snap_bits_reg_n_0_[17] ;
  wire \snap_bits_reg_n_0_[18] ;
  wire \snap_bits_reg_n_0_[19] ;
  wire \snap_bits_reg_n_0_[1] ;
  wire \snap_bits_reg_n_0_[20] ;
  wire \snap_bits_reg_n_0_[21] ;
  wire \snap_bits_reg_n_0_[22] ;
  wire \snap_bits_reg_n_0_[23] ;
  wire \snap_bits_reg_n_0_[24] ;
  wire \snap_bits_reg_n_0_[25] ;
  wire \snap_bits_reg_n_0_[26] ;
  wire \snap_bits_reg_n_0_[27] ;
  wire \snap_bits_reg_n_0_[28] ;
  wire \snap_bits_reg_n_0_[29] ;
  wire \snap_bits_reg_n_0_[2] ;
  wire \snap_bits_reg_n_0_[30] ;
  wire \snap_bits_reg_n_0_[31] ;
  wire \snap_bits_reg_n_0_[3] ;
  wire \snap_bits_reg_n_0_[4] ;
  wire \snap_bits_reg_n_0_[5] ;
  wire \snap_bits_reg_n_0_[6] ;
  wire \snap_bits_reg_n_0_[7] ;
  wire \snap_bits_reg_n_0_[8] ;
  wire \snap_bits_reg_n_0_[9] ;
  wire snap_carrier_locked_i_1_n_0;
  wire [7:0]snap_dropped_bits;
  wire \snap_dropped_bits[4]_i_2_n_0 ;
  wire [15:0]snap_snapshot_overrun_count;
  wire snap_snapshot_overrun_sticky;
  wire snapshot_overrun_count;
  wire \snapshot_overrun_count[0]_i_3_n_0 ;
  wire \snapshot_overrun_count[0]_i_4_n_0 ;
  wire \snapshot_overrun_count[0]_i_5_n_0 ;
  wire \snapshot_overrun_count[0]_i_6_n_0 ;
  wire \snapshot_overrun_count[0]_i_7_n_0 ;
  wire [15:0]snapshot_overrun_count_reg;
  wire \snapshot_overrun_count_reg[0]_i_2_n_0 ;
  wire \snapshot_overrun_count_reg[0]_i_2_n_1 ;
  wire \snapshot_overrun_count_reg[0]_i_2_n_2 ;
  wire \snapshot_overrun_count_reg[0]_i_2_n_3 ;
  wire \snapshot_overrun_count_reg[0]_i_2_n_4 ;
  wire \snapshot_overrun_count_reg[0]_i_2_n_5 ;
  wire \snapshot_overrun_count_reg[0]_i_2_n_6 ;
  wire \snapshot_overrun_count_reg[0]_i_2_n_7 ;
  wire \snapshot_overrun_count_reg[12]_i_1_n_1 ;
  wire \snapshot_overrun_count_reg[12]_i_1_n_2 ;
  wire \snapshot_overrun_count_reg[12]_i_1_n_3 ;
  wire \snapshot_overrun_count_reg[12]_i_1_n_4 ;
  wire \snapshot_overrun_count_reg[12]_i_1_n_5 ;
  wire \snapshot_overrun_count_reg[12]_i_1_n_6 ;
  wire \snapshot_overrun_count_reg[12]_i_1_n_7 ;
  wire \snapshot_overrun_count_reg[4]_i_1_n_0 ;
  wire \snapshot_overrun_count_reg[4]_i_1_n_1 ;
  wire \snapshot_overrun_count_reg[4]_i_1_n_2 ;
  wire \snapshot_overrun_count_reg[4]_i_1_n_3 ;
  wire \snapshot_overrun_count_reg[4]_i_1_n_4 ;
  wire \snapshot_overrun_count_reg[4]_i_1_n_5 ;
  wire \snapshot_overrun_count_reg[4]_i_1_n_6 ;
  wire \snapshot_overrun_count_reg[4]_i_1_n_7 ;
  wire \snapshot_overrun_count_reg[8]_i_1_n_0 ;
  wire \snapshot_overrun_count_reg[8]_i_1_n_1 ;
  wire \snapshot_overrun_count_reg[8]_i_1_n_2 ;
  wire \snapshot_overrun_count_reg[8]_i_1_n_3 ;
  wire \snapshot_overrun_count_reg[8]_i_1_n_4 ;
  wire \snapshot_overrun_count_reg[8]_i_1_n_5 ;
  wire \snapshot_overrun_count_reg[8]_i_1_n_6 ;
  wire \snapshot_overrun_count_reg[8]_i_1_n_7 ;
  wire snapshot_overrun_sticky;
  wire snapshot_overrun_sticky_i_1_n_0;
  wire [63:0]var_freq_num;
  wire [63:0]var_mag_num;
  wire word_index;
  wire \word_index[0]_i_1_n_0 ;
  wire \word_index[1]_i_1_n_0 ;
  wire \word_index[5]_i_1_n_0 ;
  wire \word_index[5]_i_4_n_0 ;
  wire [5:0]word_index_reg__0;
  wire [3:2]\NLW_bram_wdata[31]_INST_0_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_wdata[31]_INST_0_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_sequence_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_snapshot_overrun_count_reg[12]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFFEA)) 
    bit_overflow_sticky_i_1
       (.I0(collect_overflow),
        .I1(bpsk_bit_valid),
        .I2(collect_count[7]),
        .I3(bit_overflow_sticky),
        .O(bit_overflow_sticky_i_1_n_0));
  FDRE bit_overflow_sticky_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bit_overflow_sticky_i_1_n_0),
        .Q(bit_overflow_sticky),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[2]_INST_0 
       (.I0(busy_reg_0),
        .I1(word_index_reg__0[0]),
        .O(bram_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[3]_INST_0 
       (.I0(busy_reg_0),
        .I1(word_index_reg__0[1]),
        .O(bram_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[4]_INST_0 
       (.I0(busy_reg_0),
        .I1(word_index_reg__0[2]),
        .O(bram_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[5]_INST_0 
       (.I0(busy_reg_0),
        .I1(word_index_reg__0[3]),
        .O(bram_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[6]_INST_0 
       (.I0(busy_reg_0),
        .I1(word_index_reg__0[4]),
        .O(bram_addr[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[7]_INST_0 
       (.I0(busy_reg_0),
        .I1(word_index_reg__0[5]),
        .O(bram_addr[5]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \bram_wdata[0]_INST_0 
       (.I0(\bram_wdata[0]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[0]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(sequence_reg[0]),
        .O(bram_wdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[0]_INST_0_i_1 
       (.I0(\bram_wdata[0]_INST_0_i_3_n_0 ),
        .I1(data14[0]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(data7[4]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[0]),
        .O(\bram_wdata[0]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[0]_INST_0_i_2 
       (.I0(\bram_wdata[0]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[0]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[0]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[0]_INST_0_i_3 
       (.I0(data11[0]),
        .I1(data10[0]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\snap_bits_reg_n_0_[0] ),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(snap_bit_count[0]),
        .O(\bram_wdata[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[0]_INST_0_i_4 
       (.I0(hist_mag_rd_data[0]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[0]),
        .O(data14[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[0]_INST_0_i_5 
       (.I0(var_freq_num[32]),
        .I1(var_freq_num[0]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[32]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[0]),
        .O(\bram_wdata[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[0]_INST_0_i_6 
       (.I0(data7[0]),
        .I1(psk_spike_count[0]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(mean_freq_num[0]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(mean_mag_num[0]),
        .O(\bram_wdata[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[10]_INST_0 
       (.I0(\bram_wdata[10]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[10]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[12]_INST_0_i_3_n_6 ),
        .O(bram_wdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[10]_INST_0_i_1 
       (.I0(\bram_wdata[10]_INST_0_i_3_n_0 ),
        .I1(data14[10]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_dropped_bits[2]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[10]),
        .O(\bram_wdata[10]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[10]_INST_0_i_2 
       (.I0(\bram_wdata[10]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[10]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[10]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[10]_INST_0_i_3 
       (.I0(data11[10]),
        .I1(data10[10]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[10] ),
        .O(\bram_wdata[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[10]_INST_0_i_4 
       (.I0(hist_mag_rd_data[10]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[10]),
        .O(data14[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[10]_INST_0_i_5 
       (.I0(var_freq_num[42]),
        .I1(var_freq_num[10]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[42]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[10]),
        .O(\bram_wdata[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[10]_INST_0_i_6 
       (.I0(psk_spike_count[10]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[10]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[10]),
        .O(\bram_wdata[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[11]_INST_0 
       (.I0(\bram_wdata[11]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[11]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[12]_INST_0_i_3_n_5 ),
        .O(bram_wdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[11]_INST_0_i_1 
       (.I0(\bram_wdata[11]_INST_0_i_3_n_0 ),
        .I1(data14[11]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_dropped_bits[3]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[11]),
        .O(\bram_wdata[11]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[11]_INST_0_i_2 
       (.I0(\bram_wdata[11]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[11]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[11]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[11]_INST_0_i_3 
       (.I0(data11[11]),
        .I1(data10[11]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[11] ),
        .O(\bram_wdata[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[11]_INST_0_i_4 
       (.I0(hist_mag_rd_data[11]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[11]),
        .O(data14[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[11]_INST_0_i_5 
       (.I0(var_freq_num[43]),
        .I1(var_freq_num[11]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[43]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[11]),
        .O(\bram_wdata[11]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[11]_INST_0_i_6 
       (.I0(psk_spike_count[11]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[11]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[11]),
        .O(\bram_wdata[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[12]_INST_0 
       (.I0(\bram_wdata[12]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[12]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[12]_INST_0_i_3_n_4 ),
        .O(bram_wdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[12]_INST_0_i_1 
       (.I0(\bram_wdata[12]_INST_0_i_4_n_0 ),
        .I1(data14[12]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_dropped_bits[4]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[12]),
        .O(\bram_wdata[12]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[12]_INST_0_i_2 
       (.I0(\bram_wdata[12]_INST_0_i_6_n_0 ),
        .I1(\bram_wdata[12]_INST_0_i_7_n_0 ),
        .O(\bram_wdata[12]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  CARRY4 \bram_wdata[12]_INST_0_i_3 
       (.CI(\bram_wdata[8]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[12]_INST_0_i_3_n_0 ,\bram_wdata[12]_INST_0_i_3_n_1 ,\bram_wdata[12]_INST_0_i_3_n_2 ,\bram_wdata[12]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_wdata[12]_INST_0_i_3_n_4 ,\bram_wdata[12]_INST_0_i_3_n_5 ,\bram_wdata[12]_INST_0_i_3_n_6 ,\bram_wdata[12]_INST_0_i_3_n_7 }),
        .S(sequence_reg[12:9]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[12]_INST_0_i_4 
       (.I0(data11[12]),
        .I1(data10[12]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[12] ),
        .O(\bram_wdata[12]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[12]_INST_0_i_5 
       (.I0(hist_mag_rd_data[12]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[12]),
        .O(data14[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[12]_INST_0_i_6 
       (.I0(var_freq_num[44]),
        .I1(var_freq_num[12]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[44]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[12]),
        .O(\bram_wdata[12]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[12]_INST_0_i_7 
       (.I0(psk_spike_count[12]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[12]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[12]),
        .O(\bram_wdata[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[13]_INST_0 
       (.I0(\bram_wdata[13]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[13]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[16]_INST_0_i_3_n_7 ),
        .O(bram_wdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[13]_INST_0_i_1 
       (.I0(\bram_wdata[13]_INST_0_i_3_n_0 ),
        .I1(data14[13]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_dropped_bits[5]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[13]),
        .O(\bram_wdata[13]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[13]_INST_0_i_2 
       (.I0(\bram_wdata[13]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[13]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[13]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[13]_INST_0_i_3 
       (.I0(data11[13]),
        .I1(data10[13]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[13] ),
        .O(\bram_wdata[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[13]_INST_0_i_4 
       (.I0(hist_mag_rd_data[13]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[13]),
        .O(data14[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[13]_INST_0_i_5 
       (.I0(var_freq_num[45]),
        .I1(var_freq_num[13]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[45]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[13]),
        .O(\bram_wdata[13]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[13]_INST_0_i_6 
       (.I0(psk_spike_count[13]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[13]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[13]),
        .O(\bram_wdata[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[14]_INST_0 
       (.I0(\bram_wdata[14]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[14]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[16]_INST_0_i_3_n_6 ),
        .O(bram_wdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[14]_INST_0_i_1 
       (.I0(\bram_wdata[14]_INST_0_i_3_n_0 ),
        .I1(data14[14]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_dropped_bits[6]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[14]),
        .O(\bram_wdata[14]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[14]_INST_0_i_2 
       (.I0(\bram_wdata[14]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[14]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[14]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[14]_INST_0_i_3 
       (.I0(data11[14]),
        .I1(data10[14]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[14] ),
        .O(\bram_wdata[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[14]_INST_0_i_4 
       (.I0(hist_mag_rd_data[14]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[14]),
        .O(data14[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[14]_INST_0_i_5 
       (.I0(var_freq_num[46]),
        .I1(var_freq_num[14]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[46]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[14]),
        .O(\bram_wdata[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[14]_INST_0_i_6 
       (.I0(psk_spike_count[14]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[14]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[14]),
        .O(\bram_wdata[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[15]_INST_0 
       (.I0(\bram_wdata[15]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[15]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[16]_INST_0_i_3_n_5 ),
        .O(bram_wdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[15]_INST_0_i_1 
       (.I0(\bram_wdata[15]_INST_0_i_3_n_0 ),
        .I1(data14[15]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_dropped_bits[7]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[15]),
        .O(\bram_wdata[15]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[15]_INST_0_i_2 
       (.I0(\bram_wdata[15]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[15]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[15]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[15]_INST_0_i_3 
       (.I0(data11[15]),
        .I1(data10[15]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[15] ),
        .O(\bram_wdata[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[15]_INST_0_i_4 
       (.I0(hist_mag_rd_data[15]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[15]),
        .O(data14[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[15]_INST_0_i_5 
       (.I0(var_freq_num[47]),
        .I1(var_freq_num[15]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[47]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[15]),
        .O(\bram_wdata[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[15]_INST_0_i_6 
       (.I0(psk_spike_count[15]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[15]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[15]),
        .O(\bram_wdata[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[16]_INST_0 
       (.I0(\bram_wdata[16]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[16]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[16]_INST_0_i_3_n_4 ),
        .O(bram_wdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[16]_INST_0_i_1 
       (.I0(\bram_wdata[16]_INST_0_i_4_n_0 ),
        .I1(data14[16]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[0]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[16]),
        .O(\bram_wdata[16]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[16]_INST_0_i_2 
       (.I0(\bram_wdata[16]_INST_0_i_6_n_0 ),
        .I1(\bram_wdata[16]_INST_0_i_7_n_0 ),
        .O(\bram_wdata[16]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  CARRY4 \bram_wdata[16]_INST_0_i_3 
       (.CI(\bram_wdata[12]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[16]_INST_0_i_3_n_0 ,\bram_wdata[16]_INST_0_i_3_n_1 ,\bram_wdata[16]_INST_0_i_3_n_2 ,\bram_wdata[16]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_wdata[16]_INST_0_i_3_n_4 ,\bram_wdata[16]_INST_0_i_3_n_5 ,\bram_wdata[16]_INST_0_i_3_n_6 ,\bram_wdata[16]_INST_0_i_3_n_7 }),
        .S(sequence_reg[16:13]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[16]_INST_0_i_4 
       (.I0(data11[16]),
        .I1(data10[16]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[16] ),
        .O(\bram_wdata[16]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[16]_INST_0_i_5 
       (.I0(hist_mag_rd_data[16]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[16]),
        .O(data14[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[16]_INST_0_i_6 
       (.I0(var_freq_num[48]),
        .I1(var_freq_num[16]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[48]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[16]),
        .O(\bram_wdata[16]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[16]_INST_0_i_7 
       (.I0(psk_spike_count[16]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[16]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[16]),
        .O(\bram_wdata[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[17]_INST_0 
       (.I0(\bram_wdata[17]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[17]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[20]_INST_0_i_3_n_7 ),
        .O(bram_wdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[17]_INST_0_i_1 
       (.I0(\bram_wdata[17]_INST_0_i_3_n_0 ),
        .I1(data14[17]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[1]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[17]),
        .O(\bram_wdata[17]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[17]_INST_0_i_2 
       (.I0(\bram_wdata[17]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[17]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[17]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[17]_INST_0_i_3 
       (.I0(data11[17]),
        .I1(data10[17]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[17] ),
        .O(\bram_wdata[17]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[17]_INST_0_i_4 
       (.I0(hist_mag_rd_data[17]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[17]),
        .O(data14[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[17]_INST_0_i_5 
       (.I0(var_freq_num[49]),
        .I1(var_freq_num[17]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[49]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[17]),
        .O(\bram_wdata[17]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[17]_INST_0_i_6 
       (.I0(psk_spike_count[17]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[17]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[17]),
        .O(\bram_wdata[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[18]_INST_0 
       (.I0(\bram_wdata[18]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[18]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[20]_INST_0_i_3_n_6 ),
        .O(bram_wdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[18]_INST_0_i_1 
       (.I0(\bram_wdata[18]_INST_0_i_3_n_0 ),
        .I1(data14[18]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[2]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[18]),
        .O(\bram_wdata[18]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[18]_INST_0_i_2 
       (.I0(\bram_wdata[18]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[18]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[18]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[18]_INST_0_i_3 
       (.I0(data11[18]),
        .I1(data10[18]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[18] ),
        .O(\bram_wdata[18]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[18]_INST_0_i_4 
       (.I0(hist_mag_rd_data[18]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[18]),
        .O(data14[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[18]_INST_0_i_5 
       (.I0(var_freq_num[50]),
        .I1(var_freq_num[18]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[50]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[18]),
        .O(\bram_wdata[18]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[18]_INST_0_i_6 
       (.I0(psk_spike_count[18]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[18]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[18]),
        .O(\bram_wdata[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[19]_INST_0 
       (.I0(\bram_wdata[19]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[19]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[20]_INST_0_i_3_n_5 ),
        .O(bram_wdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[19]_INST_0_i_1 
       (.I0(\bram_wdata[19]_INST_0_i_3_n_0 ),
        .I1(data14[19]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[3]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[19]),
        .O(\bram_wdata[19]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[19]_INST_0_i_2 
       (.I0(\bram_wdata[19]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[19]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[19]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[19]_INST_0_i_3 
       (.I0(data11[19]),
        .I1(data10[19]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[19] ),
        .O(\bram_wdata[19]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[19]_INST_0_i_4 
       (.I0(hist_mag_rd_data[19]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[19]),
        .O(data14[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[19]_INST_0_i_5 
       (.I0(var_freq_num[51]),
        .I1(var_freq_num[19]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[51]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[19]),
        .O(\bram_wdata[19]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[19]_INST_0_i_6 
       (.I0(psk_spike_count[19]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[19]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[19]),
        .O(\bram_wdata[19]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[1]_INST_0 
       (.I0(\bram_wdata[1]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[1]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[4]_INST_0_i_3_n_7 ),
        .O(bram_wdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[1]_INST_0_i_1 
       (.I0(\bram_wdata[1]_INST_0_i_3_n_0 ),
        .I1(data14[1]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_bit_overflow_sticky),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[1]),
        .O(\bram_wdata[1]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[1]_INST_0_i_2 
       (.I0(\bram_wdata[1]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[1]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[1]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[1]_INST_0_i_3 
       (.I0(data11[1]),
        .I1(data10[1]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\snap_bits_reg_n_0_[1] ),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(snap_bit_count[1]),
        .O(\bram_wdata[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[1]_INST_0_i_4 
       (.I0(hist_mag_rd_data[1]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[1]),
        .O(data14[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[1]_INST_0_i_5 
       (.I0(var_freq_num[33]),
        .I1(var_freq_num[1]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[33]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[1]),
        .O(\bram_wdata[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[1]_INST_0_i_6 
       (.I0(data7[1]),
        .I1(psk_spike_count[1]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(mean_freq_num[1]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(mean_mag_num[1]),
        .O(\bram_wdata[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[20]_INST_0 
       (.I0(\bram_wdata[20]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[20]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[20]_INST_0_i_3_n_4 ),
        .O(bram_wdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[20]_INST_0_i_1 
       (.I0(\bram_wdata[20]_INST_0_i_4_n_0 ),
        .I1(data14[20]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[4]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[20]),
        .O(\bram_wdata[20]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[20]_INST_0_i_2 
       (.I0(\bram_wdata[20]_INST_0_i_6_n_0 ),
        .I1(\bram_wdata[20]_INST_0_i_7_n_0 ),
        .O(\bram_wdata[20]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  CARRY4 \bram_wdata[20]_INST_0_i_3 
       (.CI(\bram_wdata[16]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[20]_INST_0_i_3_n_0 ,\bram_wdata[20]_INST_0_i_3_n_1 ,\bram_wdata[20]_INST_0_i_3_n_2 ,\bram_wdata[20]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_wdata[20]_INST_0_i_3_n_4 ,\bram_wdata[20]_INST_0_i_3_n_5 ,\bram_wdata[20]_INST_0_i_3_n_6 ,\bram_wdata[20]_INST_0_i_3_n_7 }),
        .S(sequence_reg[20:17]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[20]_INST_0_i_4 
       (.I0(data11[20]),
        .I1(data10[20]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[20] ),
        .O(\bram_wdata[20]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[20]_INST_0_i_5 
       (.I0(hist_mag_rd_data[20]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[20]),
        .O(data14[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[20]_INST_0_i_6 
       (.I0(var_freq_num[52]),
        .I1(var_freq_num[20]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[52]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[20]),
        .O(\bram_wdata[20]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[20]_INST_0_i_7 
       (.I0(psk_spike_count[20]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[20]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[20]),
        .O(\bram_wdata[20]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[21]_INST_0 
       (.I0(\bram_wdata[21]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[21]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[24]_INST_0_i_3_n_7 ),
        .O(bram_wdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[21]_INST_0_i_1 
       (.I0(\bram_wdata[21]_INST_0_i_3_n_0 ),
        .I1(data14[21]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[5]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[21]),
        .O(\bram_wdata[21]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[21]_INST_0_i_2 
       (.I0(\bram_wdata[21]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[21]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[21]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[21]_INST_0_i_3 
       (.I0(data11[21]),
        .I1(data10[21]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[21] ),
        .O(\bram_wdata[21]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[21]_INST_0_i_4 
       (.I0(hist_mag_rd_data[21]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[21]),
        .O(data14[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[21]_INST_0_i_5 
       (.I0(var_freq_num[53]),
        .I1(var_freq_num[21]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[53]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[21]),
        .O(\bram_wdata[21]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[21]_INST_0_i_6 
       (.I0(psk_spike_count[21]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[21]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[21]),
        .O(\bram_wdata[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[22]_INST_0 
       (.I0(\bram_wdata[22]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[22]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[24]_INST_0_i_3_n_6 ),
        .O(bram_wdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[22]_INST_0_i_1 
       (.I0(\bram_wdata[22]_INST_0_i_3_n_0 ),
        .I1(data14[22]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[6]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[22]),
        .O(\bram_wdata[22]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[22]_INST_0_i_2 
       (.I0(\bram_wdata[22]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[22]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[22]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[22]_INST_0_i_3 
       (.I0(data11[22]),
        .I1(data10[22]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[22] ),
        .O(\bram_wdata[22]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[22]_INST_0_i_4 
       (.I0(hist_mag_rd_data[22]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[22]),
        .O(data14[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[22]_INST_0_i_5 
       (.I0(var_freq_num[54]),
        .I1(var_freq_num[22]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[54]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[22]),
        .O(\bram_wdata[22]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[22]_INST_0_i_6 
       (.I0(psk_spike_count[22]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[22]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[22]),
        .O(\bram_wdata[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[23]_INST_0 
       (.I0(\bram_wdata[23]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[23]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[24]_INST_0_i_3_n_5 ),
        .O(bram_wdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[23]_INST_0_i_1 
       (.I0(\bram_wdata[23]_INST_0_i_3_n_0 ),
        .I1(data14[23]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[7]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[23]),
        .O(\bram_wdata[23]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[23]_INST_0_i_2 
       (.I0(\bram_wdata[23]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[23]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[23]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[23]_INST_0_i_3 
       (.I0(data11[23]),
        .I1(data10[23]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[23] ),
        .O(\bram_wdata[23]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[23]_INST_0_i_4 
       (.I0(hist_mag_rd_data[23]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[23]),
        .O(data14[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[23]_INST_0_i_5 
       (.I0(var_freq_num[55]),
        .I1(var_freq_num[23]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[55]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[23]),
        .O(\bram_wdata[23]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[23]_INST_0_i_6 
       (.I0(psk_spike_count[23]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[23]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[23]),
        .O(\bram_wdata[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[24]_INST_0 
       (.I0(\bram_wdata[24]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[24]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[24]_INST_0_i_3_n_4 ),
        .O(bram_wdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[24]_INST_0_i_1 
       (.I0(\bram_wdata[24]_INST_0_i_4_n_0 ),
        .I1(data14[24]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[8]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[24]),
        .O(\bram_wdata[24]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[24]_INST_0_i_2 
       (.I0(\bram_wdata[24]_INST_0_i_6_n_0 ),
        .I1(\bram_wdata[24]_INST_0_i_7_n_0 ),
        .O(\bram_wdata[24]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  CARRY4 \bram_wdata[24]_INST_0_i_3 
       (.CI(\bram_wdata[20]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[24]_INST_0_i_3_n_0 ,\bram_wdata[24]_INST_0_i_3_n_1 ,\bram_wdata[24]_INST_0_i_3_n_2 ,\bram_wdata[24]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_wdata[24]_INST_0_i_3_n_4 ,\bram_wdata[24]_INST_0_i_3_n_5 ,\bram_wdata[24]_INST_0_i_3_n_6 ,\bram_wdata[24]_INST_0_i_3_n_7 }),
        .S(sequence_reg[24:21]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[24]_INST_0_i_4 
       (.I0(data11[24]),
        .I1(data10[24]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[24] ),
        .O(\bram_wdata[24]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[24]_INST_0_i_5 
       (.I0(hist_mag_rd_data[24]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[24]),
        .O(data14[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[24]_INST_0_i_6 
       (.I0(var_freq_num[56]),
        .I1(var_freq_num[24]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[56]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[24]),
        .O(\bram_wdata[24]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[24]_INST_0_i_7 
       (.I0(psk_spike_count[24]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[24]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[24]),
        .O(\bram_wdata[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[25]_INST_0 
       (.I0(\bram_wdata[25]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[25]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[28]_INST_0_i_3_n_7 ),
        .O(bram_wdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[25]_INST_0_i_1 
       (.I0(\bram_wdata[25]_INST_0_i_3_n_0 ),
        .I1(data14[25]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[9]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[25]),
        .O(\bram_wdata[25]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[25]_INST_0_i_2 
       (.I0(\bram_wdata[25]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[25]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[25]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[25]_INST_0_i_3 
       (.I0(data11[25]),
        .I1(data10[25]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[25] ),
        .O(\bram_wdata[25]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[25]_INST_0_i_4 
       (.I0(hist_mag_rd_data[25]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[25]),
        .O(data14[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[25]_INST_0_i_5 
       (.I0(var_freq_num[57]),
        .I1(var_freq_num[25]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[57]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[25]),
        .O(\bram_wdata[25]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[25]_INST_0_i_6 
       (.I0(psk_spike_count[25]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[25]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[25]),
        .O(\bram_wdata[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[26]_INST_0 
       (.I0(\bram_wdata[26]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[26]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[28]_INST_0_i_3_n_6 ),
        .O(bram_wdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[26]_INST_0_i_1 
       (.I0(\bram_wdata[26]_INST_0_i_3_n_0 ),
        .I1(data14[26]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[10]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[26]),
        .O(\bram_wdata[26]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[26]_INST_0_i_2 
       (.I0(\bram_wdata[26]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[26]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[26]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[26]_INST_0_i_3 
       (.I0(data11[26]),
        .I1(data10[26]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[26] ),
        .O(\bram_wdata[26]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[26]_INST_0_i_4 
       (.I0(hist_mag_rd_data[26]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[26]),
        .O(data14[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[26]_INST_0_i_5 
       (.I0(var_freq_num[58]),
        .I1(var_freq_num[26]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[58]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[26]),
        .O(\bram_wdata[26]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[26]_INST_0_i_6 
       (.I0(psk_spike_count[26]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[26]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[26]),
        .O(\bram_wdata[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[27]_INST_0 
       (.I0(\bram_wdata[27]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[27]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[28]_INST_0_i_3_n_5 ),
        .O(bram_wdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[27]_INST_0_i_1 
       (.I0(\bram_wdata[27]_INST_0_i_3_n_0 ),
        .I1(data14[27]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[11]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[27]),
        .O(\bram_wdata[27]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[27]_INST_0_i_2 
       (.I0(\bram_wdata[27]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[27]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[27]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[27]_INST_0_i_3 
       (.I0(data11[27]),
        .I1(data10[27]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[27] ),
        .O(\bram_wdata[27]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[27]_INST_0_i_4 
       (.I0(hist_mag_rd_data[27]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[27]),
        .O(data14[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[27]_INST_0_i_5 
       (.I0(var_freq_num[59]),
        .I1(var_freq_num[27]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[59]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[27]),
        .O(\bram_wdata[27]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[27]_INST_0_i_6 
       (.I0(psk_spike_count[27]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[27]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[27]),
        .O(\bram_wdata[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[28]_INST_0 
       (.I0(\bram_wdata[28]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[28]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[28]_INST_0_i_3_n_4 ),
        .O(bram_wdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[28]_INST_0_i_1 
       (.I0(\bram_wdata[28]_INST_0_i_4_n_0 ),
        .I1(data14[28]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[12]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[28]),
        .O(\bram_wdata[28]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[28]_INST_0_i_2 
       (.I0(\bram_wdata[28]_INST_0_i_6_n_0 ),
        .I1(\bram_wdata[28]_INST_0_i_7_n_0 ),
        .O(\bram_wdata[28]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  CARRY4 \bram_wdata[28]_INST_0_i_3 
       (.CI(\bram_wdata[24]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[28]_INST_0_i_3_n_0 ,\bram_wdata[28]_INST_0_i_3_n_1 ,\bram_wdata[28]_INST_0_i_3_n_2 ,\bram_wdata[28]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_wdata[28]_INST_0_i_3_n_4 ,\bram_wdata[28]_INST_0_i_3_n_5 ,\bram_wdata[28]_INST_0_i_3_n_6 ,\bram_wdata[28]_INST_0_i_3_n_7 }),
        .S(sequence_reg[28:25]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[28]_INST_0_i_4 
       (.I0(data11[28]),
        .I1(data10[28]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[28] ),
        .O(\bram_wdata[28]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[28]_INST_0_i_5 
       (.I0(hist_mag_rd_data[28]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[28]),
        .O(data14[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[28]_INST_0_i_6 
       (.I0(var_freq_num[60]),
        .I1(var_freq_num[28]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[60]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[28]),
        .O(\bram_wdata[28]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[28]_INST_0_i_7 
       (.I0(psk_spike_count[28]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[28]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[28]),
        .O(\bram_wdata[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[29]_INST_0 
       (.I0(\bram_wdata[29]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[29]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[31]_INST_0_i_4_n_7 ),
        .O(bram_wdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[29]_INST_0_i_1 
       (.I0(\bram_wdata[29]_INST_0_i_3_n_0 ),
        .I1(data14[29]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[13]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[29]),
        .O(\bram_wdata[29]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[29]_INST_0_i_2 
       (.I0(\bram_wdata[29]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[29]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[29]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[29]_INST_0_i_3 
       (.I0(data11[29]),
        .I1(data10[29]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[29] ),
        .O(\bram_wdata[29]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[29]_INST_0_i_4 
       (.I0(hist_mag_rd_data[29]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[29]),
        .O(data14[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[29]_INST_0_i_5 
       (.I0(var_freq_num[61]),
        .I1(var_freq_num[29]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[61]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[29]),
        .O(\bram_wdata[29]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[29]_INST_0_i_6 
       (.I0(psk_spike_count[29]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[29]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[29]),
        .O(\bram_wdata[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[2]_INST_0 
       (.I0(\bram_wdata[2]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[2]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[4]_INST_0_i_3_n_6 ),
        .O(bram_wdata[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[2]_INST_0_i_1 
       (.I0(\bram_wdata[2]_INST_0_i_3_n_0 ),
        .I1(data14[2]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_sticky),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[2]),
        .O(\bram_wdata[2]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[2]_INST_0_i_2 
       (.I0(\bram_wdata[2]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[2]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[2]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[2]_INST_0_i_3 
       (.I0(data11[2]),
        .I1(data10[2]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\snap_bits_reg_n_0_[2] ),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(snap_bit_count[2]),
        .O(\bram_wdata[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[2]_INST_0_i_4 
       (.I0(hist_mag_rd_data[2]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[2]),
        .O(data14[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[2]_INST_0_i_5 
       (.I0(var_freq_num[34]),
        .I1(var_freq_num[2]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[34]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[2]),
        .O(\bram_wdata[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[2]_INST_0_i_6 
       (.I0(data7[2]),
        .I1(psk_spike_count[2]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(mean_freq_num[2]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(mean_mag_num[2]),
        .O(\bram_wdata[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[30]_INST_0 
       (.I0(\bram_wdata[30]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[30]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[31]_INST_0_i_4_n_6 ),
        .O(bram_wdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[30]_INST_0_i_1 
       (.I0(\bram_wdata[30]_INST_0_i_3_n_0 ),
        .I1(data14[30]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[14]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[30]),
        .O(\bram_wdata[30]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[30]_INST_0_i_2 
       (.I0(\bram_wdata[30]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[30]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[30]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[30]_INST_0_i_3 
       (.I0(data11[30]),
        .I1(data10[30]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[30] ),
        .O(\bram_wdata[30]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[30]_INST_0_i_4 
       (.I0(hist_mag_rd_data[30]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[30]),
        .O(data14[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[30]_INST_0_i_5 
       (.I0(var_freq_num[62]),
        .I1(var_freq_num[30]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[62]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[30]),
        .O(\bram_wdata[30]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[30]_INST_0_i_6 
       (.I0(psk_spike_count[30]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[30]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[30]),
        .O(\bram_wdata[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[31]_INST_0 
       (.I0(\bram_wdata[31]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[31]_INST_0_i_3_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[31]_INST_0_i_4_n_5 ),
        .O(bram_wdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[31]_INST_0_i_1 
       (.I0(\bram_wdata[31]_INST_0_i_5_n_0 ),
        .I1(data14[31]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_snapshot_overrun_count[15]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[31]),
        .O(\bram_wdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[31]_INST_0_i_10 
       (.I0(var_freq_num[63]),
        .I1(var_freq_num[31]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[63]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[31]),
        .O(\bram_wdata[31]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[31]_INST_0_i_11 
       (.I0(psk_flag),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[31]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[31]),
        .O(\bram_wdata[31]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEDF)) 
    \bram_wdata[31]_INST_0_i_2 
       (.I0(word_index_reg__0[5]),
        .I1(word_index_reg__0[4]),
        .I2(word_index_reg__0[3]),
        .I3(word_index_reg__0[2]),
        .I4(word_index_reg__0[1]),
        .I5(word_index_reg__0[0]),
        .O(\bram_wdata[31]_INST_0_i_2_n_0 ));
  MUXF7 \bram_wdata[31]_INST_0_i_3 
       (.I0(\bram_wdata[31]_INST_0_i_10_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_11_n_0 ),
        .O(\bram_wdata[31]_INST_0_i_3_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  CARRY4 \bram_wdata[31]_INST_0_i_4 
       (.CI(\bram_wdata[28]_INST_0_i_3_n_0 ),
        .CO({\NLW_bram_wdata[31]_INST_0_i_4_CO_UNCONNECTED [3:2],\bram_wdata[31]_INST_0_i_4_n_2 ,\bram_wdata[31]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_wdata[31]_INST_0_i_4_O_UNCONNECTED [3],\bram_wdata[31]_INST_0_i_4_n_5 ,\bram_wdata[31]_INST_0_i_4_n_6 ,\bram_wdata[31]_INST_0_i_4_n_7 }),
        .S({1'b0,sequence_reg[31:29]}));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[31]_INST_0_i_5 
       (.I0(data11[31]),
        .I1(data10[31]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[31] ),
        .O(\bram_wdata[31]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[31]_INST_0_i_6 
       (.I0(hist_mag_rd_data[31]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[31]),
        .O(data14[31]));
  LUT6 #(
    .INIT(64'hFF9FFFFFFFFFFF9F)) 
    \bram_wdata[31]_INST_0_i_7 
       (.I0(word_index_reg__0[0]),
        .I1(word_index_reg__0[1]),
        .I2(word_index_reg__0[2]),
        .I3(word_index_reg__0[4]),
        .I4(word_index_reg__0[5]),
        .I5(word_index_reg__0[3]),
        .O(\bram_wdata[31]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \bram_wdata[31]_INST_0_i_8 
       (.I0(\bram_wdata[31]_INST_0_i_9_n_0 ),
        .I1(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .O(\bram_wdata[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6FFF6FFF6F6FF)) 
    \bram_wdata[31]_INST_0_i_9 
       (.I0(word_index_reg__0[3]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[2]),
        .I4(word_index_reg__0[1]),
        .I5(word_index_reg__0[0]),
        .O(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[3]_INST_0 
       (.I0(\bram_wdata[3]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[3]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[4]_INST_0_i_3_n_5 ),
        .O(bram_wdata[3]));
  LUT6 #(
    .INIT(64'hC0AAC0AACFAAC0AA)) 
    \bram_wdata[3]_INST_0_i_1 
       (.I0(\bram_wdata[3]_INST_0_i_3_n_0 ),
        .I1(data14[3]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[31]_INST_0_i_9_n_0 ),
        .I4(data12[3]),
        .I5(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[3]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[3]_INST_0_i_2 
       (.I0(\bram_wdata[3]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[3]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[3]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[3]_INST_0_i_3 
       (.I0(data11[3]),
        .I1(data10[3]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\snap_bits_reg_n_0_[3] ),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(snap_bit_count[3]),
        .O(\bram_wdata[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[3]_INST_0_i_4 
       (.I0(hist_mag_rd_data[3]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[3]),
        .O(data14[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[3]_INST_0_i_5 
       (.I0(var_freq_num[35]),
        .I1(var_freq_num[3]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[35]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[3]),
        .O(\bram_wdata[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[3]_INST_0_i_6 
       (.I0(data7[3]),
        .I1(psk_spike_count[3]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(mean_freq_num[3]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(mean_mag_num[3]),
        .O(\bram_wdata[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[4]_INST_0 
       (.I0(\bram_wdata[4]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[4]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[4]_INST_0_i_3_n_4 ),
        .O(bram_wdata[4]));
  LUT6 #(
    .INIT(64'hC0AAC0AACFAAC0AA)) 
    \bram_wdata[4]_INST_0_i_1 
       (.I0(\bram_wdata[4]_INST_0_i_4_n_0 ),
        .I1(data14[4]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[31]_INST_0_i_9_n_0 ),
        .I4(data12[4]),
        .I5(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[4]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[4]_INST_0_i_2 
       (.I0(\bram_wdata[4]_INST_0_i_6_n_0 ),
        .I1(\bram_wdata[4]_INST_0_i_7_n_0 ),
        .O(\bram_wdata[4]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  CARRY4 \bram_wdata[4]_INST_0_i_3 
       (.CI(1'b0),
        .CO({\bram_wdata[4]_INST_0_i_3_n_0 ,\bram_wdata[4]_INST_0_i_3_n_1 ,\bram_wdata[4]_INST_0_i_3_n_2 ,\bram_wdata[4]_INST_0_i_3_n_3 }),
        .CYINIT(sequence_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_wdata[4]_INST_0_i_3_n_4 ,\bram_wdata[4]_INST_0_i_3_n_5 ,\bram_wdata[4]_INST_0_i_3_n_6 ,\bram_wdata[4]_INST_0_i_3_n_7 }),
        .S(sequence_reg[4:1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[4]_INST_0_i_4 
       (.I0(data11[4]),
        .I1(data10[4]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\snap_bits_reg_n_0_[4] ),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(snap_bit_count[4]),
        .O(\bram_wdata[4]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[4]_INST_0_i_5 
       (.I0(hist_mag_rd_data[4]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[4]),
        .O(data14[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[4]_INST_0_i_6 
       (.I0(var_freq_num[36]),
        .I1(var_freq_num[4]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[36]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[4]),
        .O(\bram_wdata[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[4]_INST_0_i_7 
       (.I0(data7[4]),
        .I1(psk_spike_count[4]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(mean_freq_num[4]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(mean_mag_num[4]),
        .O(\bram_wdata[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[5]_INST_0 
       (.I0(\bram_wdata[5]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[5]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[8]_INST_0_i_3_n_7 ),
        .O(bram_wdata[5]));
  LUT6 #(
    .INIT(64'hC0AAC0AACFAAC0AA)) 
    \bram_wdata[5]_INST_0_i_1 
       (.I0(\bram_wdata[5]_INST_0_i_3_n_0 ),
        .I1(data14[5]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[31]_INST_0_i_9_n_0 ),
        .I4(data12[5]),
        .I5(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[5]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[5]_INST_0_i_2 
       (.I0(\bram_wdata[5]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[5]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[5]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[5]_INST_0_i_3 
       (.I0(data11[5]),
        .I1(data10[5]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\snap_bits_reg_n_0_[5] ),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(snap_bit_count[5]),
        .O(\bram_wdata[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[5]_INST_0_i_4 
       (.I0(hist_mag_rd_data[5]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[5]),
        .O(data14[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[5]_INST_0_i_5 
       (.I0(var_freq_num[37]),
        .I1(var_freq_num[5]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[37]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[5]),
        .O(\bram_wdata[5]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[5]_INST_0_i_6 
       (.I0(psk_spike_count[5]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[5]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[5]),
        .O(\bram_wdata[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[6]_INST_0 
       (.I0(\bram_wdata[6]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[6]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[8]_INST_0_i_3_n_6 ),
        .O(bram_wdata[6]));
  LUT6 #(
    .INIT(64'hC0AAC0AACFAAC0AA)) 
    \bram_wdata[6]_INST_0_i_1 
       (.I0(\bram_wdata[6]_INST_0_i_3_n_0 ),
        .I1(data14[6]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[31]_INST_0_i_9_n_0 ),
        .I4(data12[6]),
        .I5(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[6]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[6]_INST_0_i_2 
       (.I0(\bram_wdata[6]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[6]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[6]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[6]_INST_0_i_3 
       (.I0(data11[6]),
        .I1(data10[6]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\snap_bits_reg_n_0_[6] ),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(snap_bit_count[6]),
        .O(\bram_wdata[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[6]_INST_0_i_4 
       (.I0(hist_mag_rd_data[6]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[6]),
        .O(data14[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[6]_INST_0_i_5 
       (.I0(var_freq_num[38]),
        .I1(var_freq_num[6]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[38]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[6]),
        .O(\bram_wdata[6]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[6]_INST_0_i_6 
       (.I0(psk_spike_count[6]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[6]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[6]),
        .O(\bram_wdata[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[7]_INST_0 
       (.I0(\bram_wdata[7]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[7]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[8]_INST_0_i_3_n_5 ),
        .O(bram_wdata[7]));
  LUT6 #(
    .INIT(64'hC0AAC0AACFAAC0AA)) 
    \bram_wdata[7]_INST_0_i_1 
       (.I0(\bram_wdata[7]_INST_0_i_3_n_0 ),
        .I1(data14[7]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[31]_INST_0_i_9_n_0 ),
        .I4(data12[7]),
        .I5(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[7]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[7]_INST_0_i_2 
       (.I0(\bram_wdata[7]_INST_0_i_7_n_0 ),
        .I1(\bram_wdata[7]_INST_0_i_8_n_0 ),
        .O(\bram_wdata[7]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[7]_INST_0_i_3 
       (.I0(data11[7]),
        .I1(data10[7]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\snap_bits_reg_n_0_[7] ),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(snap_bit_count[7]),
        .O(\bram_wdata[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[7]_INST_0_i_4 
       (.I0(hist_mag_rd_data[7]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[7]),
        .O(data14[7]));
  LUT5 #(
    .INIT(32'hEBFFFFEB)) 
    \bram_wdata[7]_INST_0_i_5 
       (.I0(word_index_reg__0[4]),
        .I1(word_index_reg__0[0]),
        .I2(word_index_reg__0[1]),
        .I3(word_index_reg__0[3]),
        .I4(word_index_reg__0[5]),
        .O(\bram_wdata[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111000000001110)) 
    \bram_wdata[7]_INST_0_i_6 
       (.I0(word_index_reg__0[4]),
        .I1(word_index_reg__0[0]),
        .I2(word_index_reg__0[2]),
        .I3(word_index_reg__0[1]),
        .I4(word_index_reg__0[3]),
        .I5(word_index_reg__0[5]),
        .O(\bram_wdata[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[7]_INST_0_i_7 
       (.I0(var_freq_num[39]),
        .I1(var_freq_num[7]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[39]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[7]),
        .O(\bram_wdata[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[7]_INST_0_i_8 
       (.I0(psk_spike_count[7]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[7]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[7]),
        .O(\bram_wdata[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[8]_INST_0 
       (.I0(\bram_wdata[8]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[8]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[8]_INST_0_i_3_n_4 ),
        .O(bram_wdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[8]_INST_0_i_1 
       (.I0(\bram_wdata[8]_INST_0_i_4_n_0 ),
        .I1(data14[8]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_dropped_bits[0]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[8]),
        .O(\bram_wdata[8]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[8]_INST_0_i_2 
       (.I0(\bram_wdata[8]_INST_0_i_6_n_0 ),
        .I1(\bram_wdata[8]_INST_0_i_7_n_0 ),
        .O(\bram_wdata[8]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  CARRY4 \bram_wdata[8]_INST_0_i_3 
       (.CI(\bram_wdata[4]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[8]_INST_0_i_3_n_0 ,\bram_wdata[8]_INST_0_i_3_n_1 ,\bram_wdata[8]_INST_0_i_3_n_2 ,\bram_wdata[8]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_wdata[8]_INST_0_i_3_n_4 ,\bram_wdata[8]_INST_0_i_3_n_5 ,\bram_wdata[8]_INST_0_i_3_n_6 ,\bram_wdata[8]_INST_0_i_3_n_7 }),
        .S(sequence_reg[8:5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[8]_INST_0_i_4 
       (.I0(data11[8]),
        .I1(data10[8]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[8] ),
        .O(\bram_wdata[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[8]_INST_0_i_5 
       (.I0(hist_mag_rd_data[8]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[8]),
        .O(data14[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[8]_INST_0_i_6 
       (.I0(var_freq_num[40]),
        .I1(var_freq_num[8]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[40]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[8]),
        .O(\bram_wdata[8]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[8]_INST_0_i_7 
       (.I0(psk_spike_count[8]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[8]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[8]),
        .O(\bram_wdata[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[9]_INST_0 
       (.I0(\bram_wdata[9]_INST_0_i_1_n_0 ),
        .I1(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\bram_wdata[9]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(\bram_wdata[12]_INST_0_i_3_n_7 ),
        .O(bram_wdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[9]_INST_0_i_1 
       (.I0(\bram_wdata[9]_INST_0_i_3_n_0 ),
        .I1(data14[9]),
        .I2(\bram_wdata[31]_INST_0_i_7_n_0 ),
        .I3(snap_dropped_bits[1]),
        .I4(\bram_wdata[31]_INST_0_i_8_n_0 ),
        .I5(data12[9]),
        .O(\bram_wdata[9]_INST_0_i_1_n_0 ));
  MUXF7 \bram_wdata[9]_INST_0_i_2 
       (.I0(\bram_wdata[9]_INST_0_i_5_n_0 ),
        .I1(\bram_wdata[9]_INST_0_i_6_n_0 ),
        .O(\bram_wdata[9]_INST_0_i_2_n_0 ),
        .S(\bram_wdata[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bram_wdata[9]_INST_0_i_3 
       (.I0(data11[9]),
        .I1(data10[9]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(\snap_bits_reg_n_0_[9] ),
        .O(\bram_wdata[9]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h322C0220)) 
    \bram_wdata[9]_INST_0_i_4 
       (.I0(hist_mag_rd_data[9]),
        .I1(word_index_reg__0[5]),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[3]),
        .I4(hist_freq_rd_data[9]),
        .O(data14[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[9]_INST_0_i_5 
       (.I0(var_freq_num[41]),
        .I1(var_freq_num[9]),
        .I2(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I3(var_mag_num[41]),
        .I4(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I5(var_mag_num[9]),
        .O(\bram_wdata[9]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bram_wdata[9]_INST_0_i_6 
       (.I0(psk_spike_count[9]),
        .I1(\bram_wdata[7]_INST_0_i_5_n_0 ),
        .I2(mean_freq_num[9]),
        .I3(\bram_wdata[7]_INST_0_i_6_n_0 ),
        .I4(mean_mag_num[9]),
        .O(\bram_wdata[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_we[0]_INST_0 
       (.I0(busy_reg_0),
        .I1(commit),
        .O(bram_en));
  LUT1 #(
    .INIT(2'h1)) 
    busy_i_1
       (.I0(aresetn),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h02F2)) 
    busy_i_2
       (.I0(frame_done),
        .I1(commit),
        .I2(busy_reg_0),
        .I3(busy7_out),
        .O(busy_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    busy_i_3
       (.I0(busy_reg_0),
        .I1(word_index_reg__0[2]),
        .I2(word_index_reg__0[5]),
        .I3(word_index_reg__0[3]),
        .I4(word_index_reg__0[1]),
        .I5(\word_index[5]_i_4_n_0 ),
        .O(busy7_out));
  FDRE busy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(busy_i_2_n_0),
        .Q(busy_reg_0),
        .R(clear));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[0]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[0]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[112]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[0]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[100]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[100]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[116]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[100]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[101]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[101]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[117]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[101]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[102]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[102]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[118]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[102]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[103]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[103]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[119]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[103]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[104]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[104]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[120]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[104]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[105]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[105]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[121]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[105]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[106]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[106]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[122]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[106]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[107]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[107]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[123]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[107]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[108]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[108]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[124]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[108]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[109]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[109]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[125]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[109]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[10]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[10]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[122]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[10]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[110]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[110]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[126]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[110]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[111]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[111]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[127]_i_3_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[111]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \collect_bits[111]_i_2 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[6]),
        .I2(collect_count[4]),
        .I3(collect_count[5]),
        .O(\collect_bits[111]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[112]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[112]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[112]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[112]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \collect_bits[112]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[112]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[113]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[113]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[113]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[113]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \collect_bits[113]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[1]),
        .I3(collect_count[0]),
        .O(\collect_bits[113]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[114]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[114]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[114]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[114]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \collect_bits[114]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[114]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[115]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[115]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[115]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[115]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \collect_bits[115]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[115]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[116]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[116]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[116]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[116]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \collect_bits[116]_i_2 
       (.I0(collect_count[3]),
        .I1(collect_count[2]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[116]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[117]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[117]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[117]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[117]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \collect_bits[117]_i_2 
       (.I0(collect_count[3]),
        .I1(collect_count[2]),
        .I2(collect_count[1]),
        .I3(collect_count[0]),
        .O(\collect_bits[117]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[118]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[118]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[118]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[118]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \collect_bits[118]_i_2 
       (.I0(collect_count[3]),
        .I1(collect_count[2]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[118]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[119]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[119]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[119]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[119]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \collect_bits[119]_i_2 
       (.I0(collect_count[3]),
        .I1(collect_count[2]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[119]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[11]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[11]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[123]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[11]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[120]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[120]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[120]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[120]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \collect_bits[120]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[120]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[121]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[121]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[121]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[121]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \collect_bits[121]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[1]),
        .I3(collect_count[0]),
        .O(\collect_bits[121]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[122]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[122]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[122]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[122]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \collect_bits[122]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[122]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[123]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[123]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[123]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[123]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \collect_bits[123]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[123]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[124]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[124]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[124]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[124]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \collect_bits[124]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[124]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[125]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[125]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[125]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[125]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \collect_bits[125]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[1]),
        .I3(collect_count[0]),
        .O(\collect_bits[125]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[126]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[126]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[126]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[126]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \collect_bits[126]_i_2 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[126]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[127]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[127]),
        .I2(\collect_bits[127]_i_2_n_0 ),
        .I3(\collect_bits[127]_i_3_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[127]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \collect_bits[127]_i_2 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[6]),
        .I2(collect_count[4]),
        .I3(collect_count[5]),
        .O(\collect_bits[127]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \collect_bits[127]_i_3 
       (.I0(collect_count[2]),
        .I1(collect_count[3]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .O(\collect_bits[127]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[12]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[12]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[124]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[12]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[13]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[13]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[125]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[13]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[14]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[14]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[126]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[14]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[15]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[15]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[127]_i_3_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[15]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \collect_bits[15]_i_2 
       (.I0(collect_count[6]),
        .I1(\collect_count_reg[7]_rep__1_n_0 ),
        .I2(collect_count[4]),
        .I3(collect_count[5]),
        .O(\collect_bits[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[16]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[16]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[112]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[16]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[17]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[17]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[113]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[17]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[18]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[18]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[114]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[18]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[19]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[19]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[115]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[19]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[1]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[1]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[113]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[1]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[20]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[20]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[116]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[20]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[21]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[21]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[117]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[21]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[22]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[22]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[118]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[22]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[23]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[23]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[119]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[23]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[24]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[24]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[120]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[24]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[25]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[25]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[121]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[25]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[26]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[26]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[122]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[26]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[27]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[27]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[123]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[27]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[28]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[28]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[124]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[28]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[29]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[29]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[125]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[29]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[2]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[2]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[114]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[2]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[30]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[30]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[126]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[30]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[31]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[31]),
        .I2(\collect_bits[31]_i_2_n_0 ),
        .I3(\collect_bits[127]_i_3_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[31]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \collect_bits[31]_i_2 
       (.I0(collect_count[6]),
        .I1(\collect_count_reg[7]_rep__1_n_0 ),
        .I2(collect_count[5]),
        .I3(collect_count[4]),
        .O(\collect_bits[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[32]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[32]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[112]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[32]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[33]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[33]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[113]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[33]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[34]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[34]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[114]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[34]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[35]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[35]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[115]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[35]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[36]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[36]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[116]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[36]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[37]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[37]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[117]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[37]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[38]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[38]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[118]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[38]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[39]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[39]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[119]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[39]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[3]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[3]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[115]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[3]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[40]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[40]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[120]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[40]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[41]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[41]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[121]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[41]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[42]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[42]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[122]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[42]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[43]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[43]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[123]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[43]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[44]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[44]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[124]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[44]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[45]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[45]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[125]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[45]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[46]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[46]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[126]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[46]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[47]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[47]),
        .I2(\collect_bits[47]_i_2_n_0 ),
        .I3(\collect_bits[127]_i_3_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[47]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \collect_bits[47]_i_2 
       (.I0(collect_count[6]),
        .I1(\collect_count_reg[7]_rep__0_n_0 ),
        .I2(collect_count[4]),
        .I3(collect_count[5]),
        .O(\collect_bits[47]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[48]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[48]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[112]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[48]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[49]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[49]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[113]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[49]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[4]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[4]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[116]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[4]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[50]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[50]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[114]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[50]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[51]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[51]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[115]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[51]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[52]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[52]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[116]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[52]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[53]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[53]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[117]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[53]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[54]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[54]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[118]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[54]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[55]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[55]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[119]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[55]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[56]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[56]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[120]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[56]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[57]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[57]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[121]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[57]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[58]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[58]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[122]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[58]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[59]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[59]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[123]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[59]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[5]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[5]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[117]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[5]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[60]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[60]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[124]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[60]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[61]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[61]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[125]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[61]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[62]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[62]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[126]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[62]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[63]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[63]),
        .I2(\collect_bits[63]_i_2_n_0 ),
        .I3(\collect_bits[127]_i_3_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[63]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \collect_bits[63]_i_2 
       (.I0(collect_count[6]),
        .I1(\collect_count_reg[7]_rep__0_n_0 ),
        .I2(collect_count[4]),
        .I3(collect_count[5]),
        .O(\collect_bits[63]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[64]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[64]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[112]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[64]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[65]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[65]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[113]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[65]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[66]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[66]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[114]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[66]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[67]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[67]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[115]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[67]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[68]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[68]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[116]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[68]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[69]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[69]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[117]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[69]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[6]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[6]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[118]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[6]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[70]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[70]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[118]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[70]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[71]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[71]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[119]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[71]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[72]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[72]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[120]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[72]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[73]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[73]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[121]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[73]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[74]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[74]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[122]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[74]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[75]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[75]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[123]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[75]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[76]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[76]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[124]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[76]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[77]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[77]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[125]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[77]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[78]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[78]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[126]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[78]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[79]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[79]),
        .I2(\collect_bits[79]_i_2_n_0 ),
        .I3(\collect_bits[127]_i_3_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[79]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \collect_bits[79]_i_2 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_count[6]),
        .I2(collect_count[4]),
        .I3(collect_count[5]),
        .O(\collect_bits[79]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[7]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[7]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[119]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[7]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[80]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[80]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[112]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[80]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[81]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[81]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[113]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[81]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[82]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[82]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[114]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[82]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[83]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[83]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[115]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[83]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[84]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[84]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[116]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[84]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[85]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[85]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[117]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[85]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[86]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[86]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[118]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[86]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[87]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(collect_bits[87]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[119]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[87]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[88]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[88]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[120]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[88]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[89]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[89]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[121]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[89]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[8]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[8]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[120]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[8]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[90]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[90]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[122]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[90]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[91]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[91]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[123]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[91]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[92]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[92]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[124]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[92]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[93]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[93]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[125]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[93]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[94]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[94]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[126]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[94]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[95]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[95]),
        .I2(\collect_bits[95]_i_2_n_0 ),
        .I3(\collect_bits[127]_i_3_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[95]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \collect_bits[95]_i_2 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[6]),
        .I2(collect_count[5]),
        .I3(collect_count[4]),
        .O(\collect_bits[95]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[96]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[96]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[112]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[96]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[97]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[97]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[113]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[97]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[98]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[98]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[114]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[98]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[99]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_bits[99]),
        .I2(\collect_bits[111]_i_2_n_0 ),
        .I3(\collect_bits[115]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[99]));
  LUT5 #(
    .INIT(32'hCCCDCCC8)) 
    \collect_bits[9]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(collect_bits[9]),
        .I2(\collect_bits[15]_i_2_n_0 ),
        .I3(\collect_bits[121]_i_2_n_0 ),
        .I4(bpsk_bit_data),
        .O(collect_bits_next__255[9]));
  FDRE \collect_bits_reg[0] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[0]),
        .Q(collect_bits[0]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[100] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[100]),
        .Q(collect_bits[100]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[101] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[101]),
        .Q(collect_bits[101]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[102] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[102]),
        .Q(collect_bits[102]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[103] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[103]),
        .Q(collect_bits[103]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[104] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[104]),
        .Q(collect_bits[104]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[105] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[105]),
        .Q(collect_bits[105]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[106] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[106]),
        .Q(collect_bits[106]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[107] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[107]),
        .Q(collect_bits[107]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[108] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[108]),
        .Q(collect_bits[108]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[109] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[109]),
        .Q(collect_bits[109]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[10] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[10]),
        .Q(collect_bits[10]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[110] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[110]),
        .Q(collect_bits[110]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[111] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[111]),
        .Q(collect_bits[111]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[112] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[112]),
        .Q(collect_bits[112]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[113] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[113]),
        .Q(collect_bits[113]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[114] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[114]),
        .Q(collect_bits[114]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[115] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[115]),
        .Q(collect_bits[115]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[116] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[116]),
        .Q(collect_bits[116]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[117] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[117]),
        .Q(collect_bits[117]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[118] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[118]),
        .Q(collect_bits[118]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[119] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[119]),
        .Q(collect_bits[119]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[11] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[11]),
        .Q(collect_bits[11]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[120] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[120]),
        .Q(collect_bits[120]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[121] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[121]),
        .Q(collect_bits[121]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[122] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[122]),
        .Q(collect_bits[122]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[123] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[123]),
        .Q(collect_bits[123]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[124] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[124]),
        .Q(collect_bits[124]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[125] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[125]),
        .Q(collect_bits[125]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[126] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[126]),
        .Q(collect_bits[126]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[127] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[127]),
        .Q(collect_bits[127]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[12] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[12]),
        .Q(collect_bits[12]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[13] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[13]),
        .Q(collect_bits[13]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[14] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[14]),
        .Q(collect_bits[14]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[15] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[15]),
        .Q(collect_bits[15]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[16] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[16]),
        .Q(collect_bits[16]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[17] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[17]),
        .Q(collect_bits[17]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[18] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[18]),
        .Q(collect_bits[18]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[19] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[19]),
        .Q(collect_bits[19]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[1] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[1]),
        .Q(collect_bits[1]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[20] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[20]),
        .Q(collect_bits[20]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[21] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[21]),
        .Q(collect_bits[21]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[22] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[22]),
        .Q(collect_bits[22]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[23] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[23]),
        .Q(collect_bits[23]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[24] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[24]),
        .Q(collect_bits[24]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[25] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[25]),
        .Q(collect_bits[25]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[26] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[26]),
        .Q(collect_bits[26]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[27] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[27]),
        .Q(collect_bits[27]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[28] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[28]),
        .Q(collect_bits[28]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[29] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[29]),
        .Q(collect_bits[29]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[2] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[2]),
        .Q(collect_bits[2]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[30] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[30]),
        .Q(collect_bits[30]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[31] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[31]),
        .Q(collect_bits[31]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[32] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[32]),
        .Q(collect_bits[32]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[33] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[33]),
        .Q(collect_bits[33]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[34] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[34]),
        .Q(collect_bits[34]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[35] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[35]),
        .Q(collect_bits[35]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[36] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[36]),
        .Q(collect_bits[36]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[37] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[37]),
        .Q(collect_bits[37]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[38] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[38]),
        .Q(collect_bits[38]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[39] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[39]),
        .Q(collect_bits[39]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[3] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[3]),
        .Q(collect_bits[3]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[40] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[40]),
        .Q(collect_bits[40]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[41] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[41]),
        .Q(collect_bits[41]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[42] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[42]),
        .Q(collect_bits[42]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[43] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[43]),
        .Q(collect_bits[43]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[44] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[44]),
        .Q(collect_bits[44]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[45] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[45]),
        .Q(collect_bits[45]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[46] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[46]),
        .Q(collect_bits[46]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[47] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[47]),
        .Q(collect_bits[47]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[48] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[48]),
        .Q(collect_bits[48]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[49] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[49]),
        .Q(collect_bits[49]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[4] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[4]),
        .Q(collect_bits[4]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[50] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[50]),
        .Q(collect_bits[50]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[51] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[51]),
        .Q(collect_bits[51]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[52] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[52]),
        .Q(collect_bits[52]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[53] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[53]),
        .Q(collect_bits[53]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[54] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[54]),
        .Q(collect_bits[54]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[55] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[55]),
        .Q(collect_bits[55]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[56] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[56]),
        .Q(collect_bits[56]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[57] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[57]),
        .Q(collect_bits[57]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[58] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[58]),
        .Q(collect_bits[58]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[59] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[59]),
        .Q(collect_bits[59]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[5] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[5]),
        .Q(collect_bits[5]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[60] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[60]),
        .Q(collect_bits[60]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[61] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[61]),
        .Q(collect_bits[61]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[62] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[62]),
        .Q(collect_bits[62]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[63] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[63]),
        .Q(collect_bits[63]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[64] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[64]),
        .Q(collect_bits[64]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[65] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[65]),
        .Q(collect_bits[65]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[66] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[66]),
        .Q(collect_bits[66]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[67] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[67]),
        .Q(collect_bits[67]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[68] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[68]),
        .Q(collect_bits[68]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[69] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[69]),
        .Q(collect_bits[69]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[6] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[6]),
        .Q(collect_bits[6]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[70] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[70]),
        .Q(collect_bits[70]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[71] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[71]),
        .Q(collect_bits[71]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[72] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[72]),
        .Q(collect_bits[72]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[73] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[73]),
        .Q(collect_bits[73]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[74] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[74]),
        .Q(collect_bits[74]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[75] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[75]),
        .Q(collect_bits[75]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[76] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[76]),
        .Q(collect_bits[76]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[77] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[77]),
        .Q(collect_bits[77]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[78] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[78]),
        .Q(collect_bits[78]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[79] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[79]),
        .Q(collect_bits[79]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[7] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[7]),
        .Q(collect_bits[7]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[80] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[80]),
        .Q(collect_bits[80]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[81] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[81]),
        .Q(collect_bits[81]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[82] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[82]),
        .Q(collect_bits[82]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[83] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[83]),
        .Q(collect_bits[83]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[84] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[84]),
        .Q(collect_bits[84]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[85] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[85]),
        .Q(collect_bits[85]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[86] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[86]),
        .Q(collect_bits[86]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[87] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[87]),
        .Q(collect_bits[87]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[88] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[88]),
        .Q(collect_bits[88]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[89] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[89]),
        .Q(collect_bits[89]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[8] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[8]),
        .Q(collect_bits[8]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[90] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[90]),
        .Q(collect_bits[90]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[91] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[91]),
        .Q(collect_bits[91]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[92] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[92]),
        .Q(collect_bits[92]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[93] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[93]),
        .Q(collect_bits[93]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[94] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[94]),
        .Q(collect_bits[94]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[95] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[95]),
        .Q(collect_bits[95]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[96] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[96]),
        .Q(collect_bits[96]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[97] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[97]),
        .Q(collect_bits[97]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[98] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[98]),
        .Q(collect_bits[98]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[99] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[99]),
        .Q(collect_bits[99]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_bits_reg[9] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_bits_next__255[9]),
        .Q(collect_bits[9]),
        .R(\collect_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \collect_count[0]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[0]),
        .O(\collect_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \collect_count[1]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[0]),
        .I2(collect_count[1]),
        .O(collect_count_next__15[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \collect_count[2]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[0]),
        .I2(collect_count[1]),
        .I3(collect_count[2]),
        .O(collect_count_next__15[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \collect_count[3]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[1]),
        .I2(collect_count[0]),
        .I3(collect_count[2]),
        .I4(collect_count[3]),
        .O(collect_count_next__15[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \collect_count[4]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[2]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .I4(collect_count[3]),
        .I5(collect_count[4]),
        .O(collect_count_next__15[4]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \collect_count[5]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[3]),
        .I2(\collect_count[5]_i_2_n_0 ),
        .I3(collect_count[2]),
        .I4(collect_count[4]),
        .I5(collect_count[5]),
        .O(collect_count_next__15[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \collect_count[5]_i_2 
       (.I0(collect_count[1]),
        .I1(collect_count[0]),
        .O(\collect_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \collect_count[6]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_count[7]_i_3_n_0 ),
        .I2(collect_count[6]),
        .O(collect_count_next__15[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \collect_count[7]_i_1 
       (.I0(frame_done),
        .I1(aresetn),
        .O(\collect_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \collect_count[7]_i_2 
       (.I0(collect_count[7]),
        .I1(collect_count[6]),
        .I2(\collect_count[7]_i_3_n_0 ),
        .O(collect_count_next__15[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \collect_count[7]_i_3 
       (.I0(collect_count[5]),
        .I1(collect_count[3]),
        .I2(collect_count[1]),
        .I3(collect_count[0]),
        .I4(collect_count[2]),
        .I5(collect_count[4]),
        .O(\collect_count[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \collect_count[7]_rep__0_i_1 
       (.I0(collect_count[7]),
        .I1(collect_count[6]),
        .I2(\collect_count[7]_i_3_n_0 ),
        .O(\collect_count[7]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \collect_count[7]_rep__1_i_1 
       (.I0(collect_count[7]),
        .I1(collect_count[6]),
        .I2(\collect_count[7]_i_3_n_0 ),
        .O(\collect_count[7]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \collect_count[7]_rep_i_1 
       (.I0(collect_count[7]),
        .I1(collect_count[6]),
        .I2(\collect_count[7]_i_3_n_0 ),
        .O(\collect_count[7]_rep_i_1_n_0 ));
  FDRE \collect_count_reg[0] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(\collect_count[0]_i_1_n_0 ),
        .Q(collect_count[0]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_count_reg[1] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_count_next__15[1]),
        .Q(collect_count[1]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_count_reg[2] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_count_next__15[2]),
        .Q(collect_count[2]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_count_reg[3] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_count_next__15[3]),
        .Q(collect_count[3]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_count_reg[4] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_count_next__15[4]),
        .Q(collect_count[4]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_count_reg[5] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_count_next__15[5]),
        .Q(collect_count[5]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_count_reg[6] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_count_next__15[6]),
        .Q(collect_count[6]),
        .R(\collect_count[7]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "collect_count_reg[7]" *) 
  FDRE \collect_count_reg[7] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_count_next__15[7]),
        .Q(collect_count[7]),
        .R(\collect_count[7]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "collect_count_reg[7]" *) 
  FDRE \collect_count_reg[7]_rep 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(\collect_count[7]_rep_i_1_n_0 ),
        .Q(\collect_count_reg[7]_rep_n_0 ),
        .R(\collect_count[7]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "collect_count_reg[7]" *) 
  FDRE \collect_count_reg[7]_rep__0 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(\collect_count[7]_rep__0_i_1_n_0 ),
        .Q(\collect_count_reg[7]_rep__0_n_0 ),
        .R(\collect_count[7]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "collect_count_reg[7]" *) 
  FDRE \collect_count_reg[7]_rep__1 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(\collect_count[7]_rep__1_i_1_n_0 ),
        .Q(\collect_count_reg[7]_rep__1_n_0 ),
        .R(\collect_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \collect_drop_count[0]_i_1 
       (.I0(\collect_drop_count[7]_i_3_n_0 ),
        .I1(collect_count[7]),
        .I2(collect_drop_count[0]),
        .O(collect_drop_count_next__23[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \collect_drop_count[1]_i_1 
       (.I0(collect_drop_count[0]),
        .I1(\collect_drop_count[7]_i_3_n_0 ),
        .I2(collect_count[7]),
        .I3(collect_drop_count[1]),
        .O(collect_drop_count_next__23[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \collect_drop_count[2]_i_1 
       (.I0(collect_drop_count[1]),
        .I1(collect_drop_count[0]),
        .I2(\collect_drop_count[7]_i_3_n_0 ),
        .I3(collect_count[7]),
        .I4(collect_drop_count[2]),
        .O(collect_drop_count_next__23[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \collect_drop_count[3]_i_1 
       (.I0(collect_drop_count[0]),
        .I1(collect_drop_count[1]),
        .I2(collect_drop_count[2]),
        .I3(\collect_drop_count[7]_i_3_n_0 ),
        .I4(collect_count[7]),
        .I5(collect_drop_count[3]),
        .O(collect_drop_count_next__23[3]));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \collect_drop_count[4]_i_1 
       (.I0(collect_drop_count[2]),
        .I1(\collect_drop_count[4]_i_2_n_0 ),
        .I2(collect_drop_count[3]),
        .I3(\collect_drop_count[7]_i_3_n_0 ),
        .I4(collect_count[7]),
        .I5(collect_drop_count[4]),
        .O(collect_drop_count_next__23[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \collect_drop_count[4]_i_2 
       (.I0(collect_drop_count[0]),
        .I1(collect_drop_count[1]),
        .O(\collect_drop_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \collect_drop_count[5]_i_1 
       (.I0(\collect_drop_count[5]_i_2_n_0 ),
        .I1(\collect_drop_count[7]_i_3_n_0 ),
        .I2(collect_count[7]),
        .I3(collect_drop_count[5]),
        .O(collect_drop_count_next__23[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \collect_drop_count[5]_i_2 
       (.I0(collect_drop_count[4]),
        .I1(collect_drop_count[2]),
        .I2(collect_drop_count[1]),
        .I3(collect_drop_count[0]),
        .I4(collect_drop_count[3]),
        .O(\collect_drop_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \collect_drop_count[6]_i_1 
       (.I0(\collect_drop_count[7]_i_2_n_0 ),
        .I1(\collect_drop_count[7]_i_3_n_0 ),
        .I2(collect_count[7]),
        .I3(collect_drop_count[6]),
        .O(collect_drop_count_next__23[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \collect_drop_count[7]_i_1 
       (.I0(\collect_drop_count[7]_i_2_n_0 ),
        .I1(collect_drop_count[6]),
        .I2(\collect_drop_count[7]_i_3_n_0 ),
        .I3(collect_count[7]),
        .I4(collect_drop_count[7]),
        .O(collect_drop_count_next__23[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \collect_drop_count[7]_i_2 
       (.I0(collect_drop_count[5]),
        .I1(collect_drop_count[3]),
        .I2(collect_drop_count[0]),
        .I3(collect_drop_count[1]),
        .I4(collect_drop_count[2]),
        .I5(collect_drop_count[4]),
        .O(\collect_drop_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \collect_drop_count[7]_i_3 
       (.I0(collect_drop_count[2]),
        .I1(collect_drop_count[3]),
        .I2(collect_drop_count[0]),
        .I3(collect_drop_count[1]),
        .I4(\collect_drop_count[7]_i_4_n_0 ),
        .O(\collect_drop_count[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \collect_drop_count[7]_i_4 
       (.I0(collect_drop_count[5]),
        .I1(collect_drop_count[4]),
        .I2(collect_drop_count[6]),
        .I3(collect_drop_count[7]),
        .O(\collect_drop_count[7]_i_4_n_0 ));
  FDRE \collect_drop_count_reg[0] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_drop_count_next__23[0]),
        .Q(collect_drop_count[0]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_drop_count_reg[1] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_drop_count_next__23[1]),
        .Q(collect_drop_count[1]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_drop_count_reg[2] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_drop_count_next__23[2]),
        .Q(collect_drop_count[2]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_drop_count_reg[3] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_drop_count_next__23[3]),
        .Q(collect_drop_count[3]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_drop_count_reg[4] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_drop_count_next__23[4]),
        .Q(collect_drop_count[4]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_drop_count_reg[5] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_drop_count_next__23[5]),
        .Q(collect_drop_count[5]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_drop_count_reg[6] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_drop_count_next__23[6]),
        .Q(collect_drop_count[6]),
        .R(\collect_count[7]_i_1_n_0 ));
  FDRE \collect_drop_count_reg[7] 
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_drop_count_next__23[7]),
        .Q(collect_drop_count[7]),
        .R(\collect_count[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    collect_overflow_i_1
       (.I0(collect_count[7]),
        .I1(collect_overflow),
        .O(collect_overflow_i_1_n_0));
  FDRE collect_overflow_reg
       (.C(aclk),
        .CE(bpsk_bit_valid),
        .D(collect_overflow_i_1_n_0),
        .Q(collect_overflow),
        .R(\collect_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFDC0)) 
    commit_i_1
       (.I0(frame_done),
        .I1(commit),
        .I2(busy_reg_0),
        .I3(busy7_out),
        .O(commit_i_1_n_0));
  FDRE commit_reg
       (.C(aclk),
        .CE(1'b1),
        .D(commit_i_1_n_0),
        .Q(commit),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000008080000000)) 
    \hist_freq_rd_addr[0]_INST_0 
       (.I0(busy_reg_0),
        .I1(\hist_mag_rd_addr[3]_INST_0_i_1_n_0 ),
        .I2(word_index_reg__0[0]),
        .I3(word_index_reg__0[3]),
        .I4(word_index_reg__0[4]),
        .I5(word_index_reg__0[5]),
        .O(hist_freq_rd_addr[0]));
  LUT6 #(
    .INIT(64'h0000008080000000)) 
    \hist_freq_rd_addr[1]_INST_0 
       (.I0(busy_reg_0),
        .I1(\hist_mag_rd_addr[3]_INST_0_i_1_n_0 ),
        .I2(word_index_reg__0[1]),
        .I3(word_index_reg__0[3]),
        .I4(word_index_reg__0[4]),
        .I5(word_index_reg__0[5]),
        .O(hist_freq_rd_addr[1]));
  LUT6 #(
    .INIT(64'h0000008080000000)) 
    \hist_freq_rd_addr[2]_INST_0 
       (.I0(busy_reg_0),
        .I1(\hist_mag_rd_addr[3]_INST_0_i_1_n_0 ),
        .I2(word_index_reg__0[2]),
        .I3(word_index_reg__0[3]),
        .I4(word_index_reg__0[4]),
        .I5(word_index_reg__0[5]),
        .O(hist_freq_rd_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \hist_freq_rd_addr[3]_INST_0 
       (.I0(busy_reg_0),
        .I1(\hist_mag_rd_addr[3]_INST_0_i_1_n_0 ),
        .I2(word_index_reg__0[3]),
        .I3(word_index_reg__0[4]),
        .I4(word_index_reg__0[5]),
        .O(hist_freq_rd_addr[3]));
  LUT6 #(
    .INIT(64'h0000088000000000)) 
    \hist_mag_rd_addr[0]_INST_0 
       (.I0(busy_reg_0),
        .I1(\hist_mag_rd_addr[3]_INST_0_i_1_n_0 ),
        .I2(word_index_reg__0[3]),
        .I3(word_index_reg__0[4]),
        .I4(word_index_reg__0[5]),
        .I5(word_index_reg__0[0]),
        .O(hist_mag_rd_addr[0]));
  LUT6 #(
    .INIT(64'h0000088000000000)) 
    \hist_mag_rd_addr[1]_INST_0 
       (.I0(busy_reg_0),
        .I1(\hist_mag_rd_addr[3]_INST_0_i_1_n_0 ),
        .I2(word_index_reg__0[3]),
        .I3(word_index_reg__0[4]),
        .I4(word_index_reg__0[5]),
        .I5(word_index_reg__0[1]),
        .O(hist_mag_rd_addr[1]));
  LUT6 #(
    .INIT(64'h0000088000000000)) 
    \hist_mag_rd_addr[2]_INST_0 
       (.I0(busy_reg_0),
        .I1(\hist_mag_rd_addr[3]_INST_0_i_1_n_0 ),
        .I2(word_index_reg__0[3]),
        .I3(word_index_reg__0[4]),
        .I4(word_index_reg__0[5]),
        .I5(word_index_reg__0[2]),
        .O(hist_mag_rd_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \hist_mag_rd_addr[3]_INST_0 
       (.I0(busy_reg_0),
        .I1(\hist_mag_rd_addr[3]_INST_0_i_1_n_0 ),
        .I2(word_index_reg__0[4]),
        .I3(word_index_reg__0[5]),
        .I4(word_index_reg__0[3]),
        .O(hist_mag_rd_addr[3]));
  LUT6 #(
    .INIT(64'hEAAAFFFFFFFFAAAB)) 
    \hist_mag_rd_addr[3]_INST_0_i_1 
       (.I0(word_index_reg__0[4]),
        .I1(word_index_reg__0[1]),
        .I2(word_index_reg__0[0]),
        .I3(word_index_reg__0[2]),
        .I4(word_index_reg__0[5]),
        .I5(word_index_reg__0[3]),
        .O(\hist_mag_rd_addr[3]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sequence[0]_i_1 
       (.I0(commit),
        .I1(busy_reg_0),
        .O(\sequence[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sequence[0]_i_3 
       (.I0(sequence_reg[0]),
        .O(\sequence[0]_i_3_n_0 ));
  FDRE \sequence_reg[0] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[0]_i_2_n_7 ),
        .Q(sequence_reg[0]),
        .R(clear));
  CARRY4 \sequence_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sequence_reg[0]_i_2_n_0 ,\sequence_reg[0]_i_2_n_1 ,\sequence_reg[0]_i_2_n_2 ,\sequence_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sequence_reg[0]_i_2_n_4 ,\sequence_reg[0]_i_2_n_5 ,\sequence_reg[0]_i_2_n_6 ,\sequence_reg[0]_i_2_n_7 }),
        .S({sequence_reg[3:1],\sequence[0]_i_3_n_0 }));
  FDRE \sequence_reg[10] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[8]_i_1_n_5 ),
        .Q(sequence_reg[10]),
        .R(clear));
  FDRE \sequence_reg[11] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[8]_i_1_n_4 ),
        .Q(sequence_reg[11]),
        .R(clear));
  FDRE \sequence_reg[12] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[12]_i_1_n_7 ),
        .Q(sequence_reg[12]),
        .R(clear));
  CARRY4 \sequence_reg[12]_i_1 
       (.CI(\sequence_reg[8]_i_1_n_0 ),
        .CO({\sequence_reg[12]_i_1_n_0 ,\sequence_reg[12]_i_1_n_1 ,\sequence_reg[12]_i_1_n_2 ,\sequence_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_reg[12]_i_1_n_4 ,\sequence_reg[12]_i_1_n_5 ,\sequence_reg[12]_i_1_n_6 ,\sequence_reg[12]_i_1_n_7 }),
        .S(sequence_reg[15:12]));
  FDRE \sequence_reg[13] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[12]_i_1_n_6 ),
        .Q(sequence_reg[13]),
        .R(clear));
  FDRE \sequence_reg[14] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[12]_i_1_n_5 ),
        .Q(sequence_reg[14]),
        .R(clear));
  FDRE \sequence_reg[15] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[12]_i_1_n_4 ),
        .Q(sequence_reg[15]),
        .R(clear));
  FDRE \sequence_reg[16] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[16]_i_1_n_7 ),
        .Q(sequence_reg[16]),
        .R(clear));
  CARRY4 \sequence_reg[16]_i_1 
       (.CI(\sequence_reg[12]_i_1_n_0 ),
        .CO({\sequence_reg[16]_i_1_n_0 ,\sequence_reg[16]_i_1_n_1 ,\sequence_reg[16]_i_1_n_2 ,\sequence_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_reg[16]_i_1_n_4 ,\sequence_reg[16]_i_1_n_5 ,\sequence_reg[16]_i_1_n_6 ,\sequence_reg[16]_i_1_n_7 }),
        .S(sequence_reg[19:16]));
  FDRE \sequence_reg[17] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[16]_i_1_n_6 ),
        .Q(sequence_reg[17]),
        .R(clear));
  FDRE \sequence_reg[18] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[16]_i_1_n_5 ),
        .Q(sequence_reg[18]),
        .R(clear));
  FDRE \sequence_reg[19] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[16]_i_1_n_4 ),
        .Q(sequence_reg[19]),
        .R(clear));
  FDRE \sequence_reg[1] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[0]_i_2_n_6 ),
        .Q(sequence_reg[1]),
        .R(clear));
  FDRE \sequence_reg[20] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[20]_i_1_n_7 ),
        .Q(sequence_reg[20]),
        .R(clear));
  CARRY4 \sequence_reg[20]_i_1 
       (.CI(\sequence_reg[16]_i_1_n_0 ),
        .CO({\sequence_reg[20]_i_1_n_0 ,\sequence_reg[20]_i_1_n_1 ,\sequence_reg[20]_i_1_n_2 ,\sequence_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_reg[20]_i_1_n_4 ,\sequence_reg[20]_i_1_n_5 ,\sequence_reg[20]_i_1_n_6 ,\sequence_reg[20]_i_1_n_7 }),
        .S(sequence_reg[23:20]));
  FDRE \sequence_reg[21] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[20]_i_1_n_6 ),
        .Q(sequence_reg[21]),
        .R(clear));
  FDRE \sequence_reg[22] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[20]_i_1_n_5 ),
        .Q(sequence_reg[22]),
        .R(clear));
  FDRE \sequence_reg[23] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[20]_i_1_n_4 ),
        .Q(sequence_reg[23]),
        .R(clear));
  FDRE \sequence_reg[24] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[24]_i_1_n_7 ),
        .Q(sequence_reg[24]),
        .R(clear));
  CARRY4 \sequence_reg[24]_i_1 
       (.CI(\sequence_reg[20]_i_1_n_0 ),
        .CO({\sequence_reg[24]_i_1_n_0 ,\sequence_reg[24]_i_1_n_1 ,\sequence_reg[24]_i_1_n_2 ,\sequence_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_reg[24]_i_1_n_4 ,\sequence_reg[24]_i_1_n_5 ,\sequence_reg[24]_i_1_n_6 ,\sequence_reg[24]_i_1_n_7 }),
        .S(sequence_reg[27:24]));
  FDRE \sequence_reg[25] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[24]_i_1_n_6 ),
        .Q(sequence_reg[25]),
        .R(clear));
  FDRE \sequence_reg[26] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[24]_i_1_n_5 ),
        .Q(sequence_reg[26]),
        .R(clear));
  FDRE \sequence_reg[27] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[24]_i_1_n_4 ),
        .Q(sequence_reg[27]),
        .R(clear));
  FDRE \sequence_reg[28] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[28]_i_1_n_7 ),
        .Q(sequence_reg[28]),
        .R(clear));
  CARRY4 \sequence_reg[28]_i_1 
       (.CI(\sequence_reg[24]_i_1_n_0 ),
        .CO({\NLW_sequence_reg[28]_i_1_CO_UNCONNECTED [3],\sequence_reg[28]_i_1_n_1 ,\sequence_reg[28]_i_1_n_2 ,\sequence_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_reg[28]_i_1_n_4 ,\sequence_reg[28]_i_1_n_5 ,\sequence_reg[28]_i_1_n_6 ,\sequence_reg[28]_i_1_n_7 }),
        .S(sequence_reg[31:28]));
  FDRE \sequence_reg[29] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[28]_i_1_n_6 ),
        .Q(sequence_reg[29]),
        .R(clear));
  FDRE \sequence_reg[2] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[0]_i_2_n_5 ),
        .Q(sequence_reg[2]),
        .R(clear));
  FDRE \sequence_reg[30] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[28]_i_1_n_5 ),
        .Q(sequence_reg[30]),
        .R(clear));
  FDRE \sequence_reg[31] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[28]_i_1_n_4 ),
        .Q(sequence_reg[31]),
        .R(clear));
  FDRE \sequence_reg[3] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[0]_i_2_n_4 ),
        .Q(sequence_reg[3]),
        .R(clear));
  FDRE \sequence_reg[4] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[4]_i_1_n_7 ),
        .Q(sequence_reg[4]),
        .R(clear));
  CARRY4 \sequence_reg[4]_i_1 
       (.CI(\sequence_reg[0]_i_2_n_0 ),
        .CO({\sequence_reg[4]_i_1_n_0 ,\sequence_reg[4]_i_1_n_1 ,\sequence_reg[4]_i_1_n_2 ,\sequence_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_reg[4]_i_1_n_4 ,\sequence_reg[4]_i_1_n_5 ,\sequence_reg[4]_i_1_n_6 ,\sequence_reg[4]_i_1_n_7 }),
        .S(sequence_reg[7:4]));
  FDRE \sequence_reg[5] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[4]_i_1_n_6 ),
        .Q(sequence_reg[5]),
        .R(clear));
  FDRE \sequence_reg[6] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[4]_i_1_n_5 ),
        .Q(sequence_reg[6]),
        .R(clear));
  FDRE \sequence_reg[7] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[4]_i_1_n_4 ),
        .Q(sequence_reg[7]),
        .R(clear));
  FDRE \sequence_reg[8] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[8]_i_1_n_7 ),
        .Q(sequence_reg[8]),
        .R(clear));
  CARRY4 \sequence_reg[8]_i_1 
       (.CI(\sequence_reg[4]_i_1_n_0 ),
        .CO({\sequence_reg[8]_i_1_n_0 ,\sequence_reg[8]_i_1_n_1 ,\sequence_reg[8]_i_1_n_2 ,\sequence_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_reg[8]_i_1_n_4 ,\sequence_reg[8]_i_1_n_5 ,\sequence_reg[8]_i_1_n_6 ,\sequence_reg[8]_i_1_n_7 }),
        .S(sequence_reg[11:8]));
  FDRE \sequence_reg[9] 
       (.C(aclk),
        .CE(\sequence[0]_i_1_n_0 ),
        .D(\sequence_reg[8]_i_1_n_6 ),
        .Q(sequence_reg[9]),
        .R(clear));
  LUT3 #(
    .INIT(8'hB4)) 
    \snap_bit_count[0]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(bpsk_bit_valid),
        .I2(collect_count[0]),
        .O(collect_count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \snap_bit_count[1]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[0]),
        .I2(bpsk_bit_valid),
        .I3(collect_count[1]),
        .O(collect_count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \snap_bit_count[2]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[0]),
        .I2(collect_count[1]),
        .I3(bpsk_bit_valid),
        .I4(collect_count[2]),
        .O(collect_count_next[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \snap_bit_count[3]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[1]),
        .I2(collect_count[0]),
        .I3(collect_count[2]),
        .I4(bpsk_bit_valid),
        .I5(collect_count[3]),
        .O(collect_count_next[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \snap_bit_count[4]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(collect_count[2]),
        .I2(\collect_count[5]_i_2_n_0 ),
        .I3(collect_count[3]),
        .I4(bpsk_bit_valid),
        .I5(collect_count[4]),
        .O(collect_count_next[4]));
  LUT4 #(
    .INIT(16'hBF40)) 
    \snap_bit_count[5]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\snap_bit_count[5]_i_2_n_0 ),
        .I2(bpsk_bit_valid),
        .I3(collect_count[5]),
        .O(collect_count_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \snap_bit_count[5]_i_2 
       (.I0(collect_count[4]),
        .I1(collect_count[2]),
        .I2(collect_count[0]),
        .I3(collect_count[1]),
        .I4(collect_count[3]),
        .O(\snap_bit_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \snap_bit_count[6]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_count[7]_i_3_n_0 ),
        .I2(bpsk_bit_valid),
        .I3(collect_count[6]),
        .O(collect_count_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \snap_bit_count[7]_i_1 
       (.I0(collect_count[6]),
        .I1(\collect_count[7]_i_3_n_0 ),
        .I2(bpsk_bit_valid),
        .I3(collect_count[7]),
        .O(collect_count_next[7]));
  FDRE \snap_bit_count_reg[0] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_count_next[0]),
        .Q(snap_bit_count[0]),
        .R(clear));
  FDRE \snap_bit_count_reg[1] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_count_next[1]),
        .Q(snap_bit_count[1]),
        .R(clear));
  FDRE \snap_bit_count_reg[2] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_count_next[2]),
        .Q(snap_bit_count[2]),
        .R(clear));
  FDRE \snap_bit_count_reg[3] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_count_next[3]),
        .Q(snap_bit_count[3]),
        .R(clear));
  FDRE \snap_bit_count_reg[4] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_count_next[4]),
        .Q(snap_bit_count[4]),
        .R(clear));
  FDRE \snap_bit_count_reg[5] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_count_next[5]),
        .Q(snap_bit_count[5]),
        .R(clear));
  FDRE \snap_bit_count_reg[6] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_count_next[6]),
        .Q(snap_bit_count[6]),
        .R(clear));
  FDRE \snap_bit_count_reg[7] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_count_next[7]),
        .Q(snap_bit_count[7]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    snap_bit_overflow_sticky_i_1
       (.I0(bit_overflow_sticky),
        .I1(collect_overflow),
        .I2(bpsk_bit_valid),
        .I3(collect_count[7]),
        .O(snap_bit_overflow_sticky_i_1_n_0));
  FDRE snap_bit_overflow_sticky_reg
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snap_bit_overflow_sticky_i_1_n_0),
        .Q(snap_bit_overflow_sticky),
        .R(clear));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[0]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[112]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[0]),
        .O(collect_bits_next[0]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[100]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[116]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[100]),
        .O(collect_bits_next[100]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[101]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[117]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[101]),
        .O(collect_bits_next[101]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[102]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[118]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[102]),
        .O(collect_bits_next[102]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[103]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[119]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[103]),
        .O(collect_bits_next[103]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[104]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[120]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[104]),
        .O(collect_bits_next[104]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[105]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[121]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[105]),
        .O(collect_bits_next[105]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[106]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[122]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[106]),
        .O(collect_bits_next[106]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[107]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[123]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[107]),
        .O(collect_bits_next[107]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[108]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[124]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[108]),
        .O(collect_bits_next[108]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[109]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[125]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[109]),
        .O(collect_bits_next[109]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[10]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[122]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[10]),
        .O(collect_bits_next[10]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[110]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[126]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[110]),
        .O(collect_bits_next[110]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[111]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[127]_i_3_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[111]),
        .O(collect_bits_next[111]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[112]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[112]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[112]),
        .O(collect_bits_next[112]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[113]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[113]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[113]),
        .O(collect_bits_next[113]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[114]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[114]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[114]),
        .O(collect_bits_next[114]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[115]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[115]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[115]),
        .O(collect_bits_next[115]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[116]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[116]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[116]),
        .O(collect_bits_next[116]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[117]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[117]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[117]),
        .O(collect_bits_next[117]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[118]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[118]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[118]),
        .O(collect_bits_next[118]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[119]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[119]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[119]),
        .O(collect_bits_next[119]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[11]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[123]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[11]),
        .O(collect_bits_next[11]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[120]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[120]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[120]),
        .O(collect_bits_next[120]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[121]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[121]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[121]),
        .O(collect_bits_next[121]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[122]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[122]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[122]),
        .O(collect_bits_next[122]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[123]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[123]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[123]),
        .O(collect_bits_next[123]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[124]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[124]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[124]),
        .O(collect_bits_next[124]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[125]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[125]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[125]),
        .O(collect_bits_next[125]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[126]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[126]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[126]),
        .O(collect_bits_next[126]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[127]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[127]_i_2_n_0 ),
        .I2(\collect_bits[127]_i_3_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[127]),
        .O(collect_bits_next[127]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[12]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[124]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[12]),
        .O(collect_bits_next[12]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[13]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[125]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[13]),
        .O(collect_bits_next[13]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[14]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[126]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[14]),
        .O(collect_bits_next[14]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[15]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[127]_i_3_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[15]),
        .O(collect_bits_next[15]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[16]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[112]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[16]),
        .O(collect_bits_next[16]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[17]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[113]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[17]),
        .O(collect_bits_next[17]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[18]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[114]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[18]),
        .O(collect_bits_next[18]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[19]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[115]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[19]),
        .O(collect_bits_next[19]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[1]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[113]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[1]),
        .O(collect_bits_next[1]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[20]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[116]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[20]),
        .O(collect_bits_next[20]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[21]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[117]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[21]),
        .O(collect_bits_next[21]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[22]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[118]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[22]),
        .O(collect_bits_next[22]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[23]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[119]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[23]),
        .O(collect_bits_next[23]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[24]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[120]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[24]),
        .O(collect_bits_next[24]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[25]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[121]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[25]),
        .O(collect_bits_next[25]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[26]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[122]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[26]),
        .O(collect_bits_next[26]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[27]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[123]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[27]),
        .O(collect_bits_next[27]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[28]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[124]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[28]),
        .O(collect_bits_next[28]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[29]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[125]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[29]),
        .O(collect_bits_next[29]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[2]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[114]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[2]),
        .O(collect_bits_next[2]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[30]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[126]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[30]),
        .O(collect_bits_next[30]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[31]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[31]_i_2_n_0 ),
        .I2(\collect_bits[127]_i_3_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[31]),
        .O(collect_bits_next[31]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[32]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[112]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[32]),
        .O(collect_bits_next[32]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[33]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[113]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[33]),
        .O(collect_bits_next[33]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[34]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[114]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[34]),
        .O(collect_bits_next[34]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[35]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[115]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[35]),
        .O(collect_bits_next[35]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[36]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[116]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[36]),
        .O(collect_bits_next[36]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[37]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[117]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[37]),
        .O(collect_bits_next[37]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[38]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[118]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[38]),
        .O(collect_bits_next[38]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[39]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[119]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[39]),
        .O(collect_bits_next[39]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[3]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[115]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[3]),
        .O(collect_bits_next[3]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[40]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[120]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[40]),
        .O(collect_bits_next[40]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[41]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[121]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[41]),
        .O(collect_bits_next[41]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[42]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[122]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[42]),
        .O(collect_bits_next[42]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[43]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[123]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[43]),
        .O(collect_bits_next[43]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[44]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[124]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[44]),
        .O(collect_bits_next[44]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[45]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[125]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[45]),
        .O(collect_bits_next[45]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[46]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[126]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[46]),
        .O(collect_bits_next[46]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[47]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[47]_i_2_n_0 ),
        .I2(\collect_bits[127]_i_3_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[47]),
        .O(collect_bits_next[47]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[48]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[112]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[48]),
        .O(collect_bits_next[48]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[49]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[113]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[49]),
        .O(collect_bits_next[49]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[4]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[116]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[4]),
        .O(collect_bits_next[4]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[50]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[114]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[50]),
        .O(collect_bits_next[50]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[51]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[115]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[51]),
        .O(collect_bits_next[51]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[52]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[116]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[52]),
        .O(collect_bits_next[52]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[53]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[117]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[53]),
        .O(collect_bits_next[53]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[54]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[118]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[54]),
        .O(collect_bits_next[54]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[55]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[119]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[55]),
        .O(collect_bits_next[55]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[56]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[120]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[56]),
        .O(collect_bits_next[56]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[57]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[121]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[57]),
        .O(collect_bits_next[57]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[58]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[122]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[58]),
        .O(collect_bits_next[58]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[59]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[123]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[59]),
        .O(collect_bits_next[59]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[5]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[117]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[5]),
        .O(collect_bits_next[5]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[60]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[124]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[60]),
        .O(collect_bits_next[60]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[61]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[125]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[61]),
        .O(collect_bits_next[61]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[62]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[126]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[62]),
        .O(collect_bits_next[62]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[63]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[63]_i_2_n_0 ),
        .I2(\collect_bits[127]_i_3_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[63]),
        .O(collect_bits_next[63]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[64]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[112]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[64]),
        .O(collect_bits_next[64]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[65]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[113]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[65]),
        .O(collect_bits_next[65]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[66]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[114]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[66]),
        .O(collect_bits_next[66]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[67]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[115]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[67]),
        .O(collect_bits_next[67]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[68]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[116]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[68]),
        .O(collect_bits_next[68]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[69]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[117]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[69]),
        .O(collect_bits_next[69]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[6]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[118]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[6]),
        .O(collect_bits_next[6]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[70]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[118]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[70]),
        .O(collect_bits_next[70]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[71]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[119]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[71]),
        .O(collect_bits_next[71]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[72]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[120]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[72]),
        .O(collect_bits_next[72]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[73]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[121]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[73]),
        .O(collect_bits_next[73]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[74]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[122]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[74]),
        .O(collect_bits_next[74]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[75]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[123]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[75]),
        .O(collect_bits_next[75]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[76]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[124]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[76]),
        .O(collect_bits_next[76]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[77]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[125]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[77]),
        .O(collect_bits_next[77]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[78]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[126]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[78]),
        .O(collect_bits_next[78]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[79]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[79]_i_2_n_0 ),
        .I2(\collect_bits[127]_i_3_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[79]),
        .O(collect_bits_next[79]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[7]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[119]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[7]),
        .O(collect_bits_next[7]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[80]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[112]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[80]),
        .O(collect_bits_next[80]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[81]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[113]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[81]),
        .O(collect_bits_next[81]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[82]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[114]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[82]),
        .O(collect_bits_next[82]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[83]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[115]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[83]),
        .O(collect_bits_next[83]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[84]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[116]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[84]),
        .O(collect_bits_next[84]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[85]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[117]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[85]),
        .O(collect_bits_next[85]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[86]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[118]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[86]),
        .O(collect_bits_next[86]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[87]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[119]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[87]),
        .O(collect_bits_next[87]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[88]_i_1 
       (.I0(\collect_count_reg[7]_rep__0_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[120]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[88]),
        .O(collect_bits_next[88]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[89]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[121]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[89]),
        .O(collect_bits_next[89]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[8]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[120]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[8]),
        .O(collect_bits_next[8]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[90]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[122]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[90]),
        .O(collect_bits_next[90]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[91]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[123]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[91]),
        .O(collect_bits_next[91]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[92]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[124]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[92]),
        .O(collect_bits_next[92]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[93]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[125]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[93]),
        .O(collect_bits_next[93]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[94]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[126]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[94]),
        .O(collect_bits_next[94]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[95]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[95]_i_2_n_0 ),
        .I2(\collect_bits[127]_i_3_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[95]),
        .O(collect_bits_next[95]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[96]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[112]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[96]),
        .O(collect_bits_next[96]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[97]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[113]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[97]),
        .O(collect_bits_next[97]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[98]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[114]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[98]),
        .O(collect_bits_next[98]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[99]_i_1 
       (.I0(\collect_count_reg[7]_rep_n_0 ),
        .I1(\collect_bits[111]_i_2_n_0 ),
        .I2(\collect_bits[115]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[99]),
        .O(collect_bits_next[99]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \snap_bits[9]_i_1 
       (.I0(\collect_count_reg[7]_rep__1_n_0 ),
        .I1(\collect_bits[15]_i_2_n_0 ),
        .I2(\collect_bits[121]_i_2_n_0 ),
        .I3(bpsk_bit_data),
        .I4(bpsk_bit_valid),
        .I5(collect_bits[9]),
        .O(collect_bits_next[9]));
  FDRE \snap_bits_reg[0] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[0]),
        .Q(\snap_bits_reg_n_0_[0] ),
        .R(clear));
  FDRE \snap_bits_reg[100] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[100]),
        .Q(data12[4]),
        .R(clear));
  FDRE \snap_bits_reg[101] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[101]),
        .Q(data12[5]),
        .R(clear));
  FDRE \snap_bits_reg[102] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[102]),
        .Q(data12[6]),
        .R(clear));
  FDRE \snap_bits_reg[103] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[103]),
        .Q(data12[7]),
        .R(clear));
  FDRE \snap_bits_reg[104] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[104]),
        .Q(data12[8]),
        .R(clear));
  FDRE \snap_bits_reg[105] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[105]),
        .Q(data12[9]),
        .R(clear));
  FDRE \snap_bits_reg[106] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[106]),
        .Q(data12[10]),
        .R(clear));
  FDRE \snap_bits_reg[107] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[107]),
        .Q(data12[11]),
        .R(clear));
  FDRE \snap_bits_reg[108] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[108]),
        .Q(data12[12]),
        .R(clear));
  FDRE \snap_bits_reg[109] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[109]),
        .Q(data12[13]),
        .R(clear));
  FDRE \snap_bits_reg[10] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[10]),
        .Q(\snap_bits_reg_n_0_[10] ),
        .R(clear));
  FDRE \snap_bits_reg[110] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[110]),
        .Q(data12[14]),
        .R(clear));
  FDRE \snap_bits_reg[111] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[111]),
        .Q(data12[15]),
        .R(clear));
  FDRE \snap_bits_reg[112] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[112]),
        .Q(data12[16]),
        .R(clear));
  FDRE \snap_bits_reg[113] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[113]),
        .Q(data12[17]),
        .R(clear));
  FDRE \snap_bits_reg[114] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[114]),
        .Q(data12[18]),
        .R(clear));
  FDRE \snap_bits_reg[115] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[115]),
        .Q(data12[19]),
        .R(clear));
  FDRE \snap_bits_reg[116] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[116]),
        .Q(data12[20]),
        .R(clear));
  FDRE \snap_bits_reg[117] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[117]),
        .Q(data12[21]),
        .R(clear));
  FDRE \snap_bits_reg[118] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[118]),
        .Q(data12[22]),
        .R(clear));
  FDRE \snap_bits_reg[119] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[119]),
        .Q(data12[23]),
        .R(clear));
  FDRE \snap_bits_reg[11] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[11]),
        .Q(\snap_bits_reg_n_0_[11] ),
        .R(clear));
  FDRE \snap_bits_reg[120] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[120]),
        .Q(data12[24]),
        .R(clear));
  FDRE \snap_bits_reg[121] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[121]),
        .Q(data12[25]),
        .R(clear));
  FDRE \snap_bits_reg[122] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[122]),
        .Q(data12[26]),
        .R(clear));
  FDRE \snap_bits_reg[123] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[123]),
        .Q(data12[27]),
        .R(clear));
  FDRE \snap_bits_reg[124] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[124]),
        .Q(data12[28]),
        .R(clear));
  FDRE \snap_bits_reg[125] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[125]),
        .Q(data12[29]),
        .R(clear));
  FDRE \snap_bits_reg[126] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[126]),
        .Q(data12[30]),
        .R(clear));
  FDRE \snap_bits_reg[127] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[127]),
        .Q(data12[31]),
        .R(clear));
  FDRE \snap_bits_reg[12] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[12]),
        .Q(\snap_bits_reg_n_0_[12] ),
        .R(clear));
  FDRE \snap_bits_reg[13] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[13]),
        .Q(\snap_bits_reg_n_0_[13] ),
        .R(clear));
  FDRE \snap_bits_reg[14] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[14]),
        .Q(\snap_bits_reg_n_0_[14] ),
        .R(clear));
  FDRE \snap_bits_reg[15] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[15]),
        .Q(\snap_bits_reg_n_0_[15] ),
        .R(clear));
  FDRE \snap_bits_reg[16] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[16]),
        .Q(\snap_bits_reg_n_0_[16] ),
        .R(clear));
  FDRE \snap_bits_reg[17] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[17]),
        .Q(\snap_bits_reg_n_0_[17] ),
        .R(clear));
  FDRE \snap_bits_reg[18] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[18]),
        .Q(\snap_bits_reg_n_0_[18] ),
        .R(clear));
  FDRE \snap_bits_reg[19] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[19]),
        .Q(\snap_bits_reg_n_0_[19] ),
        .R(clear));
  FDRE \snap_bits_reg[1] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[1]),
        .Q(\snap_bits_reg_n_0_[1] ),
        .R(clear));
  FDRE \snap_bits_reg[20] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[20]),
        .Q(\snap_bits_reg_n_0_[20] ),
        .R(clear));
  FDRE \snap_bits_reg[21] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[21]),
        .Q(\snap_bits_reg_n_0_[21] ),
        .R(clear));
  FDRE \snap_bits_reg[22] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[22]),
        .Q(\snap_bits_reg_n_0_[22] ),
        .R(clear));
  FDRE \snap_bits_reg[23] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[23]),
        .Q(\snap_bits_reg_n_0_[23] ),
        .R(clear));
  FDRE \snap_bits_reg[24] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[24]),
        .Q(\snap_bits_reg_n_0_[24] ),
        .R(clear));
  FDRE \snap_bits_reg[25] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[25]),
        .Q(\snap_bits_reg_n_0_[25] ),
        .R(clear));
  FDRE \snap_bits_reg[26] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[26]),
        .Q(\snap_bits_reg_n_0_[26] ),
        .R(clear));
  FDRE \snap_bits_reg[27] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[27]),
        .Q(\snap_bits_reg_n_0_[27] ),
        .R(clear));
  FDRE \snap_bits_reg[28] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[28]),
        .Q(\snap_bits_reg_n_0_[28] ),
        .R(clear));
  FDRE \snap_bits_reg[29] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[29]),
        .Q(\snap_bits_reg_n_0_[29] ),
        .R(clear));
  FDRE \snap_bits_reg[2] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[2]),
        .Q(\snap_bits_reg_n_0_[2] ),
        .R(clear));
  FDRE \snap_bits_reg[30] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[30]),
        .Q(\snap_bits_reg_n_0_[30] ),
        .R(clear));
  FDRE \snap_bits_reg[31] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[31]),
        .Q(\snap_bits_reg_n_0_[31] ),
        .R(clear));
  FDRE \snap_bits_reg[32] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[32]),
        .Q(data10[0]),
        .R(clear));
  FDRE \snap_bits_reg[33] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[33]),
        .Q(data10[1]),
        .R(clear));
  FDRE \snap_bits_reg[34] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[34]),
        .Q(data10[2]),
        .R(clear));
  FDRE \snap_bits_reg[35] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[35]),
        .Q(data10[3]),
        .R(clear));
  FDRE \snap_bits_reg[36] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[36]),
        .Q(data10[4]),
        .R(clear));
  FDRE \snap_bits_reg[37] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[37]),
        .Q(data10[5]),
        .R(clear));
  FDRE \snap_bits_reg[38] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[38]),
        .Q(data10[6]),
        .R(clear));
  FDRE \snap_bits_reg[39] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[39]),
        .Q(data10[7]),
        .R(clear));
  FDRE \snap_bits_reg[3] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[3]),
        .Q(\snap_bits_reg_n_0_[3] ),
        .R(clear));
  FDRE \snap_bits_reg[40] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[40]),
        .Q(data10[8]),
        .R(clear));
  FDRE \snap_bits_reg[41] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[41]),
        .Q(data10[9]),
        .R(clear));
  FDRE \snap_bits_reg[42] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[42]),
        .Q(data10[10]),
        .R(clear));
  FDRE \snap_bits_reg[43] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[43]),
        .Q(data10[11]),
        .R(clear));
  FDRE \snap_bits_reg[44] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[44]),
        .Q(data10[12]),
        .R(clear));
  FDRE \snap_bits_reg[45] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[45]),
        .Q(data10[13]),
        .R(clear));
  FDRE \snap_bits_reg[46] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[46]),
        .Q(data10[14]),
        .R(clear));
  FDRE \snap_bits_reg[47] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[47]),
        .Q(data10[15]),
        .R(clear));
  FDRE \snap_bits_reg[48] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[48]),
        .Q(data10[16]),
        .R(clear));
  FDRE \snap_bits_reg[49] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[49]),
        .Q(data10[17]),
        .R(clear));
  FDRE \snap_bits_reg[4] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[4]),
        .Q(\snap_bits_reg_n_0_[4] ),
        .R(clear));
  FDRE \snap_bits_reg[50] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[50]),
        .Q(data10[18]),
        .R(clear));
  FDRE \snap_bits_reg[51] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[51]),
        .Q(data10[19]),
        .R(clear));
  FDRE \snap_bits_reg[52] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[52]),
        .Q(data10[20]),
        .R(clear));
  FDRE \snap_bits_reg[53] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[53]),
        .Q(data10[21]),
        .R(clear));
  FDRE \snap_bits_reg[54] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[54]),
        .Q(data10[22]),
        .R(clear));
  FDRE \snap_bits_reg[55] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[55]),
        .Q(data10[23]),
        .R(clear));
  FDRE \snap_bits_reg[56] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[56]),
        .Q(data10[24]),
        .R(clear));
  FDRE \snap_bits_reg[57] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[57]),
        .Q(data10[25]),
        .R(clear));
  FDRE \snap_bits_reg[58] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[58]),
        .Q(data10[26]),
        .R(clear));
  FDRE \snap_bits_reg[59] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[59]),
        .Q(data10[27]),
        .R(clear));
  FDRE \snap_bits_reg[5] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[5]),
        .Q(\snap_bits_reg_n_0_[5] ),
        .R(clear));
  FDRE \snap_bits_reg[60] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[60]),
        .Q(data10[28]),
        .R(clear));
  FDRE \snap_bits_reg[61] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[61]),
        .Q(data10[29]),
        .R(clear));
  FDRE \snap_bits_reg[62] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[62]),
        .Q(data10[30]),
        .R(clear));
  FDRE \snap_bits_reg[63] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[63]),
        .Q(data10[31]),
        .R(clear));
  FDRE \snap_bits_reg[64] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[64]),
        .Q(data11[0]),
        .R(clear));
  FDRE \snap_bits_reg[65] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[65]),
        .Q(data11[1]),
        .R(clear));
  FDRE \snap_bits_reg[66] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[66]),
        .Q(data11[2]),
        .R(clear));
  FDRE \snap_bits_reg[67] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[67]),
        .Q(data11[3]),
        .R(clear));
  FDRE \snap_bits_reg[68] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[68]),
        .Q(data11[4]),
        .R(clear));
  FDRE \snap_bits_reg[69] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[69]),
        .Q(data11[5]),
        .R(clear));
  FDRE \snap_bits_reg[6] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[6]),
        .Q(\snap_bits_reg_n_0_[6] ),
        .R(clear));
  FDRE \snap_bits_reg[70] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[70]),
        .Q(data11[6]),
        .R(clear));
  FDRE \snap_bits_reg[71] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[71]),
        .Q(data11[7]),
        .R(clear));
  FDRE \snap_bits_reg[72] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[72]),
        .Q(data11[8]),
        .R(clear));
  FDRE \snap_bits_reg[73] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[73]),
        .Q(data11[9]),
        .R(clear));
  FDRE \snap_bits_reg[74] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[74]),
        .Q(data11[10]),
        .R(clear));
  FDRE \snap_bits_reg[75] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[75]),
        .Q(data11[11]),
        .R(clear));
  FDRE \snap_bits_reg[76] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[76]),
        .Q(data11[12]),
        .R(clear));
  FDRE \snap_bits_reg[77] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[77]),
        .Q(data11[13]),
        .R(clear));
  FDRE \snap_bits_reg[78] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[78]),
        .Q(data11[14]),
        .R(clear));
  FDRE \snap_bits_reg[79] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[79]),
        .Q(data11[15]),
        .R(clear));
  FDRE \snap_bits_reg[7] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[7]),
        .Q(\snap_bits_reg_n_0_[7] ),
        .R(clear));
  FDRE \snap_bits_reg[80] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[80]),
        .Q(data11[16]),
        .R(clear));
  FDRE \snap_bits_reg[81] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[81]),
        .Q(data11[17]),
        .R(clear));
  FDRE \snap_bits_reg[82] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[82]),
        .Q(data11[18]),
        .R(clear));
  FDRE \snap_bits_reg[83] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[83]),
        .Q(data11[19]),
        .R(clear));
  FDRE \snap_bits_reg[84] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[84]),
        .Q(data11[20]),
        .R(clear));
  FDRE \snap_bits_reg[85] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[85]),
        .Q(data11[21]),
        .R(clear));
  FDRE \snap_bits_reg[86] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[86]),
        .Q(data11[22]),
        .R(clear));
  FDRE \snap_bits_reg[87] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[87]),
        .Q(data11[23]),
        .R(clear));
  FDRE \snap_bits_reg[88] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[88]),
        .Q(data11[24]),
        .R(clear));
  FDRE \snap_bits_reg[89] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[89]),
        .Q(data11[25]),
        .R(clear));
  FDRE \snap_bits_reg[8] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[8]),
        .Q(\snap_bits_reg_n_0_[8] ),
        .R(clear));
  FDRE \snap_bits_reg[90] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[90]),
        .Q(data11[26]),
        .R(clear));
  FDRE \snap_bits_reg[91] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[91]),
        .Q(data11[27]),
        .R(clear));
  FDRE \snap_bits_reg[92] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[92]),
        .Q(data11[28]),
        .R(clear));
  FDRE \snap_bits_reg[93] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[93]),
        .Q(data11[29]),
        .R(clear));
  FDRE \snap_bits_reg[94] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[94]),
        .Q(data11[30]),
        .R(clear));
  FDRE \snap_bits_reg[95] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[95]),
        .Q(data11[31]),
        .R(clear));
  FDRE \snap_bits_reg[96] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[96]),
        .Q(data12[0]),
        .R(clear));
  FDRE \snap_bits_reg[97] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[97]),
        .Q(data12[1]),
        .R(clear));
  FDRE \snap_bits_reg[98] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[98]),
        .Q(data12[2]),
        .R(clear));
  FDRE \snap_bits_reg[99] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[99]),
        .Q(data12[3]),
        .R(clear));
  FDRE \snap_bits_reg[9] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_bits_next[9]),
        .Q(\snap_bits_reg_n_0_[9] ),
        .R(clear));
  LUT3 #(
    .INIT(8'h02)) 
    snap_carrier_locked_i_1
       (.I0(frame_done),
        .I1(commit),
        .I2(busy_reg_0),
        .O(snap_carrier_locked_i_1_n_0));
  FDRE snap_carrier_locked_reg
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(bpsk_carrier_locked),
        .Q(data7[0]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \snap_dropped_bits[0]_i_1 
       (.I0(\collect_drop_count[7]_i_3_n_0 ),
        .I1(collect_count[7]),
        .I2(bpsk_bit_valid),
        .I3(collect_drop_count[0]),
        .O(collect_drop_count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \snap_dropped_bits[1]_i_1 
       (.I0(collect_drop_count[0]),
        .I1(\collect_drop_count[7]_i_3_n_0 ),
        .I2(collect_count[7]),
        .I3(bpsk_bit_valid),
        .I4(collect_drop_count[1]),
        .O(collect_drop_count_next[1]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \snap_dropped_bits[2]_i_1 
       (.I0(collect_drop_count[1]),
        .I1(collect_drop_count[0]),
        .I2(\collect_drop_count[7]_i_3_n_0 ),
        .I3(collect_count[7]),
        .I4(bpsk_bit_valid),
        .I5(collect_drop_count[2]),
        .O(collect_drop_count_next[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \snap_dropped_bits[3]_i_1 
       (.I0(\collect_drop_count[4]_i_2_n_0 ),
        .I1(collect_drop_count[2]),
        .I2(\collect_drop_count[7]_i_3_n_0 ),
        .I3(collect_count[7]),
        .I4(bpsk_bit_valid),
        .I5(collect_drop_count[3]),
        .O(collect_drop_count_next[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \snap_dropped_bits[4]_i_1 
       (.I0(\snap_dropped_bits[4]_i_2_n_0 ),
        .I1(\collect_drop_count[7]_i_3_n_0 ),
        .I2(collect_count[7]),
        .I3(bpsk_bit_valid),
        .I4(collect_drop_count[4]),
        .O(collect_drop_count_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \snap_dropped_bits[4]_i_2 
       (.I0(collect_drop_count[3]),
        .I1(collect_drop_count[0]),
        .I2(collect_drop_count[1]),
        .I3(collect_drop_count[2]),
        .O(\snap_dropped_bits[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \snap_dropped_bits[5]_i_1 
       (.I0(\collect_drop_count[5]_i_2_n_0 ),
        .I1(\collect_drop_count[7]_i_3_n_0 ),
        .I2(collect_count[7]),
        .I3(bpsk_bit_valid),
        .I4(collect_drop_count[5]),
        .O(collect_drop_count_next[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \snap_dropped_bits[6]_i_1 
       (.I0(\collect_drop_count[7]_i_2_n_0 ),
        .I1(\collect_drop_count[7]_i_3_n_0 ),
        .I2(collect_count[7]),
        .I3(bpsk_bit_valid),
        .I4(collect_drop_count[6]),
        .O(collect_drop_count_next[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \snap_dropped_bits[7]_i_1 
       (.I0(\collect_drop_count[7]_i_2_n_0 ),
        .I1(collect_drop_count[6]),
        .I2(\collect_drop_count[7]_i_3_n_0 ),
        .I3(collect_count[7]),
        .I4(bpsk_bit_valid),
        .I5(collect_drop_count[7]),
        .O(collect_drop_count_next[7]));
  FDRE \snap_dropped_bits_reg[0] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_drop_count_next[0]),
        .Q(snap_dropped_bits[0]),
        .R(clear));
  FDRE \snap_dropped_bits_reg[1] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_drop_count_next[1]),
        .Q(snap_dropped_bits[1]),
        .R(clear));
  FDRE \snap_dropped_bits_reg[2] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_drop_count_next[2]),
        .Q(snap_dropped_bits[2]),
        .R(clear));
  FDRE \snap_dropped_bits_reg[3] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_drop_count_next[3]),
        .Q(snap_dropped_bits[3]),
        .R(clear));
  FDRE \snap_dropped_bits_reg[4] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_drop_count_next[4]),
        .Q(snap_dropped_bits[4]),
        .R(clear));
  FDRE \snap_dropped_bits_reg[5] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_drop_count_next[5]),
        .Q(snap_dropped_bits[5]),
        .R(clear));
  FDRE \snap_dropped_bits_reg[6] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_drop_count_next[6]),
        .Q(snap_dropped_bits[6]),
        .R(clear));
  FDRE \snap_dropped_bits_reg[7] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_drop_count_next[7]),
        .Q(snap_dropped_bits[7]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    snap_frame_overflow_i_1
       (.I0(collect_count[7]),
        .I1(bpsk_bit_valid),
        .I2(collect_overflow),
        .O(collect_overflow_next));
  FDRE snap_frame_overflow_reg
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(collect_overflow_next),
        .Q(data7[4]),
        .R(clear));
  FDRE \snap_rate_code_reg[0] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(bpsk_rate_code[0]),
        .Q(data7[2]),
        .R(clear));
  FDRE \snap_rate_code_reg[1] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(bpsk_rate_code[1]),
        .Q(data7[3]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[0] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[0]),
        .Q(snap_snapshot_overrun_count[0]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[10] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[10]),
        .Q(snap_snapshot_overrun_count[10]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[11] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[11]),
        .Q(snap_snapshot_overrun_count[11]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[12] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[12]),
        .Q(snap_snapshot_overrun_count[12]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[13] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[13]),
        .Q(snap_snapshot_overrun_count[13]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[14] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[14]),
        .Q(snap_snapshot_overrun_count[14]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[15] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[15]),
        .Q(snap_snapshot_overrun_count[15]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[1] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[1]),
        .Q(snap_snapshot_overrun_count[1]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[2] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[2]),
        .Q(snap_snapshot_overrun_count[2]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[3] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[3]),
        .Q(snap_snapshot_overrun_count[3]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[4] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[4]),
        .Q(snap_snapshot_overrun_count[4]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[5] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[5]),
        .Q(snap_snapshot_overrun_count[5]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[6] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[6]),
        .Q(snap_snapshot_overrun_count[6]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[7] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[7]),
        .Q(snap_snapshot_overrun_count[7]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[8] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[8]),
        .Q(snap_snapshot_overrun_count[8]),
        .R(clear));
  FDRE \snap_snapshot_overrun_count_reg[9] 
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_count_reg[9]),
        .Q(snap_snapshot_overrun_count[9]),
        .R(clear));
  FDRE snap_snapshot_overrun_sticky_reg
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(snapshot_overrun_sticky),
        .Q(snap_snapshot_overrun_sticky),
        .R(clear));
  FDRE snap_timing_locked_reg
       (.C(aclk),
        .CE(snap_carrier_locked_i_1_n_0),
        .D(bpsk_timing_locked),
        .Q(data7[1]),
        .R(clear));
  LUT5 #(
    .INIT(32'hA8A8A800)) 
    \snapshot_overrun_count[0]_i_1 
       (.I0(frame_done),
        .I1(\snapshot_overrun_count[0]_i_3_n_0 ),
        .I2(\snapshot_overrun_count[0]_i_4_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .O(snapshot_overrun_count));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \snapshot_overrun_count[0]_i_3 
       (.I0(snapshot_overrun_count_reg[13]),
        .I1(snapshot_overrun_count_reg[12]),
        .I2(snapshot_overrun_count_reg[14]),
        .I3(snapshot_overrun_count_reg[15]),
        .I4(\snapshot_overrun_count[0]_i_6_n_0 ),
        .O(\snapshot_overrun_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \snapshot_overrun_count[0]_i_4 
       (.I0(snapshot_overrun_count_reg[5]),
        .I1(snapshot_overrun_count_reg[4]),
        .I2(snapshot_overrun_count_reg[7]),
        .I3(snapshot_overrun_count_reg[6]),
        .I4(\snapshot_overrun_count[0]_i_7_n_0 ),
        .O(\snapshot_overrun_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \snapshot_overrun_count[0]_i_5 
       (.I0(snapshot_overrun_count_reg[0]),
        .O(\snapshot_overrun_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \snapshot_overrun_count[0]_i_6 
       (.I0(snapshot_overrun_count_reg[10]),
        .I1(snapshot_overrun_count_reg[11]),
        .I2(snapshot_overrun_count_reg[8]),
        .I3(snapshot_overrun_count_reg[9]),
        .O(\snapshot_overrun_count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \snapshot_overrun_count[0]_i_7 
       (.I0(snapshot_overrun_count_reg[2]),
        .I1(snapshot_overrun_count_reg[3]),
        .I2(snapshot_overrun_count_reg[0]),
        .I3(snapshot_overrun_count_reg[1]),
        .O(\snapshot_overrun_count[0]_i_7_n_0 ));
  FDRE \snapshot_overrun_count_reg[0] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[0]_i_2_n_7 ),
        .Q(snapshot_overrun_count_reg[0]),
        .R(clear));
  CARRY4 \snapshot_overrun_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\snapshot_overrun_count_reg[0]_i_2_n_0 ,\snapshot_overrun_count_reg[0]_i_2_n_1 ,\snapshot_overrun_count_reg[0]_i_2_n_2 ,\snapshot_overrun_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\snapshot_overrun_count_reg[0]_i_2_n_4 ,\snapshot_overrun_count_reg[0]_i_2_n_5 ,\snapshot_overrun_count_reg[0]_i_2_n_6 ,\snapshot_overrun_count_reg[0]_i_2_n_7 }),
        .S({snapshot_overrun_count_reg[3:1],\snapshot_overrun_count[0]_i_5_n_0 }));
  FDRE \snapshot_overrun_count_reg[10] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[8]_i_1_n_5 ),
        .Q(snapshot_overrun_count_reg[10]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[11] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[8]_i_1_n_4 ),
        .Q(snapshot_overrun_count_reg[11]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[12] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[12]_i_1_n_7 ),
        .Q(snapshot_overrun_count_reg[12]),
        .R(clear));
  CARRY4 \snapshot_overrun_count_reg[12]_i_1 
       (.CI(\snapshot_overrun_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_snapshot_overrun_count_reg[12]_i_1_CO_UNCONNECTED [3],\snapshot_overrun_count_reg[12]_i_1_n_1 ,\snapshot_overrun_count_reg[12]_i_1_n_2 ,\snapshot_overrun_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\snapshot_overrun_count_reg[12]_i_1_n_4 ,\snapshot_overrun_count_reg[12]_i_1_n_5 ,\snapshot_overrun_count_reg[12]_i_1_n_6 ,\snapshot_overrun_count_reg[12]_i_1_n_7 }),
        .S(snapshot_overrun_count_reg[15:12]));
  FDRE \snapshot_overrun_count_reg[13] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[12]_i_1_n_6 ),
        .Q(snapshot_overrun_count_reg[13]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[14] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[12]_i_1_n_5 ),
        .Q(snapshot_overrun_count_reg[14]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[15] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[12]_i_1_n_4 ),
        .Q(snapshot_overrun_count_reg[15]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[1] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[0]_i_2_n_6 ),
        .Q(snapshot_overrun_count_reg[1]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[2] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[0]_i_2_n_5 ),
        .Q(snapshot_overrun_count_reg[2]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[3] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[0]_i_2_n_4 ),
        .Q(snapshot_overrun_count_reg[3]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[4] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[4]_i_1_n_7 ),
        .Q(snapshot_overrun_count_reg[4]),
        .R(clear));
  CARRY4 \snapshot_overrun_count_reg[4]_i_1 
       (.CI(\snapshot_overrun_count_reg[0]_i_2_n_0 ),
        .CO({\snapshot_overrun_count_reg[4]_i_1_n_0 ,\snapshot_overrun_count_reg[4]_i_1_n_1 ,\snapshot_overrun_count_reg[4]_i_1_n_2 ,\snapshot_overrun_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\snapshot_overrun_count_reg[4]_i_1_n_4 ,\snapshot_overrun_count_reg[4]_i_1_n_5 ,\snapshot_overrun_count_reg[4]_i_1_n_6 ,\snapshot_overrun_count_reg[4]_i_1_n_7 }),
        .S(snapshot_overrun_count_reg[7:4]));
  FDRE \snapshot_overrun_count_reg[5] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[4]_i_1_n_6 ),
        .Q(snapshot_overrun_count_reg[5]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[6] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[4]_i_1_n_5 ),
        .Q(snapshot_overrun_count_reg[6]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[7] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[4]_i_1_n_4 ),
        .Q(snapshot_overrun_count_reg[7]),
        .R(clear));
  FDRE \snapshot_overrun_count_reg[8] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[8]_i_1_n_7 ),
        .Q(snapshot_overrun_count_reg[8]),
        .R(clear));
  CARRY4 \snapshot_overrun_count_reg[8]_i_1 
       (.CI(\snapshot_overrun_count_reg[4]_i_1_n_0 ),
        .CO({\snapshot_overrun_count_reg[8]_i_1_n_0 ,\snapshot_overrun_count_reg[8]_i_1_n_1 ,\snapshot_overrun_count_reg[8]_i_1_n_2 ,\snapshot_overrun_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\snapshot_overrun_count_reg[8]_i_1_n_4 ,\snapshot_overrun_count_reg[8]_i_1_n_5 ,\snapshot_overrun_count_reg[8]_i_1_n_6 ,\snapshot_overrun_count_reg[8]_i_1_n_7 }),
        .S(snapshot_overrun_count_reg[11:8]));
  FDRE \snapshot_overrun_count_reg[9] 
       (.C(aclk),
        .CE(snapshot_overrun_count),
        .D(\snapshot_overrun_count_reg[8]_i_1_n_6 ),
        .Q(snapshot_overrun_count_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    snapshot_overrun_sticky_i_1
       (.I0(busy_reg_0),
        .I1(commit),
        .I2(frame_done),
        .I3(snapshot_overrun_sticky),
        .O(snapshot_overrun_sticky_i_1_n_0));
  FDRE snapshot_overrun_sticky_reg
       (.C(aclk),
        .CE(1'b1),
        .D(snapshot_overrun_sticky_i_1_n_0),
        .Q(snapshot_overrun_sticky),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \word_index[0]_i_1 
       (.I0(word_index_reg__0[0]),
        .O(\word_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \word_index[1]_i_1 
       (.I0(word_index_reg__0[0]),
        .I1(word_index_reg__0[1]),
        .O(\word_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \word_index[2]_i_1 
       (.I0(word_index_reg__0[0]),
        .I1(word_index_reg__0[1]),
        .I2(word_index_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \word_index[3]_i_1 
       (.I0(word_index_reg__0[1]),
        .I1(word_index_reg__0[0]),
        .I2(word_index_reg__0[2]),
        .I3(word_index_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \word_index[4]_i_1 
       (.I0(word_index_reg__0[2]),
        .I1(word_index_reg__0[0]),
        .I2(word_index_reg__0[1]),
        .I3(word_index_reg__0[3]),
        .I4(word_index_reg__0[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h02FF)) 
    \word_index[5]_i_1 
       (.I0(frame_done),
        .I1(commit),
        .I2(busy_reg_0),
        .I3(aresetn),
        .O(\word_index[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAAAAAAAAAA)) 
    \word_index[5]_i_2 
       (.I0(busy_reg_0),
        .I1(word_index_reg__0[2]),
        .I2(word_index_reg__0[3]),
        .I3(\word_index[5]_i_4_n_0 ),
        .I4(word_index_reg__0[1]),
        .I5(word_index_reg__0[5]),
        .O(word_index));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \word_index[5]_i_3 
       (.I0(word_index_reg__0[3]),
        .I1(word_index_reg__0[1]),
        .I2(word_index_reg__0[0]),
        .I3(word_index_reg__0[2]),
        .I4(word_index_reg__0[4]),
        .I5(word_index_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \word_index[5]_i_4 
       (.I0(word_index_reg__0[4]),
        .I1(word_index_reg__0[0]),
        .O(\word_index[5]_i_4_n_0 ));
  FDSE \word_index_reg[0] 
       (.C(aclk),
        .CE(word_index),
        .D(\word_index[0]_i_1_n_0 ),
        .Q(word_index_reg__0[0]),
        .S(\word_index[5]_i_1_n_0 ));
  FDRE \word_index_reg[1] 
       (.C(aclk),
        .CE(word_index),
        .D(\word_index[1]_i_1_n_0 ),
        .Q(word_index_reg__0[1]),
        .R(\word_index[5]_i_1_n_0 ));
  FDRE \word_index_reg[2] 
       (.C(aclk),
        .CE(word_index),
        .D(p_0_in[2]),
        .Q(word_index_reg__0[2]),
        .R(\word_index[5]_i_1_n_0 ));
  FDRE \word_index_reg[3] 
       (.C(aclk),
        .CE(word_index),
        .D(p_0_in[3]),
        .Q(word_index_reg__0[3]),
        .R(\word_index[5]_i_1_n_0 ));
  FDRE \word_index_reg[4] 
       (.C(aclk),
        .CE(word_index),
        .D(p_0_in[4]),
        .Q(word_index_reg__0[4]),
        .R(\word_index[5]_i_1_n_0 ));
  FDRE \word_index_reg[5] 
       (.C(aclk),
        .CE(word_index),
        .D(p_0_in[5]),
        .Q(word_index_reg__0[5]),
        .R(\word_index[5]_i_1_n_0 ));
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
