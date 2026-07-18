// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jul 18 00:33:16 2026
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
    hist_mag_rd_addr,
    hist_mag_rd_data,
    hist_freq_rd_addr,
    hist_freq_rd_data,
    bram_en,
    bram_we,
    bram_addr,
    bram_wdata,
    busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
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

  wire \<const0> ;
  wire aclk;
  wire aresetn;
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
    hist_mag_rd_addr,
    hist_freq_rd_addr,
    bram_addr,
    bram_wdata,
    frame_done,
    aresetn,
    aclk,
    hist_mag_rd_data,
    hist_freq_rd_data,
    psk_flag,
    mean_freq_num,
    mean_mag_num,
    var_freq_num,
    var_mag_num,
    psk_spike_count);
  output busy_reg_0;
  output bram_en;
  output [3:0]hist_mag_rd_addr;
  output [3:0]hist_freq_rd_addr;
  output [5:0]bram_addr;
  output [31:0]bram_wdata;
  input frame_done;
  input aresetn;
  input aclk;
  input [31:0]hist_mag_rd_data;
  input [31:0]hist_freq_rd_data;
  input psk_flag;
  input [31:0]mean_freq_num;
  input [31:0]mean_mag_num;
  input [63:0]var_freq_num;
  input [63:0]var_mag_num;
  input [30:0]psk_spike_count;

  wire aclk;
  wire aresetn;
  wire [5:0]bram_addr;
  wire bram_en;
  wire [31:0]bram_wdata;
  wire \bram_wdata[0]_INST_0_i_1_n_0 ;
  wire \bram_wdata[0]_INST_0_i_2_n_0 ;
  wire \bram_wdata[0]_INST_0_i_3_n_0 ;
  wire \bram_wdata[0]_INST_0_i_4_n_0 ;
  wire \bram_wdata[10]_INST_0_i_1_n_0 ;
  wire \bram_wdata[10]_INST_0_i_2_n_0 ;
  wire \bram_wdata[10]_INST_0_i_3_n_0 ;
  wire \bram_wdata[10]_INST_0_i_4_n_0 ;
  wire \bram_wdata[11]_INST_0_i_1_n_0 ;
  wire \bram_wdata[11]_INST_0_i_2_n_0 ;
  wire \bram_wdata[11]_INST_0_i_3_n_0 ;
  wire \bram_wdata[11]_INST_0_i_4_n_0 ;
  wire \bram_wdata[12]_INST_0_i_1_n_0 ;
  wire \bram_wdata[12]_INST_0_i_2_n_0 ;
  wire \bram_wdata[12]_INST_0_i_3_n_0 ;
  wire \bram_wdata[12]_INST_0_i_3_n_1 ;
  wire \bram_wdata[12]_INST_0_i_3_n_2 ;
  wire \bram_wdata[12]_INST_0_i_3_n_3 ;
  wire \bram_wdata[12]_INST_0_i_4_n_0 ;
  wire \bram_wdata[12]_INST_0_i_5_n_0 ;
  wire \bram_wdata[13]_INST_0_i_1_n_0 ;
  wire \bram_wdata[13]_INST_0_i_2_n_0 ;
  wire \bram_wdata[13]_INST_0_i_3_n_0 ;
  wire \bram_wdata[13]_INST_0_i_4_n_0 ;
  wire \bram_wdata[14]_INST_0_i_1_n_0 ;
  wire \bram_wdata[14]_INST_0_i_2_n_0 ;
  wire \bram_wdata[14]_INST_0_i_3_n_0 ;
  wire \bram_wdata[14]_INST_0_i_4_n_0 ;
  wire \bram_wdata[15]_INST_0_i_1_n_0 ;
  wire \bram_wdata[15]_INST_0_i_2_n_0 ;
  wire \bram_wdata[15]_INST_0_i_3_n_0 ;
  wire \bram_wdata[15]_INST_0_i_4_n_0 ;
  wire \bram_wdata[16]_INST_0_i_1_n_0 ;
  wire \bram_wdata[16]_INST_0_i_2_n_0 ;
  wire \bram_wdata[16]_INST_0_i_3_n_0 ;
  wire \bram_wdata[16]_INST_0_i_3_n_1 ;
  wire \bram_wdata[16]_INST_0_i_3_n_2 ;
  wire \bram_wdata[16]_INST_0_i_3_n_3 ;
  wire \bram_wdata[16]_INST_0_i_4_n_0 ;
  wire \bram_wdata[16]_INST_0_i_5_n_0 ;
  wire \bram_wdata[17]_INST_0_i_1_n_0 ;
  wire \bram_wdata[17]_INST_0_i_2_n_0 ;
  wire \bram_wdata[17]_INST_0_i_3_n_0 ;
  wire \bram_wdata[17]_INST_0_i_4_n_0 ;
  wire \bram_wdata[18]_INST_0_i_1_n_0 ;
  wire \bram_wdata[18]_INST_0_i_2_n_0 ;
  wire \bram_wdata[18]_INST_0_i_3_n_0 ;
  wire \bram_wdata[18]_INST_0_i_4_n_0 ;
  wire \bram_wdata[19]_INST_0_i_1_n_0 ;
  wire \bram_wdata[19]_INST_0_i_2_n_0 ;
  wire \bram_wdata[19]_INST_0_i_3_n_0 ;
  wire \bram_wdata[19]_INST_0_i_4_n_0 ;
  wire \bram_wdata[1]_INST_0_i_1_n_0 ;
  wire \bram_wdata[1]_INST_0_i_2_n_0 ;
  wire \bram_wdata[1]_INST_0_i_3_n_0 ;
  wire \bram_wdata[1]_INST_0_i_4_n_0 ;
  wire \bram_wdata[20]_INST_0_i_1_n_0 ;
  wire \bram_wdata[20]_INST_0_i_2_n_0 ;
  wire \bram_wdata[20]_INST_0_i_3_n_0 ;
  wire \bram_wdata[20]_INST_0_i_3_n_1 ;
  wire \bram_wdata[20]_INST_0_i_3_n_2 ;
  wire \bram_wdata[20]_INST_0_i_3_n_3 ;
  wire \bram_wdata[20]_INST_0_i_4_n_0 ;
  wire \bram_wdata[20]_INST_0_i_5_n_0 ;
  wire \bram_wdata[21]_INST_0_i_1_n_0 ;
  wire \bram_wdata[21]_INST_0_i_2_n_0 ;
  wire \bram_wdata[21]_INST_0_i_3_n_0 ;
  wire \bram_wdata[21]_INST_0_i_4_n_0 ;
  wire \bram_wdata[22]_INST_0_i_1_n_0 ;
  wire \bram_wdata[22]_INST_0_i_2_n_0 ;
  wire \bram_wdata[22]_INST_0_i_3_n_0 ;
  wire \bram_wdata[22]_INST_0_i_4_n_0 ;
  wire \bram_wdata[23]_INST_0_i_1_n_0 ;
  wire \bram_wdata[23]_INST_0_i_2_n_0 ;
  wire \bram_wdata[23]_INST_0_i_3_n_0 ;
  wire \bram_wdata[23]_INST_0_i_4_n_0 ;
  wire \bram_wdata[24]_INST_0_i_1_n_0 ;
  wire \bram_wdata[24]_INST_0_i_2_n_0 ;
  wire \bram_wdata[24]_INST_0_i_3_n_0 ;
  wire \bram_wdata[24]_INST_0_i_3_n_1 ;
  wire \bram_wdata[24]_INST_0_i_3_n_2 ;
  wire \bram_wdata[24]_INST_0_i_3_n_3 ;
  wire \bram_wdata[24]_INST_0_i_4_n_0 ;
  wire \bram_wdata[24]_INST_0_i_5_n_0 ;
  wire \bram_wdata[25]_INST_0_i_1_n_0 ;
  wire \bram_wdata[25]_INST_0_i_2_n_0 ;
  wire \bram_wdata[25]_INST_0_i_3_n_0 ;
  wire \bram_wdata[25]_INST_0_i_4_n_0 ;
  wire \bram_wdata[26]_INST_0_i_1_n_0 ;
  wire \bram_wdata[26]_INST_0_i_2_n_0 ;
  wire \bram_wdata[26]_INST_0_i_3_n_0 ;
  wire \bram_wdata[26]_INST_0_i_4_n_0 ;
  wire \bram_wdata[27]_INST_0_i_1_n_0 ;
  wire \bram_wdata[27]_INST_0_i_2_n_0 ;
  wire \bram_wdata[27]_INST_0_i_3_n_0 ;
  wire \bram_wdata[27]_INST_0_i_4_n_0 ;
  wire \bram_wdata[28]_INST_0_i_1_n_0 ;
  wire \bram_wdata[28]_INST_0_i_2_n_0 ;
  wire \bram_wdata[28]_INST_0_i_3_n_0 ;
  wire \bram_wdata[28]_INST_0_i_3_n_1 ;
  wire \bram_wdata[28]_INST_0_i_3_n_2 ;
  wire \bram_wdata[28]_INST_0_i_3_n_3 ;
  wire \bram_wdata[28]_INST_0_i_4_n_0 ;
  wire \bram_wdata[28]_INST_0_i_5_n_0 ;
  wire \bram_wdata[29]_INST_0_i_1_n_0 ;
  wire \bram_wdata[29]_INST_0_i_2_n_0 ;
  wire \bram_wdata[29]_INST_0_i_3_n_0 ;
  wire \bram_wdata[29]_INST_0_i_4_n_0 ;
  wire \bram_wdata[2]_INST_0_i_1_n_0 ;
  wire \bram_wdata[2]_INST_0_i_2_n_0 ;
  wire \bram_wdata[2]_INST_0_i_3_n_0 ;
  wire \bram_wdata[2]_INST_0_i_4_n_0 ;
  wire \bram_wdata[30]_INST_0_i_1_n_0 ;
  wire \bram_wdata[30]_INST_0_i_2_n_0 ;
  wire \bram_wdata[30]_INST_0_i_3_n_0 ;
  wire \bram_wdata[30]_INST_0_i_4_n_0 ;
  wire \bram_wdata[31]_INST_0_i_1_n_0 ;
  wire \bram_wdata[31]_INST_0_i_2_n_0 ;
  wire \bram_wdata[31]_INST_0_i_3_n_2 ;
  wire \bram_wdata[31]_INST_0_i_3_n_3 ;
  wire \bram_wdata[31]_INST_0_i_4_n_0 ;
  wire \bram_wdata[31]_INST_0_i_5_n_0 ;
  wire \bram_wdata[3]_INST_0_i_1_n_0 ;
  wire \bram_wdata[3]_INST_0_i_2_n_0 ;
  wire \bram_wdata[3]_INST_0_i_3_n_0 ;
  wire \bram_wdata[3]_INST_0_i_4_n_0 ;
  wire \bram_wdata[4]_INST_0_i_1_n_0 ;
  wire \bram_wdata[4]_INST_0_i_2_n_0 ;
  wire \bram_wdata[4]_INST_0_i_3_n_0 ;
  wire \bram_wdata[4]_INST_0_i_3_n_1 ;
  wire \bram_wdata[4]_INST_0_i_3_n_2 ;
  wire \bram_wdata[4]_INST_0_i_3_n_3 ;
  wire \bram_wdata[4]_INST_0_i_4_n_0 ;
  wire \bram_wdata[4]_INST_0_i_5_n_0 ;
  wire \bram_wdata[5]_INST_0_i_1_n_0 ;
  wire \bram_wdata[5]_INST_0_i_2_n_0 ;
  wire \bram_wdata[5]_INST_0_i_3_n_0 ;
  wire \bram_wdata[5]_INST_0_i_4_n_0 ;
  wire \bram_wdata[6]_INST_0_i_1_n_0 ;
  wire \bram_wdata[6]_INST_0_i_2_n_0 ;
  wire \bram_wdata[6]_INST_0_i_3_n_0 ;
  wire \bram_wdata[6]_INST_0_i_4_n_0 ;
  wire \bram_wdata[7]_INST_0_i_1_n_0 ;
  wire \bram_wdata[7]_INST_0_i_2_n_0 ;
  wire \bram_wdata[7]_INST_0_i_3_n_0 ;
  wire \bram_wdata[7]_INST_0_i_4_n_0 ;
  wire \bram_wdata[8]_INST_0_i_1_n_0 ;
  wire \bram_wdata[8]_INST_0_i_2_n_0 ;
  wire \bram_wdata[8]_INST_0_i_3_n_0 ;
  wire \bram_wdata[8]_INST_0_i_3_n_1 ;
  wire \bram_wdata[8]_INST_0_i_3_n_2 ;
  wire \bram_wdata[8]_INST_0_i_3_n_3 ;
  wire \bram_wdata[8]_INST_0_i_4_n_0 ;
  wire \bram_wdata[8]_INST_0_i_5_n_0 ;
  wire \bram_wdata[9]_INST_0_i_1_n_0 ;
  wire \bram_wdata[9]_INST_0_i_2_n_0 ;
  wire \bram_wdata[9]_INST_0_i_3_n_0 ;
  wire \bram_wdata[9]_INST_0_i_4_n_0 ;
  wire busy6_out;
  wire busy_i_1_n_0;
  wire busy_reg_0;
  wire clear;
  wire commit;
  wire commit2_out;
  wire commit_i_1_n_0;
  wire frame_done;
  wire [3:0]hist_freq_rd_addr;
  wire [31:0]hist_freq_rd_data;
  wire [3:0]hist_mag_rd_addr;
  wire [31:0]hist_mag_rd_data;
  wire [31:0]mean_freq_num;
  wire [31:0]mean_mag_num;
  wire [5:0]p_0_in;
  wire [7:2]p_0_in_0;
  wire [31:0]p_0_in__0;
  wire psk_flag;
  wire [30:0]psk_spike_count;
  wire [31:0]sequence_reg;
  wire \sequence_reg[0]_i_3_n_0 ;
  wire \sequence_reg[0]_i_3_n_1 ;
  wire \sequence_reg[0]_i_3_n_2 ;
  wire \sequence_reg[0]_i_3_n_3 ;
  wire \sequence_reg[0]_i_3_n_4 ;
  wire \sequence_reg[0]_i_3_n_5 ;
  wire \sequence_reg[0]_i_3_n_6 ;
  wire \sequence_reg[0]_i_3_n_7 ;
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
  wire [63:0]var_freq_num;
  wire [63:0]var_mag_num;
  wire word_index;
  wire \word_index[5]_i_1_n_0 ;
  wire \word_index[5]_i_4_n_0 ;
  wire [3:2]\NLW_bram_wdata[31]_INST_0_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_wdata[31]_INST_0_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_sequence_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \bram_addr[2]_INST_0 
       (.I0(busy_reg_0),
        .I1(p_0_in_0[2]),
        .I2(commit),
        .O(bram_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \bram_addr[3]_INST_0 
       (.I0(busy_reg_0),
        .I1(p_0_in_0[3]),
        .I2(commit),
        .O(bram_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \bram_addr[4]_INST_0 
       (.I0(busy_reg_0),
        .I1(p_0_in_0[4]),
        .I2(commit),
        .O(bram_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \bram_addr[5]_INST_0 
       (.I0(busy_reg_0),
        .I1(p_0_in_0[5]),
        .I2(commit),
        .O(bram_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \bram_addr[6]_INST_0 
       (.I0(busy_reg_0),
        .I1(p_0_in_0[6]),
        .I2(commit),
        .O(bram_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \bram_addr[7]_INST_0 
       (.I0(busy_reg_0),
        .I1(p_0_in_0[7]),
        .I2(commit),
        .O(bram_addr[5]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \bram_wdata[0]_INST_0 
       (.I0(\bram_wdata[0]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[0]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(commit),
        .I5(sequence_reg[0]),
        .O(bram_wdata[0]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[0]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[0]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[0]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[0]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[0]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[0]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[0]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[0]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[0]_INST_0_i_3 
       (.I0(psk_spike_count[0]),
        .I1(mean_freq_num[0]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[0]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[32]),
        .O(\bram_wdata[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[0]_INST_0_i_4 
       (.I0(var_freq_num[0]),
        .I1(var_mag_num[32]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[0]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[10]_INST_0 
       (.I0(\bram_wdata[10]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[10]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[10]),
        .I5(commit),
        .O(bram_wdata[10]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[10]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[10]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[10]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[10]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[10]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[10]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[10]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[10]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[10]_INST_0_i_3 
       (.I0(psk_spike_count[10]),
        .I1(mean_freq_num[10]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[10]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[42]),
        .O(\bram_wdata[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[10]_INST_0_i_4 
       (.I0(var_freq_num[10]),
        .I1(var_mag_num[42]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[10]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[11]_INST_0 
       (.I0(\bram_wdata[11]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[11]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[11]),
        .I5(commit),
        .O(bram_wdata[11]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[11]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[11]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[11]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[11]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[11]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[11]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[11]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[11]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[11]_INST_0_i_3 
       (.I0(psk_spike_count[11]),
        .I1(mean_freq_num[11]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[11]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[43]),
        .O(\bram_wdata[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[11]_INST_0_i_4 
       (.I0(var_freq_num[11]),
        .I1(var_mag_num[43]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[11]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[12]_INST_0 
       (.I0(\bram_wdata[12]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[12]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[12]),
        .I5(commit),
        .O(bram_wdata[12]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[12]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[12]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[12]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[12]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[12]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[12]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[12]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[12]_INST_0_i_5_n_0 ),
        .O(\bram_wdata[12]_INST_0_i_2_n_0 ));
  CARRY4 \bram_wdata[12]_INST_0_i_3 
       (.CI(\bram_wdata[8]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[12]_INST_0_i_3_n_0 ,\bram_wdata[12]_INST_0_i_3_n_1 ,\bram_wdata[12]_INST_0_i_3_n_2 ,\bram_wdata[12]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[12:9]),
        .S(sequence_reg[12:9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[12]_INST_0_i_4 
       (.I0(psk_spike_count[12]),
        .I1(mean_freq_num[12]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[12]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[44]),
        .O(\bram_wdata[12]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[12]_INST_0_i_5 
       (.I0(var_freq_num[12]),
        .I1(var_mag_num[44]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[12]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[13]_INST_0 
       (.I0(\bram_wdata[13]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[13]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[13]),
        .I5(commit),
        .O(bram_wdata[13]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[13]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[13]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[13]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[13]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[13]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[13]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[13]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[13]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[13]_INST_0_i_3 
       (.I0(psk_spike_count[13]),
        .I1(mean_freq_num[13]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[13]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[45]),
        .O(\bram_wdata[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[13]_INST_0_i_4 
       (.I0(var_freq_num[13]),
        .I1(var_mag_num[45]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[13]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[14]_INST_0 
       (.I0(\bram_wdata[14]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[14]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[14]),
        .I5(commit),
        .O(bram_wdata[14]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[14]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[14]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[14]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[14]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[14]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[14]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[14]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[14]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[14]_INST_0_i_3 
       (.I0(psk_spike_count[14]),
        .I1(mean_freq_num[14]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[14]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[46]),
        .O(\bram_wdata[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[14]_INST_0_i_4 
       (.I0(var_freq_num[14]),
        .I1(var_mag_num[46]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[14]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[15]_INST_0 
       (.I0(\bram_wdata[15]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[15]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[15]),
        .I5(commit),
        .O(bram_wdata[15]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[15]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[15]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[15]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[15]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[15]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[15]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[15]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[15]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[15]_INST_0_i_3 
       (.I0(psk_spike_count[15]),
        .I1(mean_freq_num[15]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[15]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[47]),
        .O(\bram_wdata[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[15]_INST_0_i_4 
       (.I0(var_freq_num[15]),
        .I1(var_mag_num[47]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[15]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[16]_INST_0 
       (.I0(\bram_wdata[16]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[16]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[16]),
        .I5(commit),
        .O(bram_wdata[16]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[16]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[16]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[16]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[16]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[16]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[16]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[16]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[16]_INST_0_i_5_n_0 ),
        .O(\bram_wdata[16]_INST_0_i_2_n_0 ));
  CARRY4 \bram_wdata[16]_INST_0_i_3 
       (.CI(\bram_wdata[12]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[16]_INST_0_i_3_n_0 ,\bram_wdata[16]_INST_0_i_3_n_1 ,\bram_wdata[16]_INST_0_i_3_n_2 ,\bram_wdata[16]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[16:13]),
        .S(sequence_reg[16:13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[16]_INST_0_i_4 
       (.I0(psk_spike_count[16]),
        .I1(mean_freq_num[16]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[16]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[48]),
        .O(\bram_wdata[16]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[16]_INST_0_i_5 
       (.I0(var_freq_num[16]),
        .I1(var_mag_num[48]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[16]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[17]_INST_0 
       (.I0(\bram_wdata[17]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[17]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[17]),
        .I5(commit),
        .O(bram_wdata[17]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[17]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[17]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[17]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[17]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[17]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[17]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[17]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[17]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[17]_INST_0_i_3 
       (.I0(psk_spike_count[17]),
        .I1(mean_freq_num[17]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[17]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[49]),
        .O(\bram_wdata[17]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[17]_INST_0_i_4 
       (.I0(var_freq_num[17]),
        .I1(var_mag_num[49]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[17]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[18]_INST_0 
       (.I0(\bram_wdata[18]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[18]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[18]),
        .I5(commit),
        .O(bram_wdata[18]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[18]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[18]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[18]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[18]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[18]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[18]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[18]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[18]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[18]_INST_0_i_3 
       (.I0(psk_spike_count[18]),
        .I1(mean_freq_num[18]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[18]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[50]),
        .O(\bram_wdata[18]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[18]_INST_0_i_4 
       (.I0(var_freq_num[18]),
        .I1(var_mag_num[50]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[18]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[19]_INST_0 
       (.I0(\bram_wdata[19]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[19]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[19]),
        .I5(commit),
        .O(bram_wdata[19]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[19]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[19]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[19]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[19]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[19]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[19]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[19]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[19]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[19]_INST_0_i_3 
       (.I0(psk_spike_count[19]),
        .I1(mean_freq_num[19]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[19]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[51]),
        .O(\bram_wdata[19]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[19]_INST_0_i_4 
       (.I0(var_freq_num[19]),
        .I1(var_mag_num[51]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[19]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[1]_INST_0 
       (.I0(\bram_wdata[1]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[1]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[1]),
        .I5(commit),
        .O(bram_wdata[1]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[1]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[1]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[1]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[1]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[1]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[1]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[1]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[1]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[1]_INST_0_i_3 
       (.I0(psk_spike_count[1]),
        .I1(mean_freq_num[1]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[1]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[33]),
        .O(\bram_wdata[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[1]_INST_0_i_4 
       (.I0(var_freq_num[1]),
        .I1(var_mag_num[33]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[1]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[20]_INST_0 
       (.I0(\bram_wdata[20]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[20]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[20]),
        .I5(commit),
        .O(bram_wdata[20]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[20]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[20]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[20]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[20]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[20]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[20]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[20]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[20]_INST_0_i_5_n_0 ),
        .O(\bram_wdata[20]_INST_0_i_2_n_0 ));
  CARRY4 \bram_wdata[20]_INST_0_i_3 
       (.CI(\bram_wdata[16]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[20]_INST_0_i_3_n_0 ,\bram_wdata[20]_INST_0_i_3_n_1 ,\bram_wdata[20]_INST_0_i_3_n_2 ,\bram_wdata[20]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[20:17]),
        .S(sequence_reg[20:17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[20]_INST_0_i_4 
       (.I0(psk_spike_count[20]),
        .I1(mean_freq_num[20]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[20]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[52]),
        .O(\bram_wdata[20]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[20]_INST_0_i_5 
       (.I0(var_freq_num[20]),
        .I1(var_mag_num[52]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[20]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[21]_INST_0 
       (.I0(\bram_wdata[21]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[21]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[21]),
        .I5(commit),
        .O(bram_wdata[21]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[21]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[21]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[21]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[21]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[21]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[21]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[21]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[21]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[21]_INST_0_i_3 
       (.I0(psk_spike_count[21]),
        .I1(mean_freq_num[21]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[21]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[53]),
        .O(\bram_wdata[21]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[21]_INST_0_i_4 
       (.I0(var_freq_num[21]),
        .I1(var_mag_num[53]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[21]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[22]_INST_0 
       (.I0(\bram_wdata[22]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[22]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[22]),
        .I5(commit),
        .O(bram_wdata[22]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[22]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[22]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[22]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[22]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[22]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[22]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[22]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[22]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[22]_INST_0_i_3 
       (.I0(psk_spike_count[22]),
        .I1(mean_freq_num[22]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[22]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[54]),
        .O(\bram_wdata[22]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[22]_INST_0_i_4 
       (.I0(var_freq_num[22]),
        .I1(var_mag_num[54]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[22]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[23]_INST_0 
       (.I0(\bram_wdata[23]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[23]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[23]),
        .I5(commit),
        .O(bram_wdata[23]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[23]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[23]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[23]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[23]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[23]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[23]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[23]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[23]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[23]_INST_0_i_3 
       (.I0(psk_spike_count[23]),
        .I1(mean_freq_num[23]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[23]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[55]),
        .O(\bram_wdata[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[23]_INST_0_i_4 
       (.I0(var_freq_num[23]),
        .I1(var_mag_num[55]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[23]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[24]_INST_0 
       (.I0(\bram_wdata[24]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[24]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[24]),
        .I5(commit),
        .O(bram_wdata[24]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[24]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[24]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[24]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[24]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[24]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[24]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[24]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[24]_INST_0_i_5_n_0 ),
        .O(\bram_wdata[24]_INST_0_i_2_n_0 ));
  CARRY4 \bram_wdata[24]_INST_0_i_3 
       (.CI(\bram_wdata[20]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[24]_INST_0_i_3_n_0 ,\bram_wdata[24]_INST_0_i_3_n_1 ,\bram_wdata[24]_INST_0_i_3_n_2 ,\bram_wdata[24]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[24:21]),
        .S(sequence_reg[24:21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[24]_INST_0_i_4 
       (.I0(psk_spike_count[24]),
        .I1(mean_freq_num[24]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[24]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[56]),
        .O(\bram_wdata[24]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[24]_INST_0_i_5 
       (.I0(var_freq_num[24]),
        .I1(var_mag_num[56]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[24]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[25]_INST_0 
       (.I0(\bram_wdata[25]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[25]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[25]),
        .I5(commit),
        .O(bram_wdata[25]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[25]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[25]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[25]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[25]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[25]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[25]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[25]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[25]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[25]_INST_0_i_3 
       (.I0(psk_spike_count[25]),
        .I1(mean_freq_num[25]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[25]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[57]),
        .O(\bram_wdata[25]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[25]_INST_0_i_4 
       (.I0(var_freq_num[25]),
        .I1(var_mag_num[57]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[25]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[26]_INST_0 
       (.I0(\bram_wdata[26]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[26]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[26]),
        .I5(commit),
        .O(bram_wdata[26]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[26]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[26]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[26]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[26]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[26]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[26]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[26]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[26]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[26]_INST_0_i_3 
       (.I0(psk_spike_count[26]),
        .I1(mean_freq_num[26]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[26]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[58]),
        .O(\bram_wdata[26]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[26]_INST_0_i_4 
       (.I0(var_freq_num[26]),
        .I1(var_mag_num[58]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[26]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[27]_INST_0 
       (.I0(\bram_wdata[27]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[27]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[27]),
        .I5(commit),
        .O(bram_wdata[27]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[27]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[27]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[27]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[27]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[27]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[27]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[27]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[27]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[27]_INST_0_i_3 
       (.I0(psk_spike_count[27]),
        .I1(mean_freq_num[27]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[27]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[59]),
        .O(\bram_wdata[27]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[27]_INST_0_i_4 
       (.I0(var_freq_num[27]),
        .I1(var_mag_num[59]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[27]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[28]_INST_0 
       (.I0(\bram_wdata[28]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[28]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[28]),
        .I5(commit),
        .O(bram_wdata[28]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[28]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[28]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[28]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[28]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[28]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[28]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[28]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[28]_INST_0_i_5_n_0 ),
        .O(\bram_wdata[28]_INST_0_i_2_n_0 ));
  CARRY4 \bram_wdata[28]_INST_0_i_3 
       (.CI(\bram_wdata[24]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[28]_INST_0_i_3_n_0 ,\bram_wdata[28]_INST_0_i_3_n_1 ,\bram_wdata[28]_INST_0_i_3_n_2 ,\bram_wdata[28]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[28:25]),
        .S(sequence_reg[28:25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[28]_INST_0_i_4 
       (.I0(psk_spike_count[28]),
        .I1(mean_freq_num[28]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[28]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[60]),
        .O(\bram_wdata[28]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[28]_INST_0_i_5 
       (.I0(var_freq_num[28]),
        .I1(var_mag_num[60]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[28]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[29]_INST_0 
       (.I0(\bram_wdata[29]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[29]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[29]),
        .I5(commit),
        .O(bram_wdata[29]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[29]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[29]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[29]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[29]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[29]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[29]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[29]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[29]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[29]_INST_0_i_3 
       (.I0(psk_spike_count[29]),
        .I1(mean_freq_num[29]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[29]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[61]),
        .O(\bram_wdata[29]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[29]_INST_0_i_4 
       (.I0(var_freq_num[29]),
        .I1(var_mag_num[61]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[29]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[2]_INST_0 
       (.I0(\bram_wdata[2]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[2]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[2]),
        .I5(commit),
        .O(bram_wdata[2]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[2]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[2]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[2]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[2]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[2]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[2]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[2]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[2]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[2]_INST_0_i_3 
       (.I0(psk_spike_count[2]),
        .I1(mean_freq_num[2]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[2]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[34]),
        .O(\bram_wdata[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[2]_INST_0_i_4 
       (.I0(var_freq_num[2]),
        .I1(var_mag_num[34]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[2]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[30]_INST_0 
       (.I0(\bram_wdata[30]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[30]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[30]),
        .I5(commit),
        .O(bram_wdata[30]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[30]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[30]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[30]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[30]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[30]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[30]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[30]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[30]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[30]_INST_0_i_3 
       (.I0(psk_spike_count[30]),
        .I1(mean_freq_num[30]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[30]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[62]),
        .O(\bram_wdata[30]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[30]_INST_0_i_4 
       (.I0(var_freq_num[30]),
        .I1(var_mag_num[62]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[30]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[31]_INST_0 
       (.I0(\bram_wdata[31]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[31]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[31]),
        .I5(commit),
        .O(bram_wdata[31]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[31]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[31]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[31]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[31]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[31]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[31]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[31]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[31]_INST_0_i_5_n_0 ),
        .O(\bram_wdata[31]_INST_0_i_2_n_0 ));
  CARRY4 \bram_wdata[31]_INST_0_i_3 
       (.CI(\bram_wdata[28]_INST_0_i_3_n_0 ),
        .CO({\NLW_bram_wdata[31]_INST_0_i_3_CO_UNCONNECTED [3:2],\bram_wdata[31]_INST_0_i_3_n_2 ,\bram_wdata[31]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_wdata[31]_INST_0_i_3_O_UNCONNECTED [3],p_0_in__0[31:29]}),
        .S({1'b0,sequence_reg[31:29]}));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[31]_INST_0_i_4 
       (.I0(psk_flag),
        .I1(mean_freq_num[31]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[31]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[63]),
        .O(\bram_wdata[31]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[31]_INST_0_i_5 
       (.I0(var_freq_num[31]),
        .I1(var_mag_num[63]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[31]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[3]_INST_0 
       (.I0(\bram_wdata[3]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[3]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[3]),
        .I5(commit),
        .O(bram_wdata[3]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[3]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[3]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[3]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[3]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[3]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[3]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[3]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[3]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[3]_INST_0_i_3 
       (.I0(psk_spike_count[3]),
        .I1(mean_freq_num[3]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[3]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[35]),
        .O(\bram_wdata[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[3]_INST_0_i_4 
       (.I0(var_freq_num[3]),
        .I1(var_mag_num[35]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[3]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[4]_INST_0 
       (.I0(\bram_wdata[4]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[4]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[4]),
        .I5(commit),
        .O(bram_wdata[4]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[4]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[4]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[4]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[4]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[4]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[4]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[4]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[4]_INST_0_i_5_n_0 ),
        .O(\bram_wdata[4]_INST_0_i_2_n_0 ));
  CARRY4 \bram_wdata[4]_INST_0_i_3 
       (.CI(1'b0),
        .CO({\bram_wdata[4]_INST_0_i_3_n_0 ,\bram_wdata[4]_INST_0_i_3_n_1 ,\bram_wdata[4]_INST_0_i_3_n_2 ,\bram_wdata[4]_INST_0_i_3_n_3 }),
        .CYINIT(sequence_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[4:1]),
        .S(sequence_reg[4:1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[4]_INST_0_i_4 
       (.I0(psk_spike_count[4]),
        .I1(mean_freq_num[4]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[4]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[36]),
        .O(\bram_wdata[4]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[4]_INST_0_i_5 
       (.I0(var_freq_num[4]),
        .I1(var_mag_num[36]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[4]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[5]_INST_0 
       (.I0(\bram_wdata[5]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[5]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[5]),
        .I5(commit),
        .O(bram_wdata[5]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[5]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[5]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[5]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[5]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[5]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[5]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[5]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[5]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[5]_INST_0_i_3 
       (.I0(psk_spike_count[5]),
        .I1(mean_freq_num[5]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[5]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[37]),
        .O(\bram_wdata[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[5]_INST_0_i_4 
       (.I0(var_freq_num[5]),
        .I1(var_mag_num[37]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[5]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[6]_INST_0 
       (.I0(\bram_wdata[6]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[6]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[6]),
        .I5(commit),
        .O(bram_wdata[6]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[6]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[6]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[6]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[6]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[6]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[6]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[6]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[6]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[6]_INST_0_i_3 
       (.I0(psk_spike_count[6]),
        .I1(mean_freq_num[6]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[6]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[38]),
        .O(\bram_wdata[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[6]_INST_0_i_4 
       (.I0(var_freq_num[6]),
        .I1(var_mag_num[38]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[6]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[7]_INST_0 
       (.I0(\bram_wdata[7]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[7]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[7]),
        .I5(commit),
        .O(bram_wdata[7]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[7]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[7]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[7]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[7]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[7]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[7]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[7]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[7]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[7]_INST_0_i_3 
       (.I0(psk_spike_count[7]),
        .I1(mean_freq_num[7]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[7]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[39]),
        .O(\bram_wdata[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[7]_INST_0_i_4 
       (.I0(var_freq_num[7]),
        .I1(var_mag_num[39]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[7]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[8]_INST_0 
       (.I0(\bram_wdata[8]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[8]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[8]),
        .I5(commit),
        .O(bram_wdata[8]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[8]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[8]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[8]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[8]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[8]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[8]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[8]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[8]_INST_0_i_5_n_0 ),
        .O(\bram_wdata[8]_INST_0_i_2_n_0 ));
  CARRY4 \bram_wdata[8]_INST_0_i_3 
       (.CI(\bram_wdata[4]_INST_0_i_3_n_0 ),
        .CO({\bram_wdata[8]_INST_0_i_3_n_0 ,\bram_wdata[8]_INST_0_i_3_n_1 ,\bram_wdata[8]_INST_0_i_3_n_2 ,\bram_wdata[8]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[8:5]),
        .S(sequence_reg[8:5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[8]_INST_0_i_4 
       (.I0(psk_spike_count[8]),
        .I1(mean_freq_num[8]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[8]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[40]),
        .O(\bram_wdata[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[8]_INST_0_i_5 
       (.I0(var_freq_num[8]),
        .I1(var_mag_num[40]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[8]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B800)) 
    \bram_wdata[9]_INST_0 
       (.I0(\bram_wdata[9]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\bram_wdata[9]_INST_0_i_2_n_0 ),
        .I3(busy_reg_0),
        .I4(p_0_in__0[9]),
        .I5(commit),
        .O(bram_wdata[9]));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[9]_INST_0_i_1 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[9]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[9]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[9]_INST_0_i_3_n_0 ),
        .O(\bram_wdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0500ED4D0500E848)) 
    \bram_wdata[9]_INST_0_i_2 
       (.I0(p_0_in_0[6]),
        .I1(hist_mag_rd_data[9]),
        .I2(p_0_in_0[5]),
        .I3(hist_freq_rd_data[9]),
        .I4(p_0_in_0[7]),
        .I5(\bram_wdata[9]_INST_0_i_4_n_0 ),
        .O(\bram_wdata[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram_wdata[9]_INST_0_i_3 
       (.I0(psk_spike_count[9]),
        .I1(mean_freq_num[9]),
        .I2(p_0_in_0[3]),
        .I3(mean_mag_num[9]),
        .I4(p_0_in_0[2]),
        .I5(var_freq_num[41]),
        .O(\bram_wdata[9]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \bram_wdata[9]_INST_0_i_4 
       (.I0(var_freq_num[9]),
        .I1(var_mag_num[41]),
        .I2(p_0_in_0[3]),
        .I3(var_mag_num[9]),
        .I4(p_0_in_0[2]),
        .O(\bram_wdata[9]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_we[0]_INST_0 
       (.I0(commit),
        .I1(busy_reg_0),
        .O(bram_en));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h04F40000)) 
    busy_i_1
       (.I0(commit),
        .I1(frame_done),
        .I2(busy_reg_0),
        .I3(busy6_out),
        .I4(aresetn),
        .O(busy_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    busy_i_2
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[5]),
        .I2(\word_index[5]_i_4_n_0 ),
        .I3(p_0_in_0[7]),
        .I4(p_0_in_0[6]),
        .I5(busy_reg_0),
        .O(busy6_out));
  FDRE busy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    commit_i_1
       (.I0(busy6_out),
        .I1(commit),
        .I2(busy_reg_0),
        .I3(aresetn),
        .O(commit_i_1_n_0));
  FDRE commit_reg
       (.C(aclk),
        .CE(1'b1),
        .D(commit_i_1_n_0),
        .Q(commit),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h08400000)) 
    \hist_freq_rd_addr[0]_INST_0 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[7]),
        .I3(p_0_in_0[6]),
        .I4(busy_reg_0),
        .O(hist_freq_rd_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h08400000)) 
    \hist_freq_rd_addr[1]_INST_0 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[7]),
        .I3(p_0_in_0[6]),
        .I4(busy_reg_0),
        .O(hist_freq_rd_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08200000)) 
    \hist_freq_rd_addr[2]_INST_0 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[6]),
        .I2(p_0_in_0[7]),
        .I3(p_0_in_0[5]),
        .I4(busy_reg_0),
        .O(hist_freq_rd_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \hist_freq_rd_addr[3]_INST_0 
       (.I0(p_0_in_0[6]),
        .I1(p_0_in_0[7]),
        .I2(p_0_in_0[5]),
        .I3(busy_reg_0),
        .O(hist_freq_rd_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04080000)) 
    \hist_mag_rd_addr[0]_INST_0 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[7]),
        .I3(p_0_in_0[6]),
        .I4(busy_reg_0),
        .O(hist_mag_rd_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h04080000)) 
    \hist_mag_rd_addr[1]_INST_0 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[7]),
        .I3(p_0_in_0[6]),
        .I4(busy_reg_0),
        .O(hist_mag_rd_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00280000)) 
    \hist_mag_rd_addr[2]_INST_0 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[6]),
        .I2(p_0_in_0[5]),
        .I3(p_0_in_0[7]),
        .I4(busy_reg_0),
        .O(hist_mag_rd_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \hist_mag_rd_addr[3]_INST_0 
       (.I0(p_0_in_0[6]),
        .I1(p_0_in_0[7]),
        .I2(p_0_in_0[5]),
        .I3(busy_reg_0),
        .O(hist_mag_rd_addr[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \sequence[0]_i_1 
       (.I0(aresetn),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \sequence[0]_i_2 
       (.I0(commit),
        .I1(busy_reg_0),
        .O(commit2_out));
  LUT1 #(
    .INIT(2'h1)) 
    \sequence[0]_i_4 
       (.I0(sequence_reg[0]),
        .O(p_0_in__0[0]));
  FDRE \sequence_reg[0] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[0]_i_3_n_7 ),
        .Q(sequence_reg[0]),
        .R(clear));
  CARRY4 \sequence_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\sequence_reg[0]_i_3_n_0 ,\sequence_reg[0]_i_3_n_1 ,\sequence_reg[0]_i_3_n_2 ,\sequence_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sequence_reg[0]_i_3_n_4 ,\sequence_reg[0]_i_3_n_5 ,\sequence_reg[0]_i_3_n_6 ,\sequence_reg[0]_i_3_n_7 }),
        .S({sequence_reg[3:1],p_0_in__0[0]}));
  FDRE \sequence_reg[10] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[8]_i_1_n_5 ),
        .Q(sequence_reg[10]),
        .R(clear));
  FDRE \sequence_reg[11] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[8]_i_1_n_4 ),
        .Q(sequence_reg[11]),
        .R(clear));
  FDRE \sequence_reg[12] 
       (.C(aclk),
        .CE(commit2_out),
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
        .CE(commit2_out),
        .D(\sequence_reg[12]_i_1_n_6 ),
        .Q(sequence_reg[13]),
        .R(clear));
  FDRE \sequence_reg[14] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[12]_i_1_n_5 ),
        .Q(sequence_reg[14]),
        .R(clear));
  FDRE \sequence_reg[15] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[12]_i_1_n_4 ),
        .Q(sequence_reg[15]),
        .R(clear));
  FDRE \sequence_reg[16] 
       (.C(aclk),
        .CE(commit2_out),
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
        .CE(commit2_out),
        .D(\sequence_reg[16]_i_1_n_6 ),
        .Q(sequence_reg[17]),
        .R(clear));
  FDRE \sequence_reg[18] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[16]_i_1_n_5 ),
        .Q(sequence_reg[18]),
        .R(clear));
  FDRE \sequence_reg[19] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[16]_i_1_n_4 ),
        .Q(sequence_reg[19]),
        .R(clear));
  FDRE \sequence_reg[1] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[0]_i_3_n_6 ),
        .Q(sequence_reg[1]),
        .R(clear));
  FDRE \sequence_reg[20] 
       (.C(aclk),
        .CE(commit2_out),
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
        .CE(commit2_out),
        .D(\sequence_reg[20]_i_1_n_6 ),
        .Q(sequence_reg[21]),
        .R(clear));
  FDRE \sequence_reg[22] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[20]_i_1_n_5 ),
        .Q(sequence_reg[22]),
        .R(clear));
  FDRE \sequence_reg[23] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[20]_i_1_n_4 ),
        .Q(sequence_reg[23]),
        .R(clear));
  FDRE \sequence_reg[24] 
       (.C(aclk),
        .CE(commit2_out),
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
        .CE(commit2_out),
        .D(\sequence_reg[24]_i_1_n_6 ),
        .Q(sequence_reg[25]),
        .R(clear));
  FDRE \sequence_reg[26] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[24]_i_1_n_5 ),
        .Q(sequence_reg[26]),
        .R(clear));
  FDRE \sequence_reg[27] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[24]_i_1_n_4 ),
        .Q(sequence_reg[27]),
        .R(clear));
  FDRE \sequence_reg[28] 
       (.C(aclk),
        .CE(commit2_out),
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
        .CE(commit2_out),
        .D(\sequence_reg[28]_i_1_n_6 ),
        .Q(sequence_reg[29]),
        .R(clear));
  FDRE \sequence_reg[2] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[0]_i_3_n_5 ),
        .Q(sequence_reg[2]),
        .R(clear));
  FDRE \sequence_reg[30] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[28]_i_1_n_5 ),
        .Q(sequence_reg[30]),
        .R(clear));
  FDRE \sequence_reg[31] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[28]_i_1_n_4 ),
        .Q(sequence_reg[31]),
        .R(clear));
  FDRE \sequence_reg[3] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[0]_i_3_n_4 ),
        .Q(sequence_reg[3]),
        .R(clear));
  FDRE \sequence_reg[4] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[4]_i_1_n_7 ),
        .Q(sequence_reg[4]),
        .R(clear));
  CARRY4 \sequence_reg[4]_i_1 
       (.CI(\sequence_reg[0]_i_3_n_0 ),
        .CO({\sequence_reg[4]_i_1_n_0 ,\sequence_reg[4]_i_1_n_1 ,\sequence_reg[4]_i_1_n_2 ,\sequence_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sequence_reg[4]_i_1_n_4 ,\sequence_reg[4]_i_1_n_5 ,\sequence_reg[4]_i_1_n_6 ,\sequence_reg[4]_i_1_n_7 }),
        .S(sequence_reg[7:4]));
  FDRE \sequence_reg[5] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[4]_i_1_n_6 ),
        .Q(sequence_reg[5]),
        .R(clear));
  FDRE \sequence_reg[6] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[4]_i_1_n_5 ),
        .Q(sequence_reg[6]),
        .R(clear));
  FDRE \sequence_reg[7] 
       (.C(aclk),
        .CE(commit2_out),
        .D(\sequence_reg[4]_i_1_n_4 ),
        .Q(sequence_reg[7]),
        .R(clear));
  FDRE \sequence_reg[8] 
       (.C(aclk),
        .CE(commit2_out),
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
        .CE(commit2_out),
        .D(\sequence_reg[8]_i_1_n_6 ),
        .Q(sequence_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \word_index[0]_i_1 
       (.I0(p_0_in_0[2]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \word_index[1]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \word_index[2]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \word_index[3]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[4]),
        .I3(p_0_in_0[5]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \word_index[4]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[5]),
        .I3(p_0_in_0[4]),
        .I4(p_0_in_0[6]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h10FF)) 
    \word_index[5]_i_1 
       (.I0(busy_reg_0),
        .I1(commit),
        .I2(frame_done),
        .I3(aresetn),
        .O(\word_index[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \word_index[5]_i_2 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[5]),
        .I2(\word_index[5]_i_4_n_0 ),
        .I3(p_0_in_0[7]),
        .I4(p_0_in_0[6]),
        .I5(busy_reg_0),
        .O(word_index));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \word_index[5]_i_3 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[5]),
        .I3(p_0_in_0[6]),
        .I4(p_0_in_0[4]),
        .I5(p_0_in_0[7]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_index[5]_i_4 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .O(\word_index[5]_i_4_n_0 ));
  FDSE \word_index_reg[0] 
       (.C(aclk),
        .CE(word_index),
        .D(p_0_in[0]),
        .Q(p_0_in_0[2]),
        .S(\word_index[5]_i_1_n_0 ));
  FDRE \word_index_reg[1] 
       (.C(aclk),
        .CE(word_index),
        .D(p_0_in[1]),
        .Q(p_0_in_0[3]),
        .R(\word_index[5]_i_1_n_0 ));
  FDRE \word_index_reg[2] 
       (.C(aclk),
        .CE(word_index),
        .D(p_0_in[2]),
        .Q(p_0_in_0[4]),
        .R(\word_index[5]_i_1_n_0 ));
  FDRE \word_index_reg[3] 
       (.C(aclk),
        .CE(word_index),
        .D(p_0_in[3]),
        .Q(p_0_in_0[5]),
        .R(\word_index[5]_i_1_n_0 ));
  FDRE \word_index_reg[4] 
       (.C(aclk),
        .CE(word_index),
        .D(p_0_in[4]),
        .Q(p_0_in_0[6]),
        .R(\word_index[5]_i_1_n_0 ));
  FDRE \word_index_reg[5] 
       (.C(aclk),
        .CE(word_index),
        .D(p_0_in[5]),
        .Q(p_0_in_0[7]),
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
