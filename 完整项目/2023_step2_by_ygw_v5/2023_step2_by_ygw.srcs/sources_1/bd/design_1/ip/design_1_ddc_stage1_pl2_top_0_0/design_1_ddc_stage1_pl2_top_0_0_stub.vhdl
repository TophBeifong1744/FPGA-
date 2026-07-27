-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 27 03:42:08 2026
-- Host        : Toph running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw_v5/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_ddc_stage1_pl2_top_0_0/design_1_ddc_stage1_pl2_top_0_0_stub.vhdl
-- Design      : design_1_ddc_stage1_pl2_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ddc_stage1_pl2_top_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    adc_data : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_valid : in STD_LOGIC;
    m_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_valid : out STD_LOGIC;
    m_ready : in STD_LOGIC;
    fifo_level : out STD_LOGIC_VECTOR ( 4 downto 0 );
    fifo_overflow_sticky : out STD_LOGIC;
    fir_overrun_sticky : out STD_LOGIC
  );

end design_1_ddc_stage1_pl2_top_0_0;

architecture stub of design_1_ddc_stage1_pl2_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,adc_data[13:0],adc_valid,m_i[15:0],m_q[15:0],m_valid,m_ready,fifo_level[4:0],fifo_overflow_sticky,fir_overrun_sticky";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ddc_stage1_pl2_top,Vivado 2018.3";
begin
end;
