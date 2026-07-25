// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jul 25 20:10:02 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Toph
//               Beifong/Desktop/2023_step2_by_ygw_v4/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_ad9226_stage1_driver_0_0/design_1_ad9226_stage1_driver_0_0_sim_netlist.v}
// Design      : design_1_ad9226_stage1_driver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ad9226_stage1_driver_0_0,ad9226_stage1_driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ad9226_stage1_driver,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_ad9226_stage1_driver_0_0
   (clk_60m_adc,
    clk_60m_sample,
    clk_locked,
    resetn,
    ad_clk,
    ad_data_in,
    ad_otr_in,
    adc_data,
    adc_valid,
    adc_otr,
    clk_60m_core,
    core_aresetn,
    locked_debug);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_ADC CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_ADC, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk_60m_adc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_SAMPLE CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_SAMPLE, ASSOCIATED_RESET resetn, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk_60m_sample;
  input clk_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AD_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AD_CLK, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ad9226_stage1_driver_0_0_ad_clk, INSERT_VIP 0" *) output ad_clk;
  input [11:0]ad_data_in;
  input ad_otr_in;
  output [13:0]adc_data;
  output adc_valid;
  output adc_otr;
  output clk_60m_core;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 core_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output core_aresetn;
  output locked_debug;

  wire \<const0> ;
  wire ad_clk;
  wire [11:0]ad_data_in;
  wire ad_otr_in;
  wire [13:2]\^adc_data ;
  wire adc_otr;
  wire adc_valid;
  wire clk_60m_adc;
  wire clk_60m_sample;
  wire clk_locked;
  wire core_aresetn;
  wire resetn;

  assign adc_data[13:2] = \^adc_data [13:2];
  assign adc_data[1] = \<const0> ;
  assign adc_data[0] = \<const0> ;
  assign clk_60m_core = clk_60m_sample;
  assign locked_debug = clk_locked;
  GND GND
       (.G(\<const0> ));
  design_1_ad9226_stage1_driver_0_0_ad9226_stage1_driver inst
       (.ad_clk(ad_clk),
        .ad_data_in(ad_data_in),
        .ad_otr_in(ad_otr_in),
        .adc_data(\^adc_data ),
        .adc_otr(adc_otr),
        .adc_valid(adc_valid),
        .clk_60m_adc(clk_60m_adc),
        .clk_60m_sample(clk_60m_sample),
        .clk_locked(clk_locked),
        .core_aresetn(core_aresetn),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "ad9226_data_path" *) 
