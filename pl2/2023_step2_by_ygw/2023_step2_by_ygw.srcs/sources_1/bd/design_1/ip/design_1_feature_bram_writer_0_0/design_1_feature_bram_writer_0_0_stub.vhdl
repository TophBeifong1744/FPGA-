-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jul 18 00:33:17 2026
-- Host        : Toph running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_feature_bram_writer_0_0/design_1_feature_bram_writer_0_0_stub.vhdl
-- Design      : design_1_feature_bram_writer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_feature_bram_writer_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    frame_done : in STD_LOGIC;
    var_mag_num : in STD_LOGIC_VECTOR ( 63 downto 0 );
    var_freq_num : in STD_LOGIC_VECTOR ( 63 downto 0 );
    mean_mag_num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mean_freq_num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    psk_spike_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    psk_flag : in STD_LOGIC;
    hist_mag_rd_addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hist_mag_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hist_freq_rd_addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hist_freq_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : out STD_LOGIC;
    bram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    busy : out STD_LOGIC
  );

end design_1_feature_bram_writer_0_0;

architecture stub of design_1_feature_bram_writer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,frame_done,var_mag_num[63:0],var_freq_num[63:0],mean_mag_num[31:0],mean_freq_num[31:0],psk_spike_count[31:0],psk_flag,hist_mag_rd_addr[3:0],hist_mag_rd_data[31:0],hist_freq_rd_addr[3:0],hist_freq_rd_data[31:0],bram_en,bram_we[3:0],bram_addr[31:0],bram_wdata[31:0],busy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "feature_bram_writer,Vivado 2018.3";
begin
end;
