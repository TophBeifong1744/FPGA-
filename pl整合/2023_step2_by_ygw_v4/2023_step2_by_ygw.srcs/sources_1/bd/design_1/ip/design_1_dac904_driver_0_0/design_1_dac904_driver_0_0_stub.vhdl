-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Jul 26 00:45:06 2026
-- Host        : Toph running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {C:/Users/Toph
--               Beifong/Desktop/2023_step2_by_ygw_v4/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_dac904_driver_0_0/design_1_dac904_driver_0_0_stub.vhdl}
-- Design      : design_1_dac904_driver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_dac904_driver_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    sample_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sample_valid : in STD_LOGIC;
    dac_clk : out STD_LOGIC;
    dac_data : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end design_1_dac904_driver_0_0;

architecture stub of design_1_dac904_driver_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,sample_in[15:0],sample_valid,dac_clk,dac_data[13:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dac904_driver,Vivado 2018.3";
begin
end;
