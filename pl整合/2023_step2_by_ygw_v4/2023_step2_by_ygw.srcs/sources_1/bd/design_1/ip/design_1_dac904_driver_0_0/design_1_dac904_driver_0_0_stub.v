// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jul 25 20:10:02 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Toph
//               Beifong/Desktop/2023_step2_by_ygw_v4/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_dac904_driver_0_0/design_1_dac904_driver_0_0_stub.v}
// Design      : design_1_dac904_driver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dac904_driver,Vivado 2018.3" *)
module design_1_dac904_driver_0_0(aclk, aresetn, sample_in, sample_valid, dac_clk, 
  dac_data)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,sample_in[15:0],sample_valid,dac_clk,dac_data[13:0]" */;
  input aclk;
  input aresetn;
  input [15:0]sample_in;
  input sample_valid;
  output dac_clk;
  output [13:0]dac_data;
endmodule
