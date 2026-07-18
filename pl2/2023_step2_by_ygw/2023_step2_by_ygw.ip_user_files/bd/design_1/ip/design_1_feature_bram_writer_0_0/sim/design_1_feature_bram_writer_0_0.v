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


// IP VLNV: xilinx.com:module_ref:feature_bram_writer:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_feature_bram_writer_0_0 (
  aclk,
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
  busy
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
input wire frame_done;
input wire [63 : 0] var_mag_num;
input wire [63 : 0] var_freq_num;
input wire [31 : 0] mean_mag_num;
input wire [31 : 0] mean_freq_num;
input wire [31 : 0] psk_spike_count;
input wire psk_flag;
output wire [3 : 0] hist_mag_rd_addr;
input wire [31 : 0] hist_mag_rd_data;
output wire [3 : 0] hist_freq_rd_addr;
input wire [31 : 0] hist_freq_rd_data;
output wire bram_en;
output wire [3 : 0] bram_we;
output wire [31 : 0] bram_addr;
output wire [31 : 0] bram_wdata;
output wire busy;

  feature_bram_writer inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .frame_done(frame_done),
    .var_mag_num(var_mag_num),
    .var_freq_num(var_freq_num),
    .mean_mag_num(mean_mag_num),
    .mean_freq_num(mean_freq_num),
    .psk_spike_count(psk_spike_count),
    .psk_flag(psk_flag),
    .hist_mag_rd_addr(hist_mag_rd_addr),
    .hist_mag_rd_data(hist_mag_rd_data),
    .hist_freq_rd_addr(hist_freq_rd_addr),
    .hist_freq_rd_data(hist_freq_rd_data),
    .bram_en(bram_en),
    .bram_we(bram_we),
    .bram_addr(bram_addr),
    .bram_wdata(bram_wdata),
    .busy(busy)
  );
endmodule
