// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 26 00:45:06 2026
// Host        : Toph running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Toph
//               Beifong/Desktop/2023_step2_by_ygw_v4/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_dac904_driver_0_0/design_1_dac904_driver_0_0_sim_netlist.v}
// Design      : design_1_dac904_driver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dac904_driver_0_0,dac904_driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "dac904_driver,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_dac904_driver_0_0
   (aclk,
    aresetn,
    sample_in,
    sample_valid,
    dac_clk,
    dac_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_DAC_CORE CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_DAC_CORE, ASSOCIATED_RESET aresetn, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [15:0]sample_in;
  input sample_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 DAC_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DAC_CLK, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_dac904_driver_0_0_dac_clk, INSERT_VIP 0" *) output dac_clk;
  output [13:0]dac_data;

  wire aclk;
  wire aresetn;
  wire dac_clk;
  wire [13:0]dac_data;
  wire [15:0]sample_in;
  wire sample_valid;

  design_1_dac904_driver_0_0_dac904_driver inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .dac_clk(dac_clk),
        .dac_data(dac_data),
        .sample_in(sample_in[15:2]),
        .sample_valid(sample_valid));
endmodule

(* ORIG_REF_NAME = "dac904_data_path" *) 
module design_1_dac904_driver_0_0_dac904_data_path
   (dac_data,
    SR,
    sample_valid,
    aclk,
    sample_in,
    aresetn);
  output [13:0]dac_data;
  output [0:0]SR;
  input sample_valid;
  input aclk;
  input [13:0]sample_in;
  input aresetn;

  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire [13:0]dac_data;
  wire [13:13]sample_14bit_binary;
  wire [13:0]sample_in;
  wire sample_valid;

  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_reg[13]_i_1 
       (.I0(sample_in[13]),
        .O(sample_14bit_binary));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[0] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[0]),
        .Q(dac_data[0]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[10] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[10]),
        .Q(dac_data[10]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[11] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[11]),
        .Q(dac_data[11]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[12] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[12]),
        .Q(dac_data[12]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDSE \dac_data_reg_reg[13] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_14bit_binary),
        .Q(dac_data[13]),
        .S(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[1] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[1]),
        .Q(dac_data[1]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[2] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[2]),
        .Q(dac_data[2]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[3] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[3]),
        .Q(dac_data[3]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[4] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[4]),
        .Q(dac_data[4]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[5] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[5]),
        .Q(dac_data[5]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[6] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[6]),
        .Q(dac_data[6]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[7] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[7]),
        .Q(dac_data[7]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[8] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[8]),
        .Q(dac_data[8]),
        .R(SR));
  (* IOB = "TRUE" *) 
  FDRE \dac_data_reg_reg[9] 
       (.C(aclk),
        .CE(sample_valid),
        .D(sample_in[9]),
        .Q(dac_data[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    u_oddr_dac_clk_i_1
       (.I0(aresetn),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "dac904_driver" *) 
module design_1_dac904_driver_0_0_dac904_driver
   (dac_clk,
    dac_data,
    aclk,
    sample_valid,
    sample_in,
    aresetn);
  output dac_clk;
  output [13:0]dac_data;
  input aclk;
  input sample_valid;
  input [13:0]sample_in;
  input aresetn;

  wire R0;
  wire aclk;
  wire aresetn;
  wire dac_clk;
  wire [13:0]dac_data;
  wire [13:0]sample_in;
  wire sample_valid;
  wire NLW_u_oddr_dac_clk_S_UNCONNECTED;

  design_1_dac904_driver_0_0_dac904_data_path u_dac904_data_path
       (.SR(R0),
        .aclk(aclk),
        .aresetn(aresetn),
        .dac_data(dac_data),
        .sample_in(sample_in),
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
    u_oddr_dac_clk
       (.C(aclk),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(dac_clk),
        .R(R0),
        .S(NLW_u_oddr_dac_clk_S_UNCONNECTED));
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
