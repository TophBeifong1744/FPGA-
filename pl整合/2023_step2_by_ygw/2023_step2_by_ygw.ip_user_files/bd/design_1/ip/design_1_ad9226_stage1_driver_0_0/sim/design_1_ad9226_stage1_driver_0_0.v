// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ad9226_stage1_driver:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ad9226_stage1_driver_0_0 (
  clk_60m_adc,
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
  locked_debug
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_ADC, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_ADC CLK" *)
input wire clk_60m_adc;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_SAMPLE, ASSOCIATED_RESET resetn, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_SAMPLE CLK" *)
input wire clk_60m_sample;
input wire clk_locked;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESETN RST" *)
input wire resetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AD_CLK, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ad9226_stage1_driver_0_0_ad_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AD_CLK CLK" *)
output wire ad_clk;
input wire [11 : 0] ad_data_in;
input wire ad_otr_in;
output wire [13 : 0] adc_data;
output wire adc_valid;
output wire adc_otr;
output wire clk_60m_core;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 core_aresetn RST" *)
output wire core_aresetn;
output wire locked_debug;

  ad9226_stage1_driver #(
    .INVERT_ADC_BITS(1),
    .DC_FILTER_SHIFT(8),
    .OUTPUT_LEFT_SHIFT(2)
  ) inst (
    .clk_60m_adc(clk_60m_adc),
    .clk_60m_sample(clk_60m_sample),
    .clk_locked(clk_locked),
    .resetn(resetn),
    .ad_clk(ad_clk),
    .ad_data_in(ad_data_in),
    .ad_otr_in(ad_otr_in),
    .adc_data(adc_data),
    .adc_valid(adc_valid),
    .adc_otr(adc_otr),
    .clk_60m_core(clk_60m_core),
    .core_aresetn(core_aresetn),
    .locked_debug(locked_debug)
  );
endmodule