module design_1_ad9226_stage1_driver_0_0_ad9226_data_path
   (adc_valid,
    \sample_reset_sync_reg[1] ,
    adc_otr,
    adc_data,
    sample_valid,
    clk_60m_sample,
    Q,
    core_aresetn,
    ad_otr_sample);
  output adc_valid;
  output \sample_reset_sync_reg[1] ;
  output adc_otr;
  output [11:0]adc_data;
  input sample_valid;
  input clk_60m_sample;
  input [11:0]Q;
  input core_aresetn;
  input ad_otr_sample;

  wire [11:0]Q;
  wire ad_otr_sample;
  wire [11:0]adc_data;
  wire adc_otr;
  wire adc_valid;
  wire clk_60m_sample;
  wire core_aresetn;
  wire data_dc_removed1;
  wire data_dc_removed10_in;
  wire data_dc_removed1__5_carry__0_n_3;
  wire data_dc_removed1__5_carry_i_1_n_0;
  wire data_dc_removed1__5_carry_i_2_n_0;
  wire data_dc_removed1__5_carry_i_3_n_0;
  wire data_dc_removed1__5_carry_i_4_n_0;
  wire data_dc_removed1__5_carry_n_0;
  wire data_dc_removed1__5_carry_n_1;
  wire data_dc_removed1__5_carry_n_2;
  wire data_dc_removed1__5_carry_n_3;
  wire data_dc_removed1_carry__0_i_1_n_0;
  wire data_dc_removed1_carry__0_i_2_n_0;
  wire data_dc_removed1_carry__0_n_3;
  wire data_dc_removed1_carry_i_1_n_3;
  wire data_dc_removed1_carry_i_2_n_0;
  wire data_dc_removed1_carry_i_3_n_0;
  wire data_dc_removed1_carry_i_4_n_0;
  wire data_dc_removed1_carry_i_5_n_0;
  wire data_dc_removed1_carry_i_6_n_0;
  wire data_dc_removed1_carry_n_0;
  wire data_dc_removed1_carry_n_1;
  wire data_dc_removed1_carry_n_2;
  wire data_dc_removed1_carry_n_3;
  wire \data_dc_removed[0]_i_1_n_0 ;
  wire \data_dc_removed[10]_i_1_n_0 ;
  wire \data_dc_removed[11]_i_1_n_0 ;
  wire \data_dc_removed[1]_i_1_n_0 ;
  wire \data_dc_removed[2]_i_1_n_0 ;
  wire \data_dc_removed[3]_i_1_n_0 ;
  wire \data_dc_removed[4]_i_1_n_0 ;
  wire \data_dc_removed[5]_i_1_n_0 ;
  wire \data_dc_removed[6]_i_1_n_0 ;
  wire \data_dc_removed[7]_i_1_n_0 ;
  wire \data_dc_removed[8]_i_1_n_0 ;
  wire \data_dc_removed[9]_i_1_n_0 ;
  wire \dc_accumulator_reg_n_0_[0] ;
  wire \dc_accumulator_reg_n_0_[10] ;
  wire \dc_accumulator_reg_n_0_[11] ;
  wire \dc_accumulator_reg_n_0_[12] ;
  wire \dc_accumulator_reg_n_0_[13] ;
  wire \dc_accumulator_reg_n_0_[14] ;
  wire \dc_accumulator_reg_n_0_[15] ;
  wire \dc_accumulator_reg_n_0_[16] ;
  wire \dc_accumulator_reg_n_0_[17] ;
  wire \dc_accumulator_reg_n_0_[18] ;
  wire \dc_accumulator_reg_n_0_[1] ;
  wire \dc_accumulator_reg_n_0_[2] ;
  wire \dc_accumulator_reg_n_0_[3] ;
  wire \dc_accumulator_reg_n_0_[4] ;
  wire \dc_accumulator_reg_n_0_[5] ;
  wire \dc_accumulator_reg_n_0_[6] ;
  wire \dc_accumulator_reg_n_0_[7] ;
  wire \dc_accumulator_reg_n_0_[8] ;
  wire \dc_accumulator_reg_n_0_[9] ;
  wire [20:0]dc_error_wide;
  wire dc_error_wide_carry__0_i_5_n_0;
  wire dc_error_wide_carry__0_i_6_n_0;
  wire dc_error_wide_carry__0_i_7_n_0;
  wire dc_error_wide_carry__0_i_8_n_0;
  wire dc_error_wide_carry__0_n_0;
  wire dc_error_wide_carry__0_n_1;
  wire dc_error_wide_carry__0_n_2;
  wire dc_error_wide_carry__0_n_3;
  wire dc_error_wide_carry__1_i_4_n_0;
  wire dc_error_wide_carry__1_i_5_n_0;
  wire dc_error_wide_carry__1_i_6_n_0;
  wire dc_error_wide_carry__1_i_7_n_0;
  wire dc_error_wide_carry__1_n_0;
  wire dc_error_wide_carry__1_n_1;
  wire dc_error_wide_carry__1_n_2;
  wire dc_error_wide_carry__1_n_3;
  wire dc_error_wide_carry_i_5_n_0;
  wire dc_error_wide_carry_i_6_n_0;
  wire dc_error_wide_carry_i_7_n_0;
  wire dc_error_wide_carry_i_8_n_0;
  wire dc_error_wide_carry_n_0;
  wire dc_error_wide_carry_n_1;
  wire dc_error_wide_carry_n_2;
  wire dc_error_wide_carry_n_3;
  wire dc_next_wide__0_carry__0_i_1_n_0;
  wire dc_next_wide__0_carry__0_i_2_n_0;
  wire dc_next_wide__0_carry__0_i_3_n_0;
  wire dc_next_wide__0_carry__0_i_4_n_0;
  wire dc_next_wide__0_carry__0_i_5_n_0;
  wire dc_next_wide__0_carry__0_i_6_n_0;
  wire dc_next_wide__0_carry__0_i_7_n_0;
  wire dc_next_wide__0_carry__0_i_8_n_0;
  wire dc_next_wide__0_carry__0_n_0;
  wire dc_next_wide__0_carry__0_n_1;
  wire dc_next_wide__0_carry__0_n_2;
  wire dc_next_wide__0_carry__0_n_3;
  wire dc_next_wide__0_carry__0_n_4;
  wire dc_next_wide__0_carry__0_n_5;
  wire dc_next_wide__0_carry__0_n_6;
  wire dc_next_wide__0_carry__0_n_7;
  wire dc_next_wide__0_carry__1_i_1_n_0;
  wire dc_next_wide__0_carry__1_i_2_n_0;
  wire dc_next_wide__0_carry__1_i_3_n_0;
  wire dc_next_wide__0_carry__1_i_4_n_0;
  wire dc_next_wide__0_carry__1_i_5_n_0;
  wire dc_next_wide__0_carry__1_i_6_n_0;
  wire dc_next_wide__0_carry__1_i_7_n_0;
  wire dc_next_wide__0_carry__1_i_8_n_0;
  wire dc_next_wide__0_carry__1_n_0;
  wire dc_next_wide__0_carry__1_n_1;
  wire dc_next_wide__0_carry__1_n_2;
  wire dc_next_wide__0_carry__1_n_3;
  wire dc_next_wide__0_carry__1_n_4;
  wire dc_next_wide__0_carry__1_n_5;
  wire dc_next_wide__0_carry__1_n_6;
  wire dc_next_wide__0_carry__1_n_7;
  wire dc_next_wide__0_carry__2_i_1_n_0;
  wire dc_next_wide__0_carry__2_i_2_n_0;
  wire dc_next_wide__0_carry__2_i_3_n_0;
  wire dc_next_wide__0_carry__2_i_4_n_0;
  wire dc_next_wide__0_carry__2_i_5_n_0;
  wire dc_next_wide__0_carry__2_i_6_n_0;
  wire dc_next_wide__0_carry__2_n_0;
  wire dc_next_wide__0_carry__2_n_1;
  wire dc_next_wide__0_carry__2_n_2;
  wire dc_next_wide__0_carry__2_n_3;
  wire dc_next_wide__0_carry__2_n_4;
  wire dc_next_wide__0_carry__2_n_5;
  wire dc_next_wide__0_carry__2_n_6;
  wire dc_next_wide__0_carry__2_n_7;
  wire dc_next_wide__0_carry__3_i_1_n_0;
  wire dc_next_wide__0_carry__3_i_2_n_0;
  wire dc_next_wide__0_carry__3_i_3_n_0;
  wire dc_next_wide__0_carry__3_i_4_n_0;
  wire dc_next_wide__0_carry__3_n_1;
  wire dc_next_wide__0_carry__3_n_2;
  wire dc_next_wide__0_carry__3_n_3;
  wire dc_next_wide__0_carry__3_n_4;
  wire dc_next_wide__0_carry__3_n_5;
  wire dc_next_wide__0_carry__3_n_6;
  wire dc_next_wide__0_carry__3_n_7;
  wire dc_next_wide__0_carry_i_1_n_0;
  wire dc_next_wide__0_carry_i_2_n_0;
  wire dc_next_wide__0_carry_i_3_n_0;
  wire dc_next_wide__0_carry_i_4_n_0;
  wire dc_next_wide__0_carry_i_5_n_0;
  wire dc_next_wide__0_carry_i_6_n_0;
  wire dc_next_wide__0_carry_i_7_n_0;
  wire dc_next_wide__0_carry_i_8_n_0;
  wire dc_next_wide__0_carry_n_0;
  wire dc_next_wide__0_carry_n_1;
  wire dc_next_wide__0_carry_n_2;
  wire dc_next_wide__0_carry_n_3;
  wire dc_next_wide__0_carry_n_4;
  wire dc_next_wide__0_carry_n_5;
  wire dc_next_wide__0_carry_n_6;
  wire dc_next_wide__0_carry_n_7;
  wire otr_out_reg;
  wire p_0_in0;
  wire [10:0]sample_extended;
  wire \sample_reset_sync_reg[1] ;
  wire sample_valid;
  wire [3:0]NLW_data_dc_removed1__5_carry_O_UNCONNECTED;
  wire [3:2]NLW_data_dc_removed1__5_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_data_dc_removed1__5_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_data_dc_removed1_carry_O_UNCONNECTED;
  wire [3:2]NLW_data_dc_removed1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_data_dc_removed1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_data_dc_removed1_carry_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_data_dc_removed1_carry_i_1_O_UNCONNECTED;
  wire [3:3]NLW_dc_next_wide__0_carry__3_CO_UNCONNECTED;

  CARRY4 data_dc_removed1__5_carry
       (.CI(1'b0),
        .CO({data_dc_removed1__5_carry_n_0,data_dc_removed1__5_carry_n_1,data_dc_removed1__5_carry_n_2,data_dc_removed1__5_carry_n_3}),
        .CYINIT(1'b0),
        .DI({data_dc_removed1__5_carry_i_1_n_0,data_dc_removed1__5_carry_i_2_n_0,data_dc_removed1__5_carry_i_3_n_0,dc_error_wide[11]}),
        .O(NLW_data_dc_removed1__5_carry_O_UNCONNECTED[3:0]),
        .S({data_dc_removed1_carry_i_1_n_3,data_dc_removed1_carry_i_1_n_3,data_dc_removed1_carry_i_1_n_3,data_dc_removed1__5_carry_i_4_n_0}));
  CARRY4 data_dc_removed1__5_carry__0
       (.CI(data_dc_removed1__5_carry_n_0),
        .CO({NLW_data_dc_removed1__5_carry__0_CO_UNCONNECTED[3:2],data_dc_removed10_in,data_dc_removed1__5_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,dc_error_wide[20]}),
        .O(NLW_data_dc_removed1__5_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,data_dc_removed1_carry_i_1_n_3,data_dc_removed1_carry_i_1_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    data_dc_removed1__5_carry__0_i_1
       (.I0(data_dc_removed1_carry_i_1_n_3),
        .O(dc_error_wide[20]));
  LUT1 #(
    .INIT(2'h1)) 
    data_dc_removed1__5_carry_i_1
       (.I0(data_dc_removed1_carry_i_1_n_3),
        .O(data_dc_removed1__5_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_dc_removed1__5_carry_i_2
       (.I0(data_dc_removed1_carry_i_1_n_3),
        .O(data_dc_removed1__5_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_dc_removed1__5_carry_i_3
       (.I0(data_dc_removed1_carry_i_1_n_3),
        .O(data_dc_removed1__5_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_dc_removed1__5_carry_i_4
       (.I0(dc_error_wide[10]),
        .I1(dc_error_wide[11]),
        .O(data_dc_removed1__5_carry_i_4_n_0));
  CARRY4 data_dc_removed1_carry
       (.CI(1'b0),
        .CO({data_dc_removed1_carry_n_0,data_dc_removed1_carry_n_1,data_dc_removed1_carry_n_2,data_dc_removed1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({data_dc_removed1_carry_i_1_n_3,data_dc_removed1_carry_i_1_n_3,data_dc_removed1_carry_i_1_n_3,data_dc_removed1_carry_i_2_n_0}),
        .O(NLW_data_dc_removed1_carry_O_UNCONNECTED[3:0]),
        .S({data_dc_removed1_carry_i_3_n_0,data_dc_removed1_carry_i_4_n_0,data_dc_removed1_carry_i_5_n_0,data_dc_removed1_carry_i_6_n_0}));
  CARRY4 data_dc_removed1_carry__0
       (.CI(data_dc_removed1_carry_n_0),
        .CO({NLW_data_dc_removed1_carry__0_CO_UNCONNECTED[3:2],data_dc_removed1,data_dc_removed1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data_dc_removed1_carry_i_1_n_3}),
        .O(NLW_data_dc_removed1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,data_dc_removed1_carry__0_i_1_n_0,data_dc_removed1_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_dc_removed1_carry__0_i_1
       (.I0(data_dc_removed1_carry_i_1_n_3),
        .O(data_dc_removed1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_dc_removed1_carry__0_i_2
       (.I0(data_dc_removed1_carry_i_1_n_3),
        .O(data_dc_removed1_carry__0_i_2_n_0));
  CARRY4 data_dc_removed1_carry_i_1
       (.CI(dc_error_wide_carry__1_n_0),
        .CO({NLW_data_dc_removed1_carry_i_1_CO_UNCONNECTED[3:1],data_dc_removed1_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_dc_removed1_carry_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    data_dc_removed1_carry_i_2
       (.I0(dc_error_wide[11]),
        .O(data_dc_removed1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_dc_removed1_carry_i_3
       (.I0(data_dc_removed1_carry_i_1_n_3),
        .O(data_dc_removed1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_dc_removed1_carry_i_4
       (.I0(data_dc_removed1_carry_i_1_n_3),
        .O(data_dc_removed1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_dc_removed1_carry_i_5
       (.I0(data_dc_removed1_carry_i_1_n_3),
        .O(data_dc_removed1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_dc_removed1_carry_i_6
       (.I0(dc_error_wide[11]),
        .I1(dc_error_wide[10]),
        .O(data_dc_removed1_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[0]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[0]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[10]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[10]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \data_dc_removed[11]_i_1 
       (.I0(sample_valid),
        .I1(data_dc_removed10_in),
        .I2(data_dc_removed1),
        .I3(dc_error_wide[11]),
        .O(\data_dc_removed[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_dc_removed[11]_i_2 
       (.I0(core_aresetn),
        .O(\sample_reset_sync_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[1]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[1]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[2]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[2]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[3]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[3]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[4]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[4]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[5]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[5]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[6]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[6]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[7]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[7]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[8]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[8]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \data_dc_removed[9]_i_1 
       (.I0(sample_valid),
        .I1(dc_error_wide[9]),
        .I2(data_dc_removed1),
        .I3(data_dc_removed10_in),
        .O(\data_dc_removed[9]_i_1_n_0 ));
  FDCE \data_dc_removed_reg[0] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[0]_i_1_n_0 ),
        .Q(adc_data[0]));
  FDCE \data_dc_removed_reg[10] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[10]_i_1_n_0 ),
        .Q(adc_data[10]));
  FDCE \data_dc_removed_reg[11] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[11]_i_1_n_0 ),
        .Q(adc_data[11]));
  FDCE \data_dc_removed_reg[1] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[1]_i_1_n_0 ),
        .Q(adc_data[1]));
  FDCE \data_dc_removed_reg[2] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[2]_i_1_n_0 ),
        .Q(adc_data[2]));
  FDCE \data_dc_removed_reg[3] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[3]_i_1_n_0 ),
        .Q(adc_data[3]));
  FDCE \data_dc_removed_reg[4] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[4]_i_1_n_0 ),
        .Q(adc_data[4]));
  FDCE \data_dc_removed_reg[5] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[5]_i_1_n_0 ),
        .Q(adc_data[5]));
  FDCE \data_dc_removed_reg[6] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[6]_i_1_n_0 ),
        .Q(adc_data[6]));
  FDCE \data_dc_removed_reg[7] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[7]_i_1_n_0 ),
        .Q(adc_data[7]));
  FDCE \data_dc_removed_reg[8] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[8]_i_1_n_0 ),
        .Q(adc_data[8]));
  FDCE \data_dc_removed_reg[9] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(\data_dc_removed[9]_i_1_n_0 ),
        .Q(adc_data[9]));
  FDCE \dc_accumulator_reg[0] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry_n_7),
        .Q(\dc_accumulator_reg_n_0_[0] ));
  FDCE \dc_accumulator_reg[10] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__1_n_5),
        .Q(\dc_accumulator_reg_n_0_[10] ));
  FDCE \dc_accumulator_reg[11] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__1_n_4),
        .Q(\dc_accumulator_reg_n_0_[11] ));
  FDCE \dc_accumulator_reg[12] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__2_n_7),
        .Q(\dc_accumulator_reg_n_0_[12] ));
  FDCE \dc_accumulator_reg[13] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__2_n_6),
        .Q(\dc_accumulator_reg_n_0_[13] ));
  FDCE \dc_accumulator_reg[14] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__2_n_5),
        .Q(\dc_accumulator_reg_n_0_[14] ));
  FDCE \dc_accumulator_reg[15] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__2_n_4),
        .Q(\dc_accumulator_reg_n_0_[15] ));
  FDCE \dc_accumulator_reg[16] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__3_n_7),
        .Q(\dc_accumulator_reg_n_0_[16] ));
  FDCE \dc_accumulator_reg[17] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__3_n_6),
        .Q(\dc_accumulator_reg_n_0_[17] ));
  FDCE \dc_accumulator_reg[18] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__3_n_5),
        .Q(\dc_accumulator_reg_n_0_[18] ));
  FDCE \dc_accumulator_reg[19] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__3_n_4),
        .Q(p_0_in0));
  FDCE \dc_accumulator_reg[1] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry_n_6),
        .Q(\dc_accumulator_reg_n_0_[1] ));
  FDCE \dc_accumulator_reg[2] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry_n_5),
        .Q(\dc_accumulator_reg_n_0_[2] ));
  FDCE \dc_accumulator_reg[3] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry_n_4),
        .Q(\dc_accumulator_reg_n_0_[3] ));
  FDCE \dc_accumulator_reg[4] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__0_n_7),
        .Q(\dc_accumulator_reg_n_0_[4] ));
  FDCE \dc_accumulator_reg[5] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__0_n_6),
        .Q(\dc_accumulator_reg_n_0_[5] ));
  FDCE \dc_accumulator_reg[6] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__0_n_5),
        .Q(\dc_accumulator_reg_n_0_[6] ));
  FDCE \dc_accumulator_reg[7] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__0_n_4),
        .Q(\dc_accumulator_reg_n_0_[7] ));
  FDCE \dc_accumulator_reg[8] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__1_n_7),
        .Q(\dc_accumulator_reg_n_0_[8] ));
  FDCE \dc_accumulator_reg[9] 
       (.C(clk_60m_sample),
        .CE(sample_valid),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(dc_next_wide__0_carry__1_n_6),
        .Q(\dc_accumulator_reg_n_0_[9] ));
  CARRY4 dc_error_wide_carry
       (.CI(1'b0),
        .CO({dc_error_wide_carry_n_0,dc_error_wide_carry_n_1,dc_error_wide_carry_n_2,dc_error_wide_carry_n_3}),
        .CYINIT(1'b1),
        .DI(sample_extended[3:0]),
        .O(dc_error_wide[3:0]),
        .S({dc_error_wide_carry_i_5_n_0,dc_error_wide_carry_i_6_n_0,dc_error_wide_carry_i_7_n_0,dc_error_wide_carry_i_8_n_0}));
  CARRY4 dc_error_wide_carry__0
       (.CI(dc_error_wide_carry_n_0),
        .CO({dc_error_wide_carry__0_n_0,dc_error_wide_carry__0_n_1,dc_error_wide_carry__0_n_2,dc_error_wide_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sample_extended[7:4]),
        .O(dc_error_wide[7:4]),
        .S({dc_error_wide_carry__0_i_5_n_0,dc_error_wide_carry__0_i_6_n_0,dc_error_wide_carry__0_i_7_n_0,dc_error_wide_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry__0_i_1
       (.I0(Q[7]),
        .O(sample_extended[7]));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry__0_i_2
       (.I0(Q[6]),
        .O(sample_extended[6]));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry__0_i_3
       (.I0(Q[5]),
        .O(sample_extended[5]));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry__0_i_4
       (.I0(Q[4]),
        .O(sample_extended[4]));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry__0_i_5
       (.I0(Q[7]),
        .I1(\dc_accumulator_reg_n_0_[15] ),
        .O(dc_error_wide_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry__0_i_6
       (.I0(Q[6]),
        .I1(\dc_accumulator_reg_n_0_[14] ),
        .O(dc_error_wide_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry__0_i_7
       (.I0(Q[5]),
        .I1(\dc_accumulator_reg_n_0_[13] ),
        .O(dc_error_wide_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry__0_i_8
       (.I0(Q[4]),
        .I1(\dc_accumulator_reg_n_0_[12] ),
        .O(dc_error_wide_carry__0_i_8_n_0));
  CARRY4 dc_error_wide_carry__1
       (.CI(dc_error_wide_carry__0_n_0),
        .CO({dc_error_wide_carry__1_n_0,dc_error_wide_carry__1_n_1,dc_error_wide_carry__1_n_2,dc_error_wide_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_in0,sample_extended[10:8]}),
        .O(dc_error_wide[11:8]),
        .S({dc_error_wide_carry__1_i_4_n_0,dc_error_wide_carry__1_i_5_n_0,dc_error_wide_carry__1_i_6_n_0,dc_error_wide_carry__1_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry__1_i_1
       (.I0(Q[10]),
        .O(sample_extended[10]));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry__1_i_2
       (.I0(Q[9]),
        .O(sample_extended[9]));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry__1_i_3
       (.I0(Q[8]),
        .O(sample_extended[8]));
  LUT2 #(
    .INIT(4'h9)) 
    dc_error_wide_carry__1_i_4
       (.I0(Q[11]),
        .I1(p_0_in0),
        .O(dc_error_wide_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry__1_i_5
       (.I0(Q[10]),
        .I1(\dc_accumulator_reg_n_0_[18] ),
        .O(dc_error_wide_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry__1_i_6
       (.I0(Q[9]),
        .I1(\dc_accumulator_reg_n_0_[17] ),
        .O(dc_error_wide_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry__1_i_7
       (.I0(Q[8]),
        .I1(\dc_accumulator_reg_n_0_[16] ),
        .O(dc_error_wide_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry_i_1
       (.I0(Q[3]),
        .O(sample_extended[3]));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry_i_2
       (.I0(Q[2]),
        .O(sample_extended[2]));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry_i_3
       (.I0(Q[1]),
        .O(sample_extended[1]));
  LUT1 #(
    .INIT(2'h1)) 
    dc_error_wide_carry_i_4
       (.I0(Q[0]),
        .O(sample_extended[0]));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry_i_5
       (.I0(Q[3]),
        .I1(\dc_accumulator_reg_n_0_[11] ),
        .O(dc_error_wide_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry_i_6
       (.I0(Q[2]),
        .I1(\dc_accumulator_reg_n_0_[10] ),
        .O(dc_error_wide_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry_i_7
       (.I0(Q[1]),
        .I1(\dc_accumulator_reg_n_0_[9] ),
        .O(dc_error_wide_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dc_error_wide_carry_i_8
       (.I0(Q[0]),
        .I1(\dc_accumulator_reg_n_0_[8] ),
        .O(dc_error_wide_carry_i_8_n_0));
  CARRY4 dc_next_wide__0_carry
       (.CI(1'b0),
        .CO({dc_next_wide__0_carry_n_0,dc_next_wide__0_carry_n_1,dc_next_wide__0_carry_n_2,dc_next_wide__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({dc_next_wide__0_carry_i_1_n_0,dc_next_wide__0_carry_i_2_n_0,dc_next_wide__0_carry_i_3_n_0,dc_next_wide__0_carry_i_4_n_0}),
        .O({dc_next_wide__0_carry_n_4,dc_next_wide__0_carry_n_5,dc_next_wide__0_carry_n_6,dc_next_wide__0_carry_n_7}),
        .S({dc_next_wide__0_carry_i_5_n_0,dc_next_wide__0_carry_i_6_n_0,dc_next_wide__0_carry_i_7_n_0,dc_next_wide__0_carry_i_8_n_0}));
  CARRY4 dc_next_wide__0_carry__0
       (.CI(dc_next_wide__0_carry_n_0),
        .CO({dc_next_wide__0_carry__0_n_0,dc_next_wide__0_carry__0_n_1,dc_next_wide__0_carry__0_n_2,dc_next_wide__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({dc_next_wide__0_carry__0_i_1_n_0,dc_next_wide__0_carry__0_i_2_n_0,dc_next_wide__0_carry__0_i_3_n_0,dc_next_wide__0_carry__0_i_4_n_0}),
        .O({dc_next_wide__0_carry__0_n_4,dc_next_wide__0_carry__0_n_5,dc_next_wide__0_carry__0_n_6,dc_next_wide__0_carry__0_n_7}),
        .S({dc_next_wide__0_carry__0_i_5_n_0,dc_next_wide__0_carry__0_i_6_n_0,dc_next_wide__0_carry__0_i_7_n_0,dc_next_wide__0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    dc_next_wide__0_carry__0_i_1
       (.I0(Q[6]),
        .I1(\dc_accumulator_reg_n_0_[6] ),
        .I2(\dc_accumulator_reg_n_0_[14] ),
        .O(dc_next_wide__0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    dc_next_wide__0_carry__0_i_2
       (.I0(Q[5]),
        .I1(\dc_accumulator_reg_n_0_[5] ),
        .I2(\dc_accumulator_reg_n_0_[13] ),
        .O(dc_next_wide__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    dc_next_wide__0_carry__0_i_3
       (.I0(Q[4]),
        .I1(\dc_accumulator_reg_n_0_[4] ),
        .I2(\dc_accumulator_reg_n_0_[12] ),
        .O(dc_next_wide__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    dc_next_wide__0_carry__0_i_4
       (.I0(Q[3]),
        .I1(\dc_accumulator_reg_n_0_[3] ),
        .I2(\dc_accumulator_reg_n_0_[11] ),
        .O(dc_next_wide__0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    dc_next_wide__0_carry__0_i_5
       (.I0(Q[7]),
        .I1(\dc_accumulator_reg_n_0_[7] ),
        .I2(\dc_accumulator_reg_n_0_[15] ),
        .I3(dc_next_wide__0_carry__0_i_1_n_0),
        .O(dc_next_wide__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    dc_next_wide__0_carry__0_i_6
       (.I0(Q[6]),
        .I1(\dc_accumulator_reg_n_0_[6] ),
        .I2(\dc_accumulator_reg_n_0_[14] ),
        .I3(dc_next_wide__0_carry__0_i_2_n_0),
        .O(dc_next_wide__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    dc_next_wide__0_carry__0_i_7
       (.I0(Q[5]),
        .I1(\dc_accumulator_reg_n_0_[5] ),
        .I2(\dc_accumulator_reg_n_0_[13] ),
        .I3(dc_next_wide__0_carry__0_i_3_n_0),
        .O(dc_next_wide__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    dc_next_wide__0_carry__0_i_8
       (.I0(Q[4]),
        .I1(\dc_accumulator_reg_n_0_[4] ),
        .I2(\dc_accumulator_reg_n_0_[12] ),
        .I3(dc_next_wide__0_carry__0_i_4_n_0),
        .O(dc_next_wide__0_carry__0_i_8_n_0));
  CARRY4 dc_next_wide__0_carry__1
       (.CI(dc_next_wide__0_carry__0_n_0),
        .CO({dc_next_wide__0_carry__1_n_0,dc_next_wide__0_carry__1_n_1,dc_next_wide__0_carry__1_n_2,dc_next_wide__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({dc_next_wide__0_carry__1_i_1_n_0,dc_next_wide__0_carry__1_i_2_n_0,dc_next_wide__0_carry__1_i_3_n_0,dc_next_wide__0_carry__1_i_4_n_0}),
        .O({dc_next_wide__0_carry__1_n_4,dc_next_wide__0_carry__1_n_5,dc_next_wide__0_carry__1_n_6,dc_next_wide__0_carry__1_n_7}),
        .S({dc_next_wide__0_carry__1_i_5_n_0,dc_next_wide__0_carry__1_i_6_n_0,dc_next_wide__0_carry__1_i_7_n_0,dc_next_wide__0_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    dc_next_wide__0_carry__1_i_1
       (.I0(\dc_accumulator_reg_n_0_[11] ),
        .I1(Q[11]),
        .I2(p_0_in0),
        .O(dc_next_wide__0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    dc_next_wide__0_carry__1_i_2
       (.I0(Q[9]),
        .I1(\dc_accumulator_reg_n_0_[9] ),
        .I2(\dc_accumulator_reg_n_0_[17] ),
        .O(dc_next_wide__0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    dc_next_wide__0_carry__1_i_3
       (.I0(Q[8]),
        .I1(\dc_accumulator_reg_n_0_[8] ),
        .I2(\dc_accumulator_reg_n_0_[16] ),
        .O(dc_next_wide__0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    dc_next_wide__0_carry__1_i_4
       (.I0(Q[7]),
        .I1(\dc_accumulator_reg_n_0_[7] ),
        .I2(\dc_accumulator_reg_n_0_[15] ),
        .O(dc_next_wide__0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    dc_next_wide__0_carry__1_i_5
       (.I0(p_0_in0),
        .I1(Q[11]),
        .I2(\dc_accumulator_reg_n_0_[11] ),
        .I3(\dc_accumulator_reg_n_0_[18] ),
        .I4(\dc_accumulator_reg_n_0_[10] ),
        .I5(Q[10]),
        .O(dc_next_wide__0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    dc_next_wide__0_carry__1_i_6
       (.I0(dc_next_wide__0_carry__1_i_2_n_0),
        .I1(Q[10]),
        .I2(\dc_accumulator_reg_n_0_[10] ),
        .I3(\dc_accumulator_reg_n_0_[18] ),
        .O(dc_next_wide__0_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    dc_next_wide__0_carry__1_i_7
       (.I0(Q[9]),
        .I1(\dc_accumulator_reg_n_0_[9] ),
        .I2(\dc_accumulator_reg_n_0_[17] ),
        .I3(dc_next_wide__0_carry__1_i_3_n_0),
        .O(dc_next_wide__0_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    dc_next_wide__0_carry__1_i_8
       (.I0(Q[8]),
        .I1(\dc_accumulator_reg_n_0_[8] ),
        .I2(\dc_accumulator_reg_n_0_[16] ),
        .I3(dc_next_wide__0_carry__1_i_4_n_0),
        .O(dc_next_wide__0_carry__1_i_8_n_0));
  CARRY4 dc_next_wide__0_carry__2
       (.CI(dc_next_wide__0_carry__1_n_0),
        .CO({dc_next_wide__0_carry__2_n_0,dc_next_wide__0_carry__2_n_1,dc_next_wide__0_carry__2_n_2,dc_next_wide__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\dc_accumulator_reg_n_0_[14] ,\dc_accumulator_reg_n_0_[13] ,dc_next_wide__0_carry__2_i_1_n_0,dc_next_wide__0_carry__2_i_2_n_0}),
        .O({dc_next_wide__0_carry__2_n_4,dc_next_wide__0_carry__2_n_5,dc_next_wide__0_carry__2_n_6,dc_next_wide__0_carry__2_n_7}),
        .S({dc_next_wide__0_carry__2_i_3_n_0,dc_next_wide__0_carry__2_i_4_n_0,dc_next_wide__0_carry__2_i_5_n_0,dc_next_wide__0_carry__2_i_6_n_0}));
  LUT4 #(
    .INIT(16'hEE8E)) 
    dc_next_wide__0_carry__2_i_1
       (.I0(p_0_in0),
        .I1(\dc_accumulator_reg_n_0_[12] ),
        .I2(Q[11]),
        .I3(\dc_accumulator_reg_n_0_[11] ),
        .O(dc_next_wide__0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    dc_next_wide__0_carry__2_i_2
       (.I0(\dc_accumulator_reg_n_0_[11] ),
        .I1(Q[11]),
        .I2(p_0_in0),
        .O(dc_next_wide__0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dc_next_wide__0_carry__2_i_3
       (.I0(\dc_accumulator_reg_n_0_[14] ),
        .I1(\dc_accumulator_reg_n_0_[15] ),
        .O(dc_next_wide__0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dc_next_wide__0_carry__2_i_4
       (.I0(\dc_accumulator_reg_n_0_[13] ),
        .I1(\dc_accumulator_reg_n_0_[14] ),
        .O(dc_next_wide__0_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'hFBB0044F)) 
    dc_next_wide__0_carry__2_i_5
       (.I0(\dc_accumulator_reg_n_0_[11] ),
        .I1(Q[11]),
        .I2(\dc_accumulator_reg_n_0_[12] ),
        .I3(p_0_in0),
        .I4(\dc_accumulator_reg_n_0_[13] ),
        .O(dc_next_wide__0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h93C9)) 
    dc_next_wide__0_carry__2_i_6
       (.I0(p_0_in0),
        .I1(\dc_accumulator_reg_n_0_[12] ),
        .I2(\dc_accumulator_reg_n_0_[11] ),
        .I3(Q[11]),
        .O(dc_next_wide__0_carry__2_i_6_n_0));
  CARRY4 dc_next_wide__0_carry__3
       (.CI(dc_next_wide__0_carry__2_n_0),
        .CO({NLW_dc_next_wide__0_carry__3_CO_UNCONNECTED[3],dc_next_wide__0_carry__3_n_1,dc_next_wide__0_carry__3_n_2,dc_next_wide__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\dc_accumulator_reg_n_0_[17] ,\dc_accumulator_reg_n_0_[16] ,\dc_accumulator_reg_n_0_[15] }),
        .O({dc_next_wide__0_carry__3_n_4,dc_next_wide__0_carry__3_n_5,dc_next_wide__0_carry__3_n_6,dc_next_wide__0_carry__3_n_7}),
        .S({dc_next_wide__0_carry__3_i_1_n_0,dc_next_wide__0_carry__3_i_2_n_0,dc_next_wide__0_carry__3_i_3_n_0,dc_next_wide__0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    dc_next_wide__0_carry__3_i_1
       (.I0(\dc_accumulator_reg_n_0_[18] ),
        .I1(p_0_in0),
        .O(dc_next_wide__0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dc_next_wide__0_carry__3_i_2
       (.I0(\dc_accumulator_reg_n_0_[17] ),
        .I1(\dc_accumulator_reg_n_0_[18] ),
        .O(dc_next_wide__0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dc_next_wide__0_carry__3_i_3
       (.I0(\dc_accumulator_reg_n_0_[16] ),
        .I1(\dc_accumulator_reg_n_0_[17] ),
        .O(dc_next_wide__0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    dc_next_wide__0_carry__3_i_4
       (.I0(\dc_accumulator_reg_n_0_[15] ),
        .I1(\dc_accumulator_reg_n_0_[16] ),
        .O(dc_next_wide__0_carry__3_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    dc_next_wide__0_carry_i_1
       (.I0(Q[2]),
        .I1(\dc_accumulator_reg_n_0_[2] ),
        .I2(\dc_accumulator_reg_n_0_[10] ),
        .O(dc_next_wide__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    dc_next_wide__0_carry_i_2
       (.I0(Q[1]),
        .I1(\dc_accumulator_reg_n_0_[1] ),
        .I2(\dc_accumulator_reg_n_0_[9] ),
        .O(dc_next_wide__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dc_next_wide__0_carry_i_3
       (.I0(\dc_accumulator_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(dc_next_wide__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dc_next_wide__0_carry_i_4
       (.I0(\dc_accumulator_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(dc_next_wide__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    dc_next_wide__0_carry_i_5
       (.I0(Q[3]),
        .I1(\dc_accumulator_reg_n_0_[3] ),
        .I2(\dc_accumulator_reg_n_0_[11] ),
        .I3(dc_next_wide__0_carry_i_1_n_0),
        .O(dc_next_wide__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    dc_next_wide__0_carry_i_6
       (.I0(Q[2]),
        .I1(\dc_accumulator_reg_n_0_[2] ),
        .I2(\dc_accumulator_reg_n_0_[10] ),
        .I3(dc_next_wide__0_carry_i_2_n_0),
        .O(dc_next_wide__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    dc_next_wide__0_carry_i_7
       (.I0(Q[1]),
        .I1(\dc_accumulator_reg_n_0_[1] ),
        .I2(\dc_accumulator_reg_n_0_[9] ),
        .I3(dc_next_wide__0_carry_i_3_n_0),
        .O(dc_next_wide__0_carry_i_7_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h69)) 
    dc_next_wide__0_carry_i_8
       (.I0(\dc_accumulator_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\dc_accumulator_reg_n_0_[8] ),
        .O(dc_next_wide__0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    otr_out_reg_i_1
       (.I0(sample_valid),
        .I1(ad_otr_sample),
        .O(otr_out_reg));
  FDCE otr_out_reg_reg
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(otr_out_reg),
        .Q(adc_otr));
  FDCE valid_out_reg_reg
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync_reg[1] ),
        .D(sample_valid),
        .Q(adc_valid));
endmodule

(* ORIG_REF_NAME = "ad9226_stage1_driver" *) 
module design_1_ad9226_stage1_driver_0_0_ad9226_stage1_driver
   (ad_clk,
    core_aresetn,
    adc_data,
    adc_valid,
    adc_otr,
    resetn,
    clk_locked,
    clk_60m_adc,
    clk_60m_sample,
    ad_data_in,
    ad_otr_in);
  output ad_clk;
  output core_aresetn;
  output [11:0]adc_data;
  output adc_valid;
  output adc_otr;
  input resetn;
  input clk_locked;
  input clk_60m_adc;
  input clk_60m_sample;
  input [11:0]ad_data_in;
  input ad_otr_in;

  wire R0;
  wire ad_clk;
  wire [11:0]ad_data_capture_adc;
  wire [11:0]ad_data_in;
  wire [11:0]ad_data_sample;
  wire ad_otr_capture_adc;
  wire ad_otr_in;
  wire ad_otr_sample;
  wire adc_capture_aresetn;
  wire adc_capture_valid;
  wire adc_capture_valid_i_1_n_0;
  wire [11:0]adc_data;
  wire adc_otr;
  wire \adc_reset_sync_reg_n_0_[0] ;
  wire adc_valid;
  wire clk_60m_adc;
  wire clk_60m_sample;
  wire clk_locked;
  wire core_aresetn;
  wire resetn;
  wire [0:0]sample_reset_sync;
  wire \sample_reset_sync[1]_i_1_n_0 ;
  wire sample_valid;
  wire u_ad9226_data_path_n_1;
  wire NLW_u_oddr_ad_clk_S_UNCONNECTED;

  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[0] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[0]),
        .Q(ad_data_capture_adc[0]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[10] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[10]),
        .Q(ad_data_capture_adc[10]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[11] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[11]),
        .Q(ad_data_capture_adc[11]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[1] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[1]),
        .Q(ad_data_capture_adc[1]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[2] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[2]),
        .Q(ad_data_capture_adc[2]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[3] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[3]),
        .Q(ad_data_capture_adc[3]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[4] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[4]),
        .Q(ad_data_capture_adc[4]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[5] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[5]),
        .Q(ad_data_capture_adc[5]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[6] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[6]),
        .Q(ad_data_capture_adc[6]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[7] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[7]),
        .Q(ad_data_capture_adc[7]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[8] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[8]),
        .Q(ad_data_capture_adc[8]));
  (* IOB = "TRUE" *) 
  FDCE \ad_data_capture_adc_reg[9] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_data_in[9]),
        .Q(ad_data_capture_adc[9]));
  FDCE \ad_data_sample_reg[0] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[0]),
        .Q(ad_data_sample[0]));
  FDCE \ad_data_sample_reg[10] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[10]),
        .Q(ad_data_sample[10]));
  FDCE \ad_data_sample_reg[11] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[11]),
        .Q(ad_data_sample[11]));
  FDCE \ad_data_sample_reg[1] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[1]),
        .Q(ad_data_sample[1]));
  FDCE \ad_data_sample_reg[2] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[2]),
        .Q(ad_data_sample[2]));
  FDCE \ad_data_sample_reg[3] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[3]),
        .Q(ad_data_sample[3]));
  FDCE \ad_data_sample_reg[4] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[4]),
        .Q(ad_data_sample[4]));
  FDCE \ad_data_sample_reg[5] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[5]),
        .Q(ad_data_sample[5]));
  FDCE \ad_data_sample_reg[6] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[6]),
        .Q(ad_data_sample[6]));
  FDCE \ad_data_sample_reg[7] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[7]),
        .Q(ad_data_sample[7]));
  FDCE \ad_data_sample_reg[8] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[8]),
        .Q(ad_data_sample[8]));
  FDCE \ad_data_sample_reg[9] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_data_capture_adc[9]),
        .Q(ad_data_sample[9]));
  (* IOB = "TRUE" *) 
  FDCE ad_otr_capture_adc_reg
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(ad_otr_in),
        .Q(ad_otr_capture_adc));
  FDCE ad_otr_sample_reg
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(ad_otr_capture_adc),
        .Q(ad_otr_sample));
  LUT1 #(
    .INIT(2'h1)) 
    adc_capture_valid_i_1
       (.I0(adc_capture_aresetn),
        .O(adc_capture_valid_i_1_n_0));
  FDCE adc_capture_valid_reg
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(adc_capture_valid_i_1_n_0),
        .D(1'b1),
        .Q(adc_capture_valid));
  FDCE \adc_reset_sync_reg[0] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(\sample_reset_sync[1]_i_1_n_0 ),
        .D(1'b1),
        .Q(\adc_reset_sync_reg_n_0_[0] ));
  FDCE \adc_reset_sync_reg[1] 
       (.C(clk_60m_adc),
        .CE(1'b1),
        .CLR(\sample_reset_sync[1]_i_1_n_0 ),
        .D(\adc_reset_sync_reg_n_0_[0] ),
        .Q(adc_capture_aresetn));
  LUT2 #(
    .INIT(4'h7)) 
    \sample_reset_sync[1]_i_1 
       (.I0(resetn),
        .I1(clk_locked),
        .O(\sample_reset_sync[1]_i_1_n_0 ));
  FDCE \sample_reset_sync_reg[0] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync[1]_i_1_n_0 ),
        .D(1'b1),
        .Q(sample_reset_sync));
  FDCE \sample_reset_sync_reg[1] 
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(\sample_reset_sync[1]_i_1_n_0 ),
        .D(sample_reset_sync),
        .Q(core_aresetn));
  FDCE sample_valid_reg
       (.C(clk_60m_sample),
        .CE(1'b1),
        .CLR(u_ad9226_data_path_n_1),
        .D(adc_capture_valid),
        .Q(sample_valid));
  design_1_ad9226_stage1_driver_0_0_ad9226_data_path u_ad9226_data_path
       (.Q(ad_data_sample),
        .ad_otr_sample(ad_otr_sample),
        .adc_data(adc_data),
        .adc_otr(adc_otr),
        .adc_valid(adc_valid),
        .clk_60m_sample(clk_60m_sample),
        .core_aresetn(core_aresetn),
        .\sample_reset_sync_reg[1] (u_ad9226_data_path_n_1),
        .sample_valid(sample_valid));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    u_oddr_ad_clk
       (.C(clk_60m_adc),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(ad_clk),
        .R(R0),
        .S(NLW_u_oddr_ad_clk_S_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    u_oddr_ad_clk_i_1
       (.I0(clk_locked),
        .O(R0));
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
