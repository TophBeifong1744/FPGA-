-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jul 24 23:10:12 2026
-- Host        : Toph running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_ad9226_stage1_driver_0_0/design_1_ad9226_stage1_driver_0_0_stub.vhdl
-- Design      : design_1_ad9226_stage1_driver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ad9226_stage1_driver_0_0 is
  Port ( 
    clk_60m_adc : in STD_LOGIC;
    clk_60m_sample : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    resetn : in STD_LOGIC;
    ad_clk : out STD_LOGIC;
    ad_data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ad_otr_in : in STD_LOGIC;
    adc_data : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_valid : out STD_LOGIC;
    adc_otr : out STD_LOGIC;
    clk_60m_core : out STD_LOGIC;
    core_aresetn : out STD_LOGIC;
    locked_debug : out STD_LOGIC
  );

end design_1_ad9226_stage1_driver_0_0;

architecture stub of design_1_ad9226_stage1_driver_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_60m_adc,clk_60m_sample,clk_locked,resetn,ad_clk,ad_data_in[11:0],ad_otr_in,adc_data[13:0],adc_valid,adc_otr,clk_60m_core,core_aresetn,locked_debug";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ad9226_stage1_driver,Vivado 2018.3";
begin
end;
