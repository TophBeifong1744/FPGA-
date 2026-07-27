-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 27 03:42:01 2026
-- Host        : Toph running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               F:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw_v5/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_feature_bram_writer_0_0/design_1_feature_bram_writer_0_0_sim_netlist.vhdl
-- Design      : design_1_feature_bram_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_feature_bram_writer_0_0_feature_bram_writer is
  port (
    busy_reg_0 : out STD_LOGIC;
    bram_en : out STD_LOGIC;
    hist_freq_rd_addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hist_mag_rd_addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    frame_done : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    bpsk_bit_valid : in STD_LOGIC;
    bpsk_carrier_locked : in STD_LOGIC;
    bpsk_timing_locked : in STD_LOGIC;
    bpsk_rate_code : in STD_LOGIC_VECTOR ( 1 downto 0 );
    psk_flag : in STD_LOGIC;
    mean_freq_num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mean_mag_num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    var_freq_num : in STD_LOGIC_VECTOR ( 63 downto 0 );
    var_mag_num : in STD_LOGIC_VECTOR ( 63 downto 0 );
    psk_spike_count : in STD_LOGIC_VECTOR ( 30 downto 0 );
    bpsk_bit_data : in STD_LOGIC;
    hist_mag_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hist_freq_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_feature_bram_writer_0_0_feature_bram_writer : entity is "feature_bram_writer";
end design_1_feature_bram_writer_0_0_feature_bram_writer;

architecture STRUCTURE of design_1_feature_bram_writer_0_0_feature_bram_writer is
  signal bit_overflow_sticky : STD_LOGIC;
  signal bit_overflow_sticky_i_1_n_0 : STD_LOGIC;
  signal \bram_wdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_4\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_5\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_6\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_7\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_wdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_4\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_5\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_6\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_7\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_wdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_4\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_5\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_6\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_7\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_wdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_4\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_5\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_6\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_7\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_wdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_4\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_5\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_6\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_7\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_wdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_4_n_5\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_4_n_6\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_4_n_7\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \bram_wdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_4\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_5\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_6\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_7\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_wdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_4\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_5\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_6\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_7\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_wdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal busy7_out : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal \^busy_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal collect_bits : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \collect_bits[111]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[112]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[113]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[114]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[115]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[116]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[117]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[118]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[119]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[120]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[121]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[122]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[123]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[124]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[125]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[126]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[127]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[127]_i_3_n_0\ : STD_LOGIC;
  signal \collect_bits[15]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[31]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[47]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[63]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[79]_i_2_n_0\ : STD_LOGIC;
  signal \collect_bits[95]_i_2_n_0\ : STD_LOGIC;
  signal collect_bits_next : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \collect_bits_next__255\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal collect_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \collect_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \collect_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \collect_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \collect_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \collect_count[7]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \collect_count[7]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \collect_count[7]_rep_i_1_n_0\ : STD_LOGIC;
  signal collect_count_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \collect_count_next__15\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \collect_count_reg[7]_rep__0_n_0\ : STD_LOGIC;
  signal \collect_count_reg[7]_rep__1_n_0\ : STD_LOGIC;
  signal \collect_count_reg[7]_rep_n_0\ : STD_LOGIC;
  signal collect_drop_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \collect_drop_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \collect_drop_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \collect_drop_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \collect_drop_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \collect_drop_count[7]_i_4_n_0\ : STD_LOGIC;
  signal collect_drop_count_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \collect_drop_count_next__23\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal collect_overflow : STD_LOGIC;
  signal collect_overflow_i_1_n_0 : STD_LOGIC;
  signal collect_overflow_next : STD_LOGIC;
  signal commit : STD_LOGIC;
  signal commit_i_1_n_0 : STD_LOGIC;
  signal data10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data11 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data12 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data14 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \hist_mag_rd_addr[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal \sequence[0]_i_1_n_0\ : STD_LOGIC;
  signal \sequence[0]_i_3_n_0\ : STD_LOGIC;
  signal sequence_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sequence_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sequence_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sequence_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sequence_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sequence_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sequence_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sequence_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sequence_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sequence_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sequence_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sequence_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sequence_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sequence_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sequence_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sequence_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sequence_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sequence_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal snap_bit_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \snap_bit_count[5]_i_2_n_0\ : STD_LOGIC;
  signal snap_bit_overflow_sticky : STD_LOGIC;
  signal snap_bit_overflow_sticky_i_1_n_0 : STD_LOGIC;
  signal \snap_bits_reg_n_0_[0]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[10]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[11]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[12]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[13]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[14]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[15]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[16]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[17]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[18]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[19]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[1]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[20]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[21]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[22]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[23]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[24]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[25]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[26]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[27]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[28]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[29]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[2]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[30]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[31]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[3]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[4]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[5]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[6]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[7]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[8]\ : STD_LOGIC;
  signal \snap_bits_reg_n_0_[9]\ : STD_LOGIC;
  signal snap_carrier_locked_i_1_n_0 : STD_LOGIC;
  signal snap_dropped_bits : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \snap_dropped_bits[4]_i_2_n_0\ : STD_LOGIC;
  signal snap_snapshot_overrun_count : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal snap_snapshot_overrun_sticky : STD_LOGIC;
  signal snapshot_overrun_count : STD_LOGIC;
  signal \snapshot_overrun_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \snapshot_overrun_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \snapshot_overrun_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \snapshot_overrun_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \snapshot_overrun_count[0]_i_7_n_0\ : STD_LOGIC;
  signal snapshot_overrun_count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \snapshot_overrun_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \snapshot_overrun_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal snapshot_overrun_sticky : STD_LOGIC;
  signal snapshot_overrun_sticky_i_1_n_0 : STD_LOGIC;
  signal word_index : STD_LOGIC;
  signal \word_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \word_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \word_index[5]_i_1_n_0\ : STD_LOGIC;
  signal \word_index[5]_i_4_n_0\ : STD_LOGIC;
  signal \word_index_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_bram_wdata[31]_INST_0_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bram_wdata[31]_INST_0_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sequence_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_snapshot_overrun_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bram_addr[2]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bram_addr[3]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bram_addr[4]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bram_addr[5]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bram_addr[6]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bram_we[0]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of busy_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \collect_bits[112]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \collect_bits[113]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \collect_bits[114]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \collect_bits[115]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \collect_bits[116]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \collect_bits[117]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \collect_bits[118]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \collect_bits[119]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \collect_bits[120]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \collect_bits[121]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \collect_bits[122]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \collect_bits[123]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \collect_bits[124]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \collect_bits[125]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \collect_bits[126]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \collect_bits[127]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \collect_count[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \collect_count[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \collect_count[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \collect_count[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \collect_count[5]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \collect_count[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \collect_count[7]_i_2\ : label is "soft_lutpair23";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \collect_count_reg[7]\ : label is "collect_count_reg[7]";
  attribute ORIG_CELL_NAME of \collect_count_reg[7]_rep\ : label is "collect_count_reg[7]";
  attribute ORIG_CELL_NAME of \collect_count_reg[7]_rep__0\ : label is "collect_count_reg[7]";
  attribute ORIG_CELL_NAME of \collect_count_reg[7]_rep__1\ : label is "collect_count_reg[7]";
  attribute SOFT_HLUTNM of \collect_drop_count[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \collect_drop_count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \collect_drop_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \collect_drop_count[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \collect_drop_count[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \collect_drop_count[5]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \collect_drop_count[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \collect_drop_count[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \collect_drop_count[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of commit_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \hist_freq_rd_addr[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hist_mag_rd_addr[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \snap_bit_count[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \snap_bit_count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \snap_bit_count[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \snap_bit_count[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \snap_bit_count[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of snap_bit_overflow_sticky_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \snap_dropped_bits[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \snap_dropped_bits[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \snap_dropped_bits[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of snap_frame_overflow_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of snapshot_overrun_sticky_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \word_index[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \word_index[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \word_index[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \word_index[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \word_index[5]_i_4\ : label is "soft_lutpair28";
begin
  busy_reg_0 <= \^busy_reg_0\;
bit_overflow_sticky_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => collect_overflow,
      I1 => bpsk_bit_valid,
      I2 => collect_count(7),
      I3 => bit_overflow_sticky,
      O => bit_overflow_sticky_i_1_n_0
    );
bit_overflow_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => bit_overflow_sticky_i_1_n_0,
      Q => bit_overflow_sticky,
      R => clear
    );
\bram_addr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \word_index_reg__0\(0),
      O => bram_addr(0)
    );
\bram_addr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \word_index_reg__0\(1),
      O => bram_addr(1)
    );
\bram_addr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \word_index_reg__0\(2),
      O => bram_addr(2)
    );
\bram_addr[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \word_index_reg__0\(3),
      O => bram_addr(3)
    );
\bram_addr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \word_index_reg__0\(4),
      O => bram_addr(4)
    );
\bram_addr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \word_index_reg__0\(5),
      O => bram_addr(5)
    );
\bram_wdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => \bram_wdata[0]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[0]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => sequence_reg(0),
      O => bram_wdata(0)
    );
\bram_wdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[0]_INST_0_i_3_n_0\,
      I1 => data14(0),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => data7(4),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(0),
      O => \bram_wdata[0]_INST_0_i_1_n_0\
    );
\bram_wdata[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[0]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[0]_INST_0_i_6_n_0\,
      O => \bram_wdata[0]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data11(0),
      I1 => data10(0),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \snap_bits_reg_n_0_[0]\,
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => snap_bit_count(0),
      O => \bram_wdata[0]_INST_0_i_3_n_0\
    );
\bram_wdata[0]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(0),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(0),
      O => data14(0)
    );
\bram_wdata[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(32),
      I1 => var_freq_num(0),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(32),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(0),
      O => \bram_wdata[0]_INST_0_i_5_n_0\
    );
\bram_wdata[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(0),
      I1 => psk_spike_count(0),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => mean_freq_num(0),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => mean_mag_num(0),
      O => \bram_wdata[0]_INST_0_i_6_n_0\
    );
\bram_wdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[10]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[10]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[12]_INST_0_i_3_n_6\,
      O => bram_wdata(10)
    );
\bram_wdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[10]_INST_0_i_3_n_0\,
      I1 => data14(10),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_dropped_bits(2),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(10),
      O => \bram_wdata[10]_INST_0_i_1_n_0\
    );
\bram_wdata[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[10]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[10]_INST_0_i_6_n_0\,
      O => \bram_wdata[10]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[10]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(10),
      I1 => data10(10),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[10]\,
      O => \bram_wdata[10]_INST_0_i_3_n_0\
    );
\bram_wdata[10]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(10),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(10),
      O => data14(10)
    );
\bram_wdata[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(42),
      I1 => var_freq_num(10),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(42),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(10),
      O => \bram_wdata[10]_INST_0_i_5_n_0\
    );
\bram_wdata[10]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(10),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(10),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(10),
      O => \bram_wdata[10]_INST_0_i_6_n_0\
    );
\bram_wdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[11]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[11]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[12]_INST_0_i_3_n_5\,
      O => bram_wdata(11)
    );
\bram_wdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[11]_INST_0_i_3_n_0\,
      I1 => data14(11),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_dropped_bits(3),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(11),
      O => \bram_wdata[11]_INST_0_i_1_n_0\
    );
\bram_wdata[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[11]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[11]_INST_0_i_6_n_0\,
      O => \bram_wdata[11]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[11]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(11),
      I1 => data10(11),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[11]\,
      O => \bram_wdata[11]_INST_0_i_3_n_0\
    );
\bram_wdata[11]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(11),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(11),
      O => data14(11)
    );
\bram_wdata[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(43),
      I1 => var_freq_num(11),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(43),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(11),
      O => \bram_wdata[11]_INST_0_i_5_n_0\
    );
\bram_wdata[11]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(11),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(11),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(11),
      O => \bram_wdata[11]_INST_0_i_6_n_0\
    );
\bram_wdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[12]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[12]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[12]_INST_0_i_3_n_4\,
      O => bram_wdata(12)
    );
\bram_wdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[12]_INST_0_i_4_n_0\,
      I1 => data14(12),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_dropped_bits(4),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(12),
      O => \bram_wdata[12]_INST_0_i_1_n_0\
    );
\bram_wdata[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[12]_INST_0_i_6_n_0\,
      I1 => \bram_wdata[12]_INST_0_i_7_n_0\,
      O => \bram_wdata[12]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[12]_INST_0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_wdata[8]_INST_0_i_3_n_0\,
      CO(3) => \bram_wdata[12]_INST_0_i_3_n_0\,
      CO(2) => \bram_wdata[12]_INST_0_i_3_n_1\,
      CO(1) => \bram_wdata[12]_INST_0_i_3_n_2\,
      CO(0) => \bram_wdata[12]_INST_0_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_wdata[12]_INST_0_i_3_n_4\,
      O(2) => \bram_wdata[12]_INST_0_i_3_n_5\,
      O(1) => \bram_wdata[12]_INST_0_i_3_n_6\,
      O(0) => \bram_wdata[12]_INST_0_i_3_n_7\,
      S(3 downto 0) => sequence_reg(12 downto 9)
    );
\bram_wdata[12]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(12),
      I1 => data10(12),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[12]\,
      O => \bram_wdata[12]_INST_0_i_4_n_0\
    );
\bram_wdata[12]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(12),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(12),
      O => data14(12)
    );
\bram_wdata[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(44),
      I1 => var_freq_num(12),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(44),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(12),
      O => \bram_wdata[12]_INST_0_i_6_n_0\
    );
\bram_wdata[12]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(12),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(12),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(12),
      O => \bram_wdata[12]_INST_0_i_7_n_0\
    );
\bram_wdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[13]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[13]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[16]_INST_0_i_3_n_7\,
      O => bram_wdata(13)
    );
\bram_wdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[13]_INST_0_i_3_n_0\,
      I1 => data14(13),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_dropped_bits(5),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(13),
      O => \bram_wdata[13]_INST_0_i_1_n_0\
    );
\bram_wdata[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[13]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[13]_INST_0_i_6_n_0\,
      O => \bram_wdata[13]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[13]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(13),
      I1 => data10(13),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[13]\,
      O => \bram_wdata[13]_INST_0_i_3_n_0\
    );
\bram_wdata[13]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(13),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(13),
      O => data14(13)
    );
\bram_wdata[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(45),
      I1 => var_freq_num(13),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(45),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(13),
      O => \bram_wdata[13]_INST_0_i_5_n_0\
    );
\bram_wdata[13]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(13),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(13),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(13),
      O => \bram_wdata[13]_INST_0_i_6_n_0\
    );
\bram_wdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[14]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[14]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[16]_INST_0_i_3_n_6\,
      O => bram_wdata(14)
    );
\bram_wdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[14]_INST_0_i_3_n_0\,
      I1 => data14(14),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_dropped_bits(6),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(14),
      O => \bram_wdata[14]_INST_0_i_1_n_0\
    );
\bram_wdata[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[14]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[14]_INST_0_i_6_n_0\,
      O => \bram_wdata[14]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[14]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(14),
      I1 => data10(14),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[14]\,
      O => \bram_wdata[14]_INST_0_i_3_n_0\
    );
\bram_wdata[14]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(14),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(14),
      O => data14(14)
    );
\bram_wdata[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(46),
      I1 => var_freq_num(14),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(46),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(14),
      O => \bram_wdata[14]_INST_0_i_5_n_0\
    );
\bram_wdata[14]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(14),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(14),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(14),
      O => \bram_wdata[14]_INST_0_i_6_n_0\
    );
\bram_wdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[15]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[15]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[16]_INST_0_i_3_n_5\,
      O => bram_wdata(15)
    );
\bram_wdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[15]_INST_0_i_3_n_0\,
      I1 => data14(15),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_dropped_bits(7),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(15),
      O => \bram_wdata[15]_INST_0_i_1_n_0\
    );
\bram_wdata[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[15]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[15]_INST_0_i_6_n_0\,
      O => \bram_wdata[15]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[15]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(15),
      I1 => data10(15),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[15]\,
      O => \bram_wdata[15]_INST_0_i_3_n_0\
    );
\bram_wdata[15]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(15),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(15),
      O => data14(15)
    );
\bram_wdata[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(47),
      I1 => var_freq_num(15),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(47),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(15),
      O => \bram_wdata[15]_INST_0_i_5_n_0\
    );
\bram_wdata[15]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(15),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(15),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(15),
      O => \bram_wdata[15]_INST_0_i_6_n_0\
    );
\bram_wdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[16]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[16]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[16]_INST_0_i_3_n_4\,
      O => bram_wdata(16)
    );
\bram_wdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[16]_INST_0_i_4_n_0\,
      I1 => data14(16),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(0),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(16),
      O => \bram_wdata[16]_INST_0_i_1_n_0\
    );
\bram_wdata[16]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[16]_INST_0_i_6_n_0\,
      I1 => \bram_wdata[16]_INST_0_i_7_n_0\,
      O => \bram_wdata[16]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[16]_INST_0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_wdata[12]_INST_0_i_3_n_0\,
      CO(3) => \bram_wdata[16]_INST_0_i_3_n_0\,
      CO(2) => \bram_wdata[16]_INST_0_i_3_n_1\,
      CO(1) => \bram_wdata[16]_INST_0_i_3_n_2\,
      CO(0) => \bram_wdata[16]_INST_0_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_wdata[16]_INST_0_i_3_n_4\,
      O(2) => \bram_wdata[16]_INST_0_i_3_n_5\,
      O(1) => \bram_wdata[16]_INST_0_i_3_n_6\,
      O(0) => \bram_wdata[16]_INST_0_i_3_n_7\,
      S(3 downto 0) => sequence_reg(16 downto 13)
    );
\bram_wdata[16]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(16),
      I1 => data10(16),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[16]\,
      O => \bram_wdata[16]_INST_0_i_4_n_0\
    );
\bram_wdata[16]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(16),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(16),
      O => data14(16)
    );
\bram_wdata[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(48),
      I1 => var_freq_num(16),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(48),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(16),
      O => \bram_wdata[16]_INST_0_i_6_n_0\
    );
\bram_wdata[16]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(16),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(16),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(16),
      O => \bram_wdata[16]_INST_0_i_7_n_0\
    );
\bram_wdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[17]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[17]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[20]_INST_0_i_3_n_7\,
      O => bram_wdata(17)
    );
\bram_wdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[17]_INST_0_i_3_n_0\,
      I1 => data14(17),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(1),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(17),
      O => \bram_wdata[17]_INST_0_i_1_n_0\
    );
\bram_wdata[17]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[17]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[17]_INST_0_i_6_n_0\,
      O => \bram_wdata[17]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[17]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(17),
      I1 => data10(17),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[17]\,
      O => \bram_wdata[17]_INST_0_i_3_n_0\
    );
\bram_wdata[17]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(17),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(17),
      O => data14(17)
    );
\bram_wdata[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(49),
      I1 => var_freq_num(17),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(49),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(17),
      O => \bram_wdata[17]_INST_0_i_5_n_0\
    );
\bram_wdata[17]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(17),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(17),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(17),
      O => \bram_wdata[17]_INST_0_i_6_n_0\
    );
\bram_wdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[18]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[18]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[20]_INST_0_i_3_n_6\,
      O => bram_wdata(18)
    );
\bram_wdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[18]_INST_0_i_3_n_0\,
      I1 => data14(18),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(2),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(18),
      O => \bram_wdata[18]_INST_0_i_1_n_0\
    );
\bram_wdata[18]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[18]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[18]_INST_0_i_6_n_0\,
      O => \bram_wdata[18]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[18]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(18),
      I1 => data10(18),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[18]\,
      O => \bram_wdata[18]_INST_0_i_3_n_0\
    );
\bram_wdata[18]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(18),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(18),
      O => data14(18)
    );
\bram_wdata[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(50),
      I1 => var_freq_num(18),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(50),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(18),
      O => \bram_wdata[18]_INST_0_i_5_n_0\
    );
\bram_wdata[18]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(18),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(18),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(18),
      O => \bram_wdata[18]_INST_0_i_6_n_0\
    );
\bram_wdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[19]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[19]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[20]_INST_0_i_3_n_5\,
      O => bram_wdata(19)
    );
\bram_wdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[19]_INST_0_i_3_n_0\,
      I1 => data14(19),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(3),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(19),
      O => \bram_wdata[19]_INST_0_i_1_n_0\
    );
\bram_wdata[19]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[19]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[19]_INST_0_i_6_n_0\,
      O => \bram_wdata[19]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[19]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(19),
      I1 => data10(19),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[19]\,
      O => \bram_wdata[19]_INST_0_i_3_n_0\
    );
\bram_wdata[19]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(19),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(19),
      O => data14(19)
    );
\bram_wdata[19]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(51),
      I1 => var_freq_num(19),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(51),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(19),
      O => \bram_wdata[19]_INST_0_i_5_n_0\
    );
\bram_wdata[19]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(19),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(19),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(19),
      O => \bram_wdata[19]_INST_0_i_6_n_0\
    );
\bram_wdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[1]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[1]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[4]_INST_0_i_3_n_7\,
      O => bram_wdata(1)
    );
\bram_wdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[1]_INST_0_i_3_n_0\,
      I1 => data14(1),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_bit_overflow_sticky,
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(1),
      O => \bram_wdata[1]_INST_0_i_1_n_0\
    );
\bram_wdata[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[1]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[1]_INST_0_i_6_n_0\,
      O => \bram_wdata[1]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data11(1),
      I1 => data10(1),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \snap_bits_reg_n_0_[1]\,
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => snap_bit_count(1),
      O => \bram_wdata[1]_INST_0_i_3_n_0\
    );
\bram_wdata[1]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(1),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(1),
      O => data14(1)
    );
\bram_wdata[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(33),
      I1 => var_freq_num(1),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(33),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(1),
      O => \bram_wdata[1]_INST_0_i_5_n_0\
    );
\bram_wdata[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(1),
      I1 => psk_spike_count(1),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => mean_freq_num(1),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => mean_mag_num(1),
      O => \bram_wdata[1]_INST_0_i_6_n_0\
    );
\bram_wdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[20]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[20]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[20]_INST_0_i_3_n_4\,
      O => bram_wdata(20)
    );
\bram_wdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[20]_INST_0_i_4_n_0\,
      I1 => data14(20),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(4),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(20),
      O => \bram_wdata[20]_INST_0_i_1_n_0\
    );
\bram_wdata[20]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[20]_INST_0_i_6_n_0\,
      I1 => \bram_wdata[20]_INST_0_i_7_n_0\,
      O => \bram_wdata[20]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[20]_INST_0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_wdata[16]_INST_0_i_3_n_0\,
      CO(3) => \bram_wdata[20]_INST_0_i_3_n_0\,
      CO(2) => \bram_wdata[20]_INST_0_i_3_n_1\,
      CO(1) => \bram_wdata[20]_INST_0_i_3_n_2\,
      CO(0) => \bram_wdata[20]_INST_0_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_wdata[20]_INST_0_i_3_n_4\,
      O(2) => \bram_wdata[20]_INST_0_i_3_n_5\,
      O(1) => \bram_wdata[20]_INST_0_i_3_n_6\,
      O(0) => \bram_wdata[20]_INST_0_i_3_n_7\,
      S(3 downto 0) => sequence_reg(20 downto 17)
    );
\bram_wdata[20]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(20),
      I1 => data10(20),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[20]\,
      O => \bram_wdata[20]_INST_0_i_4_n_0\
    );
\bram_wdata[20]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(20),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(20),
      O => data14(20)
    );
\bram_wdata[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(52),
      I1 => var_freq_num(20),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(52),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(20),
      O => \bram_wdata[20]_INST_0_i_6_n_0\
    );
\bram_wdata[20]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(20),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(20),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(20),
      O => \bram_wdata[20]_INST_0_i_7_n_0\
    );
\bram_wdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[21]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[21]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[24]_INST_0_i_3_n_7\,
      O => bram_wdata(21)
    );
\bram_wdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[21]_INST_0_i_3_n_0\,
      I1 => data14(21),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(5),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(21),
      O => \bram_wdata[21]_INST_0_i_1_n_0\
    );
\bram_wdata[21]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[21]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[21]_INST_0_i_6_n_0\,
      O => \bram_wdata[21]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[21]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(21),
      I1 => data10(21),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[21]\,
      O => \bram_wdata[21]_INST_0_i_3_n_0\
    );
\bram_wdata[21]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(21),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(21),
      O => data14(21)
    );
\bram_wdata[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(53),
      I1 => var_freq_num(21),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(53),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(21),
      O => \bram_wdata[21]_INST_0_i_5_n_0\
    );
\bram_wdata[21]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(21),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(21),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(21),
      O => \bram_wdata[21]_INST_0_i_6_n_0\
    );
\bram_wdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[22]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[22]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[24]_INST_0_i_3_n_6\,
      O => bram_wdata(22)
    );
\bram_wdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[22]_INST_0_i_3_n_0\,
      I1 => data14(22),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(6),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(22),
      O => \bram_wdata[22]_INST_0_i_1_n_0\
    );
\bram_wdata[22]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[22]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[22]_INST_0_i_6_n_0\,
      O => \bram_wdata[22]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[22]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(22),
      I1 => data10(22),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[22]\,
      O => \bram_wdata[22]_INST_0_i_3_n_0\
    );
\bram_wdata[22]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(22),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(22),
      O => data14(22)
    );
\bram_wdata[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(54),
      I1 => var_freq_num(22),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(54),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(22),
      O => \bram_wdata[22]_INST_0_i_5_n_0\
    );
\bram_wdata[22]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(22),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(22),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(22),
      O => \bram_wdata[22]_INST_0_i_6_n_0\
    );
\bram_wdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[23]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[23]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[24]_INST_0_i_3_n_5\,
      O => bram_wdata(23)
    );
\bram_wdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[23]_INST_0_i_3_n_0\,
      I1 => data14(23),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(7),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(23),
      O => \bram_wdata[23]_INST_0_i_1_n_0\
    );
\bram_wdata[23]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[23]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[23]_INST_0_i_6_n_0\,
      O => \bram_wdata[23]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[23]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(23),
      I1 => data10(23),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[23]\,
      O => \bram_wdata[23]_INST_0_i_3_n_0\
    );
\bram_wdata[23]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(23),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(23),
      O => data14(23)
    );
\bram_wdata[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(55),
      I1 => var_freq_num(23),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(55),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(23),
      O => \bram_wdata[23]_INST_0_i_5_n_0\
    );
\bram_wdata[23]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(23),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(23),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(23),
      O => \bram_wdata[23]_INST_0_i_6_n_0\
    );
\bram_wdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[24]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[24]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[24]_INST_0_i_3_n_4\,
      O => bram_wdata(24)
    );
\bram_wdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[24]_INST_0_i_4_n_0\,
      I1 => data14(24),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(8),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(24),
      O => \bram_wdata[24]_INST_0_i_1_n_0\
    );
\bram_wdata[24]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[24]_INST_0_i_6_n_0\,
      I1 => \bram_wdata[24]_INST_0_i_7_n_0\,
      O => \bram_wdata[24]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[24]_INST_0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_wdata[20]_INST_0_i_3_n_0\,
      CO(3) => \bram_wdata[24]_INST_0_i_3_n_0\,
      CO(2) => \bram_wdata[24]_INST_0_i_3_n_1\,
      CO(1) => \bram_wdata[24]_INST_0_i_3_n_2\,
      CO(0) => \bram_wdata[24]_INST_0_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_wdata[24]_INST_0_i_3_n_4\,
      O(2) => \bram_wdata[24]_INST_0_i_3_n_5\,
      O(1) => \bram_wdata[24]_INST_0_i_3_n_6\,
      O(0) => \bram_wdata[24]_INST_0_i_3_n_7\,
      S(3 downto 0) => sequence_reg(24 downto 21)
    );
\bram_wdata[24]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(24),
      I1 => data10(24),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[24]\,
      O => \bram_wdata[24]_INST_0_i_4_n_0\
    );
\bram_wdata[24]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(24),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(24),
      O => data14(24)
    );
\bram_wdata[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(56),
      I1 => var_freq_num(24),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(56),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(24),
      O => \bram_wdata[24]_INST_0_i_6_n_0\
    );
\bram_wdata[24]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(24),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(24),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(24),
      O => \bram_wdata[24]_INST_0_i_7_n_0\
    );
\bram_wdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[25]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[25]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[28]_INST_0_i_3_n_7\,
      O => bram_wdata(25)
    );
\bram_wdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[25]_INST_0_i_3_n_0\,
      I1 => data14(25),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(9),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(25),
      O => \bram_wdata[25]_INST_0_i_1_n_0\
    );
\bram_wdata[25]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[25]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[25]_INST_0_i_6_n_0\,
      O => \bram_wdata[25]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[25]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(25),
      I1 => data10(25),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[25]\,
      O => \bram_wdata[25]_INST_0_i_3_n_0\
    );
\bram_wdata[25]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(25),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(25),
      O => data14(25)
    );
\bram_wdata[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(57),
      I1 => var_freq_num(25),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(57),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(25),
      O => \bram_wdata[25]_INST_0_i_5_n_0\
    );
\bram_wdata[25]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(25),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(25),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(25),
      O => \bram_wdata[25]_INST_0_i_6_n_0\
    );
\bram_wdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[26]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[26]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[28]_INST_0_i_3_n_6\,
      O => bram_wdata(26)
    );
\bram_wdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[26]_INST_0_i_3_n_0\,
      I1 => data14(26),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(10),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(26),
      O => \bram_wdata[26]_INST_0_i_1_n_0\
    );
\bram_wdata[26]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[26]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[26]_INST_0_i_6_n_0\,
      O => \bram_wdata[26]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[26]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(26),
      I1 => data10(26),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[26]\,
      O => \bram_wdata[26]_INST_0_i_3_n_0\
    );
\bram_wdata[26]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(26),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(26),
      O => data14(26)
    );
\bram_wdata[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(58),
      I1 => var_freq_num(26),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(58),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(26),
      O => \bram_wdata[26]_INST_0_i_5_n_0\
    );
\bram_wdata[26]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(26),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(26),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(26),
      O => \bram_wdata[26]_INST_0_i_6_n_0\
    );
\bram_wdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[27]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[27]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[28]_INST_0_i_3_n_5\,
      O => bram_wdata(27)
    );
\bram_wdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[27]_INST_0_i_3_n_0\,
      I1 => data14(27),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(11),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(27),
      O => \bram_wdata[27]_INST_0_i_1_n_0\
    );
\bram_wdata[27]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[27]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[27]_INST_0_i_6_n_0\,
      O => \bram_wdata[27]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[27]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(27),
      I1 => data10(27),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[27]\,
      O => \bram_wdata[27]_INST_0_i_3_n_0\
    );
\bram_wdata[27]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(27),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(27),
      O => data14(27)
    );
\bram_wdata[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(59),
      I1 => var_freq_num(27),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(59),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(27),
      O => \bram_wdata[27]_INST_0_i_5_n_0\
    );
\bram_wdata[27]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(27),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(27),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(27),
      O => \bram_wdata[27]_INST_0_i_6_n_0\
    );
\bram_wdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[28]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[28]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[28]_INST_0_i_3_n_4\,
      O => bram_wdata(28)
    );
\bram_wdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[28]_INST_0_i_4_n_0\,
      I1 => data14(28),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(12),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(28),
      O => \bram_wdata[28]_INST_0_i_1_n_0\
    );
\bram_wdata[28]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[28]_INST_0_i_6_n_0\,
      I1 => \bram_wdata[28]_INST_0_i_7_n_0\,
      O => \bram_wdata[28]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[28]_INST_0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_wdata[24]_INST_0_i_3_n_0\,
      CO(3) => \bram_wdata[28]_INST_0_i_3_n_0\,
      CO(2) => \bram_wdata[28]_INST_0_i_3_n_1\,
      CO(1) => \bram_wdata[28]_INST_0_i_3_n_2\,
      CO(0) => \bram_wdata[28]_INST_0_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_wdata[28]_INST_0_i_3_n_4\,
      O(2) => \bram_wdata[28]_INST_0_i_3_n_5\,
      O(1) => \bram_wdata[28]_INST_0_i_3_n_6\,
      O(0) => \bram_wdata[28]_INST_0_i_3_n_7\,
      S(3 downto 0) => sequence_reg(28 downto 25)
    );
\bram_wdata[28]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(28),
      I1 => data10(28),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[28]\,
      O => \bram_wdata[28]_INST_0_i_4_n_0\
    );
\bram_wdata[28]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(28),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(28),
      O => data14(28)
    );
\bram_wdata[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(60),
      I1 => var_freq_num(28),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(60),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(28),
      O => \bram_wdata[28]_INST_0_i_6_n_0\
    );
\bram_wdata[28]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(28),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(28),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(28),
      O => \bram_wdata[28]_INST_0_i_7_n_0\
    );
\bram_wdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[29]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[29]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[31]_INST_0_i_4_n_7\,
      O => bram_wdata(29)
    );
\bram_wdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[29]_INST_0_i_3_n_0\,
      I1 => data14(29),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(13),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(29),
      O => \bram_wdata[29]_INST_0_i_1_n_0\
    );
\bram_wdata[29]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[29]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[29]_INST_0_i_6_n_0\,
      O => \bram_wdata[29]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[29]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(29),
      I1 => data10(29),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[29]\,
      O => \bram_wdata[29]_INST_0_i_3_n_0\
    );
\bram_wdata[29]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(29),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(29),
      O => data14(29)
    );
\bram_wdata[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(61),
      I1 => var_freq_num(29),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(61),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(29),
      O => \bram_wdata[29]_INST_0_i_5_n_0\
    );
\bram_wdata[29]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(29),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(29),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(29),
      O => \bram_wdata[29]_INST_0_i_6_n_0\
    );
\bram_wdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[2]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[2]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[4]_INST_0_i_3_n_6\,
      O => bram_wdata(2)
    );
\bram_wdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[2]_INST_0_i_3_n_0\,
      I1 => data14(2),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_sticky,
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(2),
      O => \bram_wdata[2]_INST_0_i_1_n_0\
    );
\bram_wdata[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[2]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[2]_INST_0_i_6_n_0\,
      O => \bram_wdata[2]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data11(2),
      I1 => data10(2),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \snap_bits_reg_n_0_[2]\,
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => snap_bit_count(2),
      O => \bram_wdata[2]_INST_0_i_3_n_0\
    );
\bram_wdata[2]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(2),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(2),
      O => data14(2)
    );
\bram_wdata[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(34),
      I1 => var_freq_num(2),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(34),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(2),
      O => \bram_wdata[2]_INST_0_i_5_n_0\
    );
\bram_wdata[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(2),
      I1 => psk_spike_count(2),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => mean_freq_num(2),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => mean_mag_num(2),
      O => \bram_wdata[2]_INST_0_i_6_n_0\
    );
\bram_wdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[30]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[30]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[31]_INST_0_i_4_n_6\,
      O => bram_wdata(30)
    );
\bram_wdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[30]_INST_0_i_3_n_0\,
      I1 => data14(30),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(14),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(30),
      O => \bram_wdata[30]_INST_0_i_1_n_0\
    );
\bram_wdata[30]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[30]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[30]_INST_0_i_6_n_0\,
      O => \bram_wdata[30]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[30]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(30),
      I1 => data10(30),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[30]\,
      O => \bram_wdata[30]_INST_0_i_3_n_0\
    );
\bram_wdata[30]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(30),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(30),
      O => data14(30)
    );
\bram_wdata[30]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(62),
      I1 => var_freq_num(30),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(62),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(30),
      O => \bram_wdata[30]_INST_0_i_5_n_0\
    );
\bram_wdata[30]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(30),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(30),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(30),
      O => \bram_wdata[30]_INST_0_i_6_n_0\
    );
\bram_wdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[31]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[31]_INST_0_i_3_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[31]_INST_0_i_4_n_5\,
      O => bram_wdata(31)
    );
\bram_wdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[31]_INST_0_i_5_n_0\,
      I1 => data14(31),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_snapshot_overrun_count(15),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(31),
      O => \bram_wdata[31]_INST_0_i_1_n_0\
    );
\bram_wdata[31]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(63),
      I1 => var_freq_num(31),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(63),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(31),
      O => \bram_wdata[31]_INST_0_i_10_n_0\
    );
\bram_wdata[31]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_flag,
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(31),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(31),
      O => \bram_wdata[31]_INST_0_i_11_n_0\
    );
\bram_wdata[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEDF"
    )
        port map (
      I0 => \word_index_reg__0\(5),
      I1 => \word_index_reg__0\(4),
      I2 => \word_index_reg__0\(3),
      I3 => \word_index_reg__0\(2),
      I4 => \word_index_reg__0\(1),
      I5 => \word_index_reg__0\(0),
      O => \bram_wdata[31]_INST_0_i_2_n_0\
    );
\bram_wdata[31]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[31]_INST_0_i_10_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_11_n_0\,
      O => \bram_wdata[31]_INST_0_i_3_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[31]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_wdata[28]_INST_0_i_3_n_0\,
      CO(3 downto 2) => \NLW_bram_wdata[31]_INST_0_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bram_wdata[31]_INST_0_i_4_n_2\,
      CO(0) => \bram_wdata[31]_INST_0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bram_wdata[31]_INST_0_i_4_O_UNCONNECTED\(3),
      O(2) => \bram_wdata[31]_INST_0_i_4_n_5\,
      O(1) => \bram_wdata[31]_INST_0_i_4_n_6\,
      O(0) => \bram_wdata[31]_INST_0_i_4_n_7\,
      S(3) => '0',
      S(2 downto 0) => sequence_reg(31 downto 29)
    );
\bram_wdata[31]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(31),
      I1 => data10(31),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[31]\,
      O => \bram_wdata[31]_INST_0_i_5_n_0\
    );
\bram_wdata[31]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(31),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(31),
      O => data14(31)
    );
\bram_wdata[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9FFFFFFFFFFF9F"
    )
        port map (
      I0 => \word_index_reg__0\(0),
      I1 => \word_index_reg__0\(1),
      I2 => \word_index_reg__0\(2),
      I3 => \word_index_reg__0\(4),
      I4 => \word_index_reg__0\(5),
      I5 => \word_index_reg__0\(3),
      O => \bram_wdata[31]_INST_0_i_7_n_0\
    );
\bram_wdata[31]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => \bram_wdata[31]_INST_0_i_9_n_0\,
      I1 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      O => \bram_wdata[31]_INST_0_i_8_n_0\
    );
\bram_wdata[31]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF6FFF6FFF6F6FF"
    )
        port map (
      I0 => \word_index_reg__0\(3),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(2),
      I4 => \word_index_reg__0\(1),
      I5 => \word_index_reg__0\(0),
      O => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[3]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[3]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[4]_INST_0_i_3_n_5\,
      O => bram_wdata(3)
    );
\bram_wdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AAC0AACFAAC0AA"
    )
        port map (
      I0 => \bram_wdata[3]_INST_0_i_3_n_0\,
      I1 => data14(3),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[31]_INST_0_i_9_n_0\,
      I4 => data12(3),
      I5 => \bram_wdata[7]_INST_0_i_6_n_0\,
      O => \bram_wdata[3]_INST_0_i_1_n_0\
    );
\bram_wdata[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[3]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[3]_INST_0_i_6_n_0\,
      O => \bram_wdata[3]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data11(3),
      I1 => data10(3),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \snap_bits_reg_n_0_[3]\,
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => snap_bit_count(3),
      O => \bram_wdata[3]_INST_0_i_3_n_0\
    );
\bram_wdata[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(3),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(3),
      O => data14(3)
    );
\bram_wdata[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(35),
      I1 => var_freq_num(3),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(35),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(3),
      O => \bram_wdata[3]_INST_0_i_5_n_0\
    );
\bram_wdata[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(3),
      I1 => psk_spike_count(3),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => mean_freq_num(3),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => mean_mag_num(3),
      O => \bram_wdata[3]_INST_0_i_6_n_0\
    );
\bram_wdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[4]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[4]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[4]_INST_0_i_3_n_4\,
      O => bram_wdata(4)
    );
\bram_wdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AAC0AACFAAC0AA"
    )
        port map (
      I0 => \bram_wdata[4]_INST_0_i_4_n_0\,
      I1 => data14(4),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[31]_INST_0_i_9_n_0\,
      I4 => data12(4),
      I5 => \bram_wdata[7]_INST_0_i_6_n_0\,
      O => \bram_wdata[4]_INST_0_i_1_n_0\
    );
\bram_wdata[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[4]_INST_0_i_6_n_0\,
      I1 => \bram_wdata[4]_INST_0_i_7_n_0\,
      O => \bram_wdata[4]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[4]_INST_0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bram_wdata[4]_INST_0_i_3_n_0\,
      CO(2) => \bram_wdata[4]_INST_0_i_3_n_1\,
      CO(1) => \bram_wdata[4]_INST_0_i_3_n_2\,
      CO(0) => \bram_wdata[4]_INST_0_i_3_n_3\,
      CYINIT => sequence_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => \bram_wdata[4]_INST_0_i_3_n_4\,
      O(2) => \bram_wdata[4]_INST_0_i_3_n_5\,
      O(1) => \bram_wdata[4]_INST_0_i_3_n_6\,
      O(0) => \bram_wdata[4]_INST_0_i_3_n_7\,
      S(3 downto 0) => sequence_reg(4 downto 1)
    );
\bram_wdata[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data11(4),
      I1 => data10(4),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \snap_bits_reg_n_0_[4]\,
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => snap_bit_count(4),
      O => \bram_wdata[4]_INST_0_i_4_n_0\
    );
\bram_wdata[4]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(4),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(4),
      O => data14(4)
    );
\bram_wdata[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(36),
      I1 => var_freq_num(4),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(36),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(4),
      O => \bram_wdata[4]_INST_0_i_6_n_0\
    );
\bram_wdata[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(4),
      I1 => psk_spike_count(4),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => mean_freq_num(4),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => mean_mag_num(4),
      O => \bram_wdata[4]_INST_0_i_7_n_0\
    );
\bram_wdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[5]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[5]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[8]_INST_0_i_3_n_7\,
      O => bram_wdata(5)
    );
\bram_wdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AAC0AACFAAC0AA"
    )
        port map (
      I0 => \bram_wdata[5]_INST_0_i_3_n_0\,
      I1 => data14(5),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[31]_INST_0_i_9_n_0\,
      I4 => data12(5),
      I5 => \bram_wdata[7]_INST_0_i_6_n_0\,
      O => \bram_wdata[5]_INST_0_i_1_n_0\
    );
\bram_wdata[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[5]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[5]_INST_0_i_6_n_0\,
      O => \bram_wdata[5]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data11(5),
      I1 => data10(5),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \snap_bits_reg_n_0_[5]\,
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => snap_bit_count(5),
      O => \bram_wdata[5]_INST_0_i_3_n_0\
    );
\bram_wdata[5]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(5),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(5),
      O => data14(5)
    );
\bram_wdata[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(37),
      I1 => var_freq_num(5),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(37),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(5),
      O => \bram_wdata[5]_INST_0_i_5_n_0\
    );
\bram_wdata[5]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(5),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(5),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(5),
      O => \bram_wdata[5]_INST_0_i_6_n_0\
    );
\bram_wdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[6]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[6]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[8]_INST_0_i_3_n_6\,
      O => bram_wdata(6)
    );
\bram_wdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AAC0AACFAAC0AA"
    )
        port map (
      I0 => \bram_wdata[6]_INST_0_i_3_n_0\,
      I1 => data14(6),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[31]_INST_0_i_9_n_0\,
      I4 => data12(6),
      I5 => \bram_wdata[7]_INST_0_i_6_n_0\,
      O => \bram_wdata[6]_INST_0_i_1_n_0\
    );
\bram_wdata[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[6]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[6]_INST_0_i_6_n_0\,
      O => \bram_wdata[6]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data11(6),
      I1 => data10(6),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \snap_bits_reg_n_0_[6]\,
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => snap_bit_count(6),
      O => \bram_wdata[6]_INST_0_i_3_n_0\
    );
\bram_wdata[6]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(6),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(6),
      O => data14(6)
    );
\bram_wdata[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(38),
      I1 => var_freq_num(6),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(38),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(6),
      O => \bram_wdata[6]_INST_0_i_5_n_0\
    );
\bram_wdata[6]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(6),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(6),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(6),
      O => \bram_wdata[6]_INST_0_i_6_n_0\
    );
\bram_wdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[7]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[7]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[8]_INST_0_i_3_n_5\,
      O => bram_wdata(7)
    );
\bram_wdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AAC0AACFAAC0AA"
    )
        port map (
      I0 => \bram_wdata[7]_INST_0_i_3_n_0\,
      I1 => data14(7),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[31]_INST_0_i_9_n_0\,
      I4 => data12(7),
      I5 => \bram_wdata[7]_INST_0_i_6_n_0\,
      O => \bram_wdata[7]_INST_0_i_1_n_0\
    );
\bram_wdata[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[7]_INST_0_i_7_n_0\,
      I1 => \bram_wdata[7]_INST_0_i_8_n_0\,
      O => \bram_wdata[7]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data11(7),
      I1 => data10(7),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \snap_bits_reg_n_0_[7]\,
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => snap_bit_count(7),
      O => \bram_wdata[7]_INST_0_i_3_n_0\
    );
\bram_wdata[7]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(7),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(7),
      O => data14(7)
    );
\bram_wdata[7]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFFFFEB"
    )
        port map (
      I0 => \word_index_reg__0\(4),
      I1 => \word_index_reg__0\(0),
      I2 => \word_index_reg__0\(1),
      I3 => \word_index_reg__0\(3),
      I4 => \word_index_reg__0\(5),
      O => \bram_wdata[7]_INST_0_i_5_n_0\
    );
\bram_wdata[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111000000001110"
    )
        port map (
      I0 => \word_index_reg__0\(4),
      I1 => \word_index_reg__0\(0),
      I2 => \word_index_reg__0\(2),
      I3 => \word_index_reg__0\(1),
      I4 => \word_index_reg__0\(3),
      I5 => \word_index_reg__0\(5),
      O => \bram_wdata[7]_INST_0_i_6_n_0\
    );
\bram_wdata[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(39),
      I1 => var_freq_num(7),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(39),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(7),
      O => \bram_wdata[7]_INST_0_i_7_n_0\
    );
\bram_wdata[7]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(7),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(7),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(7),
      O => \bram_wdata[7]_INST_0_i_8_n_0\
    );
\bram_wdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[8]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[8]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[8]_INST_0_i_3_n_4\,
      O => bram_wdata(8)
    );
\bram_wdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[8]_INST_0_i_4_n_0\,
      I1 => data14(8),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_dropped_bits(0),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(8),
      O => \bram_wdata[8]_INST_0_i_1_n_0\
    );
\bram_wdata[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[8]_INST_0_i_6_n_0\,
      I1 => \bram_wdata[8]_INST_0_i_7_n_0\,
      O => \bram_wdata[8]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[8]_INST_0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_wdata[4]_INST_0_i_3_n_0\,
      CO(3) => \bram_wdata[8]_INST_0_i_3_n_0\,
      CO(2) => \bram_wdata[8]_INST_0_i_3_n_1\,
      CO(1) => \bram_wdata[8]_INST_0_i_3_n_2\,
      CO(0) => \bram_wdata[8]_INST_0_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_wdata[8]_INST_0_i_3_n_4\,
      O(2) => \bram_wdata[8]_INST_0_i_3_n_5\,
      O(1) => \bram_wdata[8]_INST_0_i_3_n_6\,
      O(0) => \bram_wdata[8]_INST_0_i_3_n_7\,
      S(3 downto 0) => sequence_reg(8 downto 5)
    );
\bram_wdata[8]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(8),
      I1 => data10(8),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[8]\,
      O => \bram_wdata[8]_INST_0_i_4_n_0\
    );
\bram_wdata[8]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(8),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(8),
      O => data14(8)
    );
\bram_wdata[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(40),
      I1 => var_freq_num(8),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(40),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(8),
      O => \bram_wdata[8]_INST_0_i_6_n_0\
    );
\bram_wdata[8]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(8),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(8),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(8),
      O => \bram_wdata[8]_INST_0_i_7_n_0\
    );
\bram_wdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[9]_INST_0_i_1_n_0\,
      I1 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I2 => \bram_wdata[9]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => \bram_wdata[12]_INST_0_i_3_n_7\,
      O => bram_wdata(9)
    );
\bram_wdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bram_wdata[9]_INST_0_i_3_n_0\,
      I1 => data14(9),
      I2 => \bram_wdata[31]_INST_0_i_7_n_0\,
      I3 => snap_dropped_bits(1),
      I4 => \bram_wdata[31]_INST_0_i_8_n_0\,
      I5 => data12(9),
      O => \bram_wdata[9]_INST_0_i_1_n_0\
    );
\bram_wdata[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bram_wdata[9]_INST_0_i_5_n_0\,
      I1 => \bram_wdata[9]_INST_0_i_6_n_0\,
      O => \bram_wdata[9]_INST_0_i_2_n_0\,
      S => \bram_wdata[31]_INST_0_i_9_n_0\
    );
\bram_wdata[9]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data11(9),
      I1 => data10(9),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => \snap_bits_reg_n_0_[9]\,
      O => \bram_wdata[9]_INST_0_i_3_n_0\
    );
\bram_wdata[9]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"322C0220"
    )
        port map (
      I0 => hist_mag_rd_data(9),
      I1 => \word_index_reg__0\(5),
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(3),
      I4 => hist_freq_rd_data(9),
      O => data14(9)
    );
\bram_wdata[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => var_freq_num(41),
      I1 => var_freq_num(9),
      I2 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I3 => var_mag_num(41),
      I4 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I5 => var_mag_num(9),
      O => \bram_wdata[9]_INST_0_i_5_n_0\
    );
\bram_wdata[9]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => psk_spike_count(9),
      I1 => \bram_wdata[7]_INST_0_i_5_n_0\,
      I2 => mean_freq_num(9),
      I3 => \bram_wdata[7]_INST_0_i_6_n_0\,
      I4 => mean_mag_num(9),
      O => \bram_wdata[9]_INST_0_i_6_n_0\
    );
\bram_we[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => commit,
      O => bram_en
    );
busy_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => clear
    );
busy_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02F2"
    )
        port map (
      I0 => frame_done,
      I1 => commit,
      I2 => \^busy_reg_0\,
      I3 => busy7_out,
      O => busy_i_2_n_0
    );
busy_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \word_index_reg__0\(2),
      I2 => \word_index_reg__0\(5),
      I3 => \word_index_reg__0\(3),
      I4 => \word_index_reg__0\(1),
      I5 => \word_index[5]_i_4_n_0\,
      O => busy7_out
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => busy_i_2_n_0,
      Q => \^busy_reg_0\,
      R => clear
    );
\collect_bits[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(0),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[112]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(0)
    );
\collect_bits[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(100),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[116]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(100)
    );
\collect_bits[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(101),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[117]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(101)
    );
\collect_bits[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(102),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[118]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(102)
    );
\collect_bits[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(103),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[119]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(103)
    );
\collect_bits[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(104),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[120]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(104)
    );
\collect_bits[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(105),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[121]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(105)
    );
\collect_bits[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(106),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[122]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(106)
    );
\collect_bits[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(107),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[123]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(107)
    );
\collect_bits[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(108),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[124]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(108)
    );
\collect_bits[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(109),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[125]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(109)
    );
\collect_bits[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(10),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[122]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(10)
    );
\collect_bits[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(110),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[126]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(110)
    );
\collect_bits[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(111),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[127]_i_3_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(111)
    );
\collect_bits[111]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(6),
      I2 => collect_count(4),
      I3 => collect_count(5),
      O => \collect_bits[111]_i_2_n_0\
    );
\collect_bits[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(112),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[112]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(112)
    );
\collect_bits[112]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[112]_i_2_n_0\
    );
\collect_bits[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(113),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[113]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(113)
    );
\collect_bits[113]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(1),
      I3 => collect_count(0),
      O => \collect_bits[113]_i_2_n_0\
    );
\collect_bits[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(114),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[114]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(114)
    );
\collect_bits[114]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[114]_i_2_n_0\
    );
\collect_bits[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(115),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[115]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(115)
    );
\collect_bits[115]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[115]_i_2_n_0\
    );
\collect_bits[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(116),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[116]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(116)
    );
\collect_bits[116]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => collect_count(3),
      I1 => collect_count(2),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[116]_i_2_n_0\
    );
\collect_bits[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(117),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[117]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(117)
    );
\collect_bits[117]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => collect_count(3),
      I1 => collect_count(2),
      I2 => collect_count(1),
      I3 => collect_count(0),
      O => \collect_bits[117]_i_2_n_0\
    );
\collect_bits[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(118),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[118]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(118)
    );
\collect_bits[118]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => collect_count(3),
      I1 => collect_count(2),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[118]_i_2_n_0\
    );
\collect_bits[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(119),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[119]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(119)
    );
\collect_bits[119]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => collect_count(3),
      I1 => collect_count(2),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[119]_i_2_n_0\
    );
\collect_bits[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(11),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[123]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(11)
    );
\collect_bits[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(120),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[120]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(120)
    );
\collect_bits[120]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[120]_i_2_n_0\
    );
\collect_bits[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(121),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[121]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(121)
    );
\collect_bits[121]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(1),
      I3 => collect_count(0),
      O => \collect_bits[121]_i_2_n_0\
    );
\collect_bits[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(122),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[122]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(122)
    );
\collect_bits[122]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[122]_i_2_n_0\
    );
\collect_bits[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(123),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[123]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(123)
    );
\collect_bits[123]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[123]_i_2_n_0\
    );
\collect_bits[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(124),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[124]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(124)
    );
\collect_bits[124]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[124]_i_2_n_0\
    );
\collect_bits[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(125),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[125]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(125)
    );
\collect_bits[125]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(1),
      I3 => collect_count(0),
      O => \collect_bits[125]_i_2_n_0\
    );
\collect_bits[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(126),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[126]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(126)
    );
\collect_bits[126]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[126]_i_2_n_0\
    );
\collect_bits[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(127),
      I2 => \collect_bits[127]_i_2_n_0\,
      I3 => \collect_bits[127]_i_3_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(127)
    );
\collect_bits[127]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(6),
      I2 => collect_count(4),
      I3 => collect_count(5),
      O => \collect_bits[127]_i_2_n_0\
    );
\collect_bits[127]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => collect_count(2),
      I1 => collect_count(3),
      I2 => collect_count(0),
      I3 => collect_count(1),
      O => \collect_bits[127]_i_3_n_0\
    );
\collect_bits[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(12),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[124]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(12)
    );
\collect_bits[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(13),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[125]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(13)
    );
\collect_bits[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(14),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[126]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(14)
    );
\collect_bits[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(15),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[127]_i_3_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(15)
    );
\collect_bits[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => collect_count(6),
      I1 => \collect_count_reg[7]_rep__1_n_0\,
      I2 => collect_count(4),
      I3 => collect_count(5),
      O => \collect_bits[15]_i_2_n_0\
    );
\collect_bits[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(16),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[112]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(16)
    );
\collect_bits[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(17),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[113]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(17)
    );
\collect_bits[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(18),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[114]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(18)
    );
\collect_bits[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(19),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[115]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(19)
    );
\collect_bits[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(1),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[113]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(1)
    );
\collect_bits[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(20),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[116]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(20)
    );
\collect_bits[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(21),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[117]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(21)
    );
\collect_bits[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(22),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[118]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(22)
    );
\collect_bits[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(23),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[119]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(23)
    );
\collect_bits[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(24),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[120]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(24)
    );
\collect_bits[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(25),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[121]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(25)
    );
\collect_bits[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(26),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[122]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(26)
    );
\collect_bits[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(27),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[123]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(27)
    );
\collect_bits[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(28),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[124]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(28)
    );
\collect_bits[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(29),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[125]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(29)
    );
\collect_bits[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(2),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[114]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(2)
    );
\collect_bits[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(30),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[126]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(30)
    );
\collect_bits[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(31),
      I2 => \collect_bits[31]_i_2_n_0\,
      I3 => \collect_bits[127]_i_3_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(31)
    );
\collect_bits[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => collect_count(6),
      I1 => \collect_count_reg[7]_rep__1_n_0\,
      I2 => collect_count(5),
      I3 => collect_count(4),
      O => \collect_bits[31]_i_2_n_0\
    );
\collect_bits[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(32),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[112]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(32)
    );
\collect_bits[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(33),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[113]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(33)
    );
\collect_bits[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(34),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[114]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(34)
    );
\collect_bits[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(35),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[115]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(35)
    );
\collect_bits[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(36),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[116]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(36)
    );
\collect_bits[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(37),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[117]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(37)
    );
\collect_bits[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(38),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[118]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(38)
    );
\collect_bits[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(39),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[119]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(39)
    );
\collect_bits[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(3),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[115]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(3)
    );
\collect_bits[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(40),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[120]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(40)
    );
\collect_bits[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(41),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[121]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(41)
    );
\collect_bits[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(42),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[122]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(42)
    );
\collect_bits[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(43),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[123]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(43)
    );
\collect_bits[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(44),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[124]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(44)
    );
\collect_bits[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(45),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[125]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(45)
    );
\collect_bits[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(46),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[126]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(46)
    );
\collect_bits[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(47),
      I2 => \collect_bits[47]_i_2_n_0\,
      I3 => \collect_bits[127]_i_3_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(47)
    );
\collect_bits[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => collect_count(6),
      I1 => \collect_count_reg[7]_rep__0_n_0\,
      I2 => collect_count(4),
      I3 => collect_count(5),
      O => \collect_bits[47]_i_2_n_0\
    );
\collect_bits[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(48),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[112]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(48)
    );
\collect_bits[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(49),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[113]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(49)
    );
\collect_bits[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(4),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[116]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(4)
    );
\collect_bits[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(50),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[114]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(50)
    );
\collect_bits[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(51),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[115]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(51)
    );
\collect_bits[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(52),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[116]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(52)
    );
\collect_bits[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(53),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[117]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(53)
    );
\collect_bits[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(54),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[118]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(54)
    );
\collect_bits[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(55),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[119]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(55)
    );
\collect_bits[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(56),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[120]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(56)
    );
\collect_bits[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(57),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[121]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(57)
    );
\collect_bits[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(58),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[122]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(58)
    );
\collect_bits[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(59),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[123]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(59)
    );
\collect_bits[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(5),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[117]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(5)
    );
\collect_bits[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(60),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[124]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(60)
    );
\collect_bits[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(61),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[125]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(61)
    );
\collect_bits[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(62),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[126]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(62)
    );
\collect_bits[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(63),
      I2 => \collect_bits[63]_i_2_n_0\,
      I3 => \collect_bits[127]_i_3_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(63)
    );
\collect_bits[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => collect_count(6),
      I1 => \collect_count_reg[7]_rep__0_n_0\,
      I2 => collect_count(4),
      I3 => collect_count(5),
      O => \collect_bits[63]_i_2_n_0\
    );
\collect_bits[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(64),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[112]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(64)
    );
\collect_bits[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(65),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[113]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(65)
    );
\collect_bits[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(66),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[114]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(66)
    );
\collect_bits[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(67),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[115]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(67)
    );
\collect_bits[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(68),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[116]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(68)
    );
\collect_bits[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(69),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[117]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(69)
    );
\collect_bits[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(6),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[118]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(6)
    );
\collect_bits[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(70),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[118]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(70)
    );
\collect_bits[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(71),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[119]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(71)
    );
\collect_bits[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(72),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[120]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(72)
    );
\collect_bits[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(73),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[121]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(73)
    );
\collect_bits[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(74),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[122]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(74)
    );
\collect_bits[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(75),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[123]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(75)
    );
\collect_bits[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(76),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[124]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(76)
    );
\collect_bits[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(77),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[125]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(77)
    );
\collect_bits[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(78),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[126]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(78)
    );
\collect_bits[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(79),
      I2 => \collect_bits[79]_i_2_n_0\,
      I3 => \collect_bits[127]_i_3_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(79)
    );
\collect_bits[79]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_count(6),
      I2 => collect_count(4),
      I3 => collect_count(5),
      O => \collect_bits[79]_i_2_n_0\
    );
\collect_bits[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(7),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[119]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(7)
    );
\collect_bits[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(80),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[112]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(80)
    );
\collect_bits[81]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(81),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[113]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(81)
    );
\collect_bits[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(82),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[114]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(82)
    );
\collect_bits[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(83),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[115]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(83)
    );
\collect_bits[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(84),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[116]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(84)
    );
\collect_bits[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(85),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[117]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(85)
    );
\collect_bits[86]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(86),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[118]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(86)
    );
\collect_bits[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => collect_bits(87),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[119]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(87)
    );
\collect_bits[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(88),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[120]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(88)
    );
\collect_bits[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(89),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[121]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(89)
    );
\collect_bits[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(8),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[120]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(8)
    );
\collect_bits[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(90),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[122]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(90)
    );
\collect_bits[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(91),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[123]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(91)
    );
\collect_bits[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(92),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[124]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(92)
    );
\collect_bits[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(93),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[125]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(93)
    );
\collect_bits[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(94),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[126]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(94)
    );
\collect_bits[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(95),
      I2 => \collect_bits[95]_i_2_n_0\,
      I3 => \collect_bits[127]_i_3_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(95)
    );
\collect_bits[95]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(6),
      I2 => collect_count(5),
      I3 => collect_count(4),
      O => \collect_bits[95]_i_2_n_0\
    );
\collect_bits[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(96),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[112]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(96)
    );
\collect_bits[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(97),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[113]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(97)
    );
\collect_bits[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(98),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[114]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(98)
    );
\collect_bits[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_bits(99),
      I2 => \collect_bits[111]_i_2_n_0\,
      I3 => \collect_bits[115]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(99)
    );
\collect_bits[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCC8"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => collect_bits(9),
      I2 => \collect_bits[15]_i_2_n_0\,
      I3 => \collect_bits[121]_i_2_n_0\,
      I4 => bpsk_bit_data,
      O => \collect_bits_next__255\(9)
    );
\collect_bits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(0),
      Q => collect_bits(0),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(100),
      Q => collect_bits(100),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(101),
      Q => collect_bits(101),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(102),
      Q => collect_bits(102),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(103),
      Q => collect_bits(103),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(104),
      Q => collect_bits(104),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(105),
      Q => collect_bits(105),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(106),
      Q => collect_bits(106),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(107),
      Q => collect_bits(107),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(108),
      Q => collect_bits(108),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(109),
      Q => collect_bits(109),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(10),
      Q => collect_bits(10),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(110),
      Q => collect_bits(110),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(111),
      Q => collect_bits(111),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(112),
      Q => collect_bits(112),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(113),
      Q => collect_bits(113),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(114),
      Q => collect_bits(114),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(115),
      Q => collect_bits(115),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(116),
      Q => collect_bits(116),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(117),
      Q => collect_bits(117),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(118),
      Q => collect_bits(118),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(119),
      Q => collect_bits(119),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(11),
      Q => collect_bits(11),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(120),
      Q => collect_bits(120),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(121),
      Q => collect_bits(121),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(122),
      Q => collect_bits(122),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(123),
      Q => collect_bits(123),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(124),
      Q => collect_bits(124),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(125),
      Q => collect_bits(125),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(126),
      Q => collect_bits(126),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(127),
      Q => collect_bits(127),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(12),
      Q => collect_bits(12),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(13),
      Q => collect_bits(13),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(14),
      Q => collect_bits(14),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(15),
      Q => collect_bits(15),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(16),
      Q => collect_bits(16),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(17),
      Q => collect_bits(17),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(18),
      Q => collect_bits(18),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(19),
      Q => collect_bits(19),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(1),
      Q => collect_bits(1),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(20),
      Q => collect_bits(20),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(21),
      Q => collect_bits(21),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(22),
      Q => collect_bits(22),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(23),
      Q => collect_bits(23),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(24),
      Q => collect_bits(24),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(25),
      Q => collect_bits(25),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(26),
      Q => collect_bits(26),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(27),
      Q => collect_bits(27),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(28),
      Q => collect_bits(28),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(29),
      Q => collect_bits(29),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(2),
      Q => collect_bits(2),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(30),
      Q => collect_bits(30),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(31),
      Q => collect_bits(31),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(32),
      Q => collect_bits(32),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(33),
      Q => collect_bits(33),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(34),
      Q => collect_bits(34),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(35),
      Q => collect_bits(35),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(36),
      Q => collect_bits(36),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(37),
      Q => collect_bits(37),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(38),
      Q => collect_bits(38),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(39),
      Q => collect_bits(39),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(3),
      Q => collect_bits(3),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(40),
      Q => collect_bits(40),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(41),
      Q => collect_bits(41),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(42),
      Q => collect_bits(42),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(43),
      Q => collect_bits(43),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(44),
      Q => collect_bits(44),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(45),
      Q => collect_bits(45),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(46),
      Q => collect_bits(46),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(47),
      Q => collect_bits(47),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(48),
      Q => collect_bits(48),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(49),
      Q => collect_bits(49),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(4),
      Q => collect_bits(4),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(50),
      Q => collect_bits(50),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(51),
      Q => collect_bits(51),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(52),
      Q => collect_bits(52),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(53),
      Q => collect_bits(53),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(54),
      Q => collect_bits(54),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(55),
      Q => collect_bits(55),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(56),
      Q => collect_bits(56),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(57),
      Q => collect_bits(57),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(58),
      Q => collect_bits(58),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(59),
      Q => collect_bits(59),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(5),
      Q => collect_bits(5),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(60),
      Q => collect_bits(60),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(61),
      Q => collect_bits(61),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(62),
      Q => collect_bits(62),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(63),
      Q => collect_bits(63),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(64),
      Q => collect_bits(64),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(65),
      Q => collect_bits(65),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(66),
      Q => collect_bits(66),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(67),
      Q => collect_bits(67),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(68),
      Q => collect_bits(68),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(69),
      Q => collect_bits(69),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(6),
      Q => collect_bits(6),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(70),
      Q => collect_bits(70),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(71),
      Q => collect_bits(71),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(72),
      Q => collect_bits(72),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(73),
      Q => collect_bits(73),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(74),
      Q => collect_bits(74),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(75),
      Q => collect_bits(75),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(76),
      Q => collect_bits(76),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(77),
      Q => collect_bits(77),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(78),
      Q => collect_bits(78),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(79),
      Q => collect_bits(79),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(7),
      Q => collect_bits(7),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(80),
      Q => collect_bits(80),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(81),
      Q => collect_bits(81),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(82),
      Q => collect_bits(82),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(83),
      Q => collect_bits(83),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(84),
      Q => collect_bits(84),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(85),
      Q => collect_bits(85),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(86),
      Q => collect_bits(86),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(87),
      Q => collect_bits(87),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(88),
      Q => collect_bits(88),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(89),
      Q => collect_bits(89),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(8),
      Q => collect_bits(8),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(90),
      Q => collect_bits(90),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(91),
      Q => collect_bits(91),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(92),
      Q => collect_bits(92),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(93),
      Q => collect_bits(93),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(94),
      Q => collect_bits(94),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(95),
      Q => collect_bits(95),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(96),
      Q => collect_bits(96),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(97),
      Q => collect_bits(97),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(98),
      Q => collect_bits(98),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(99),
      Q => collect_bits(99),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_bits_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_bits_next__255\(9),
      Q => collect_bits(9),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(0),
      O => \collect_count[0]_i_1_n_0\
    );
\collect_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(0),
      I2 => collect_count(1),
      O => \collect_count_next__15\(1)
    );
\collect_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(0),
      I2 => collect_count(1),
      I3 => collect_count(2),
      O => \collect_count_next__15\(2)
    );
\collect_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(1),
      I2 => collect_count(0),
      I3 => collect_count(2),
      I4 => collect_count(3),
      O => \collect_count_next__15\(3)
    );
\collect_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(2),
      I2 => collect_count(0),
      I3 => collect_count(1),
      I4 => collect_count(3),
      I5 => collect_count(4),
      O => \collect_count_next__15\(4)
    );
\collect_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(3),
      I2 => \collect_count[5]_i_2_n_0\,
      I3 => collect_count(2),
      I4 => collect_count(4),
      I5 => collect_count(5),
      O => \collect_count_next__15\(5)
    );
\collect_count[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => collect_count(1),
      I1 => collect_count(0),
      O => \collect_count[5]_i_2_n_0\
    );
\collect_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_count[7]_i_3_n_0\,
      I2 => collect_count(6),
      O => \collect_count_next__15\(6)
    );
\collect_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => frame_done,
      I1 => aresetn,
      O => \collect_count[7]_i_1_n_0\
    );
\collect_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => collect_count(7),
      I1 => collect_count(6),
      I2 => \collect_count[7]_i_3_n_0\,
      O => \collect_count_next__15\(7)
    );
\collect_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => collect_count(5),
      I1 => collect_count(3),
      I2 => collect_count(1),
      I3 => collect_count(0),
      I4 => collect_count(2),
      I5 => collect_count(4),
      O => \collect_count[7]_i_3_n_0\
    );
\collect_count[7]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => collect_count(7),
      I1 => collect_count(6),
      I2 => \collect_count[7]_i_3_n_0\,
      O => \collect_count[7]_rep__0_i_1_n_0\
    );
\collect_count[7]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => collect_count(7),
      I1 => collect_count(6),
      I2 => \collect_count[7]_i_3_n_0\,
      O => \collect_count[7]_rep__1_i_1_n_0\
    );
\collect_count[7]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => collect_count(7),
      I1 => collect_count(6),
      I2 => \collect_count[7]_i_3_n_0\,
      O => \collect_count[7]_rep_i_1_n_0\
    );
\collect_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count[0]_i_1_n_0\,
      Q => collect_count(0),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count_next__15\(1),
      Q => collect_count(1),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count_next__15\(2),
      Q => collect_count(2),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count_next__15\(3),
      Q => collect_count(3),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count_next__15\(4),
      Q => collect_count(4),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count_next__15\(5),
      Q => collect_count(5),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count_next__15\(6),
      Q => collect_count(6),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count_next__15\(7),
      Q => collect_count(7),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count_reg[7]_rep\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count[7]_rep_i_1_n_0\,
      Q => \collect_count_reg[7]_rep_n_0\,
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count_reg[7]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count[7]_rep__0_i_1_n_0\,
      Q => \collect_count_reg[7]_rep__0_n_0\,
      R => \collect_count[7]_i_1_n_0\
    );
\collect_count_reg[7]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_count[7]_rep__1_i_1_n_0\,
      Q => \collect_count_reg[7]_rep__1_n_0\,
      R => \collect_count[7]_i_1_n_0\
    );
\collect_drop_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \collect_drop_count[7]_i_3_n_0\,
      I1 => collect_count(7),
      I2 => collect_drop_count(0),
      O => \collect_drop_count_next__23\(0)
    );
\collect_drop_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => collect_drop_count(0),
      I1 => \collect_drop_count[7]_i_3_n_0\,
      I2 => collect_count(7),
      I3 => collect_drop_count(1),
      O => \collect_drop_count_next__23\(1)
    );
\collect_drop_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => collect_drop_count(1),
      I1 => collect_drop_count(0),
      I2 => \collect_drop_count[7]_i_3_n_0\,
      I3 => collect_count(7),
      I4 => collect_drop_count(2),
      O => \collect_drop_count_next__23\(2)
    );
\collect_drop_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => collect_drop_count(0),
      I1 => collect_drop_count(1),
      I2 => collect_drop_count(2),
      I3 => \collect_drop_count[7]_i_3_n_0\,
      I4 => collect_count(7),
      I5 => collect_drop_count(3),
      O => \collect_drop_count_next__23\(3)
    );
\collect_drop_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF20000000"
    )
        port map (
      I0 => collect_drop_count(2),
      I1 => \collect_drop_count[4]_i_2_n_0\,
      I2 => collect_drop_count(3),
      I3 => \collect_drop_count[7]_i_3_n_0\,
      I4 => collect_count(7),
      I5 => collect_drop_count(4),
      O => \collect_drop_count_next__23\(4)
    );
\collect_drop_count[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => collect_drop_count(0),
      I1 => collect_drop_count(1),
      O => \collect_drop_count[4]_i_2_n_0\
    );
\collect_drop_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \collect_drop_count[5]_i_2_n_0\,
      I1 => \collect_drop_count[7]_i_3_n_0\,
      I2 => collect_count(7),
      I3 => collect_drop_count(5),
      O => \collect_drop_count_next__23\(5)
    );
\collect_drop_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => collect_drop_count(4),
      I1 => collect_drop_count(2),
      I2 => collect_drop_count(1),
      I3 => collect_drop_count(0),
      I4 => collect_drop_count(3),
      O => \collect_drop_count[5]_i_2_n_0\
    );
\collect_drop_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \collect_drop_count[7]_i_2_n_0\,
      I1 => \collect_drop_count[7]_i_3_n_0\,
      I2 => collect_count(7),
      I3 => collect_drop_count(6),
      O => \collect_drop_count_next__23\(6)
    );
\collect_drop_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \collect_drop_count[7]_i_2_n_0\,
      I1 => collect_drop_count(6),
      I2 => \collect_drop_count[7]_i_3_n_0\,
      I3 => collect_count(7),
      I4 => collect_drop_count(7),
      O => \collect_drop_count_next__23\(7)
    );
\collect_drop_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => collect_drop_count(5),
      I1 => collect_drop_count(3),
      I2 => collect_drop_count(0),
      I3 => collect_drop_count(1),
      I4 => collect_drop_count(2),
      I5 => collect_drop_count(4),
      O => \collect_drop_count[7]_i_2_n_0\
    );
\collect_drop_count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => collect_drop_count(2),
      I1 => collect_drop_count(3),
      I2 => collect_drop_count(0),
      I3 => collect_drop_count(1),
      I4 => \collect_drop_count[7]_i_4_n_0\,
      O => \collect_drop_count[7]_i_3_n_0\
    );
\collect_drop_count[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => collect_drop_count(5),
      I1 => collect_drop_count(4),
      I2 => collect_drop_count(6),
      I3 => collect_drop_count(7),
      O => \collect_drop_count[7]_i_4_n_0\
    );
\collect_drop_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_drop_count_next__23\(0),
      Q => collect_drop_count(0),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_drop_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_drop_count_next__23\(1),
      Q => collect_drop_count(1),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_drop_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_drop_count_next__23\(2),
      Q => collect_drop_count(2),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_drop_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_drop_count_next__23\(3),
      Q => collect_drop_count(3),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_drop_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_drop_count_next__23\(4),
      Q => collect_drop_count(4),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_drop_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_drop_count_next__23\(5),
      Q => collect_drop_count(5),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_drop_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_drop_count_next__23\(6),
      Q => collect_drop_count(6),
      R => \collect_count[7]_i_1_n_0\
    );
\collect_drop_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => \collect_drop_count_next__23\(7),
      Q => collect_drop_count(7),
      R => \collect_count[7]_i_1_n_0\
    );
collect_overflow_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => collect_count(7),
      I1 => collect_overflow,
      O => collect_overflow_i_1_n_0
    );
collect_overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bpsk_bit_valid,
      D => collect_overflow_i_1_n_0,
      Q => collect_overflow,
      R => \collect_count[7]_i_1_n_0\
    );
commit_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDC0"
    )
        port map (
      I0 => frame_done,
      I1 => commit,
      I2 => \^busy_reg_0\,
      I3 => busy7_out,
      O => commit_i_1_n_0
    );
commit_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => commit_i_1_n_0,
      Q => commit,
      R => clear
    );
\hist_freq_rd_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008080000000"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \hist_mag_rd_addr[3]_INST_0_i_1_n_0\,
      I2 => \word_index_reg__0\(0),
      I3 => \word_index_reg__0\(3),
      I4 => \word_index_reg__0\(4),
      I5 => \word_index_reg__0\(5),
      O => hist_freq_rd_addr(0)
    );
\hist_freq_rd_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008080000000"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \hist_mag_rd_addr[3]_INST_0_i_1_n_0\,
      I2 => \word_index_reg__0\(1),
      I3 => \word_index_reg__0\(3),
      I4 => \word_index_reg__0\(4),
      I5 => \word_index_reg__0\(5),
      O => hist_freq_rd_addr(1)
    );
\hist_freq_rd_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008080000000"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \hist_mag_rd_addr[3]_INST_0_i_1_n_0\,
      I2 => \word_index_reg__0\(2),
      I3 => \word_index_reg__0\(3),
      I4 => \word_index_reg__0\(4),
      I5 => \word_index_reg__0\(5),
      O => hist_freq_rd_addr(2)
    );
\hist_freq_rd_addr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \hist_mag_rd_addr[3]_INST_0_i_1_n_0\,
      I2 => \word_index_reg__0\(3),
      I3 => \word_index_reg__0\(4),
      I4 => \word_index_reg__0\(5),
      O => hist_freq_rd_addr(3)
    );
\hist_mag_rd_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000088000000000"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \hist_mag_rd_addr[3]_INST_0_i_1_n_0\,
      I2 => \word_index_reg__0\(3),
      I3 => \word_index_reg__0\(4),
      I4 => \word_index_reg__0\(5),
      I5 => \word_index_reg__0\(0),
      O => hist_mag_rd_addr(0)
    );
\hist_mag_rd_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000088000000000"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \hist_mag_rd_addr[3]_INST_0_i_1_n_0\,
      I2 => \word_index_reg__0\(3),
      I3 => \word_index_reg__0\(4),
      I4 => \word_index_reg__0\(5),
      I5 => \word_index_reg__0\(1),
      O => hist_mag_rd_addr(1)
    );
\hist_mag_rd_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000088000000000"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \hist_mag_rd_addr[3]_INST_0_i_1_n_0\,
      I2 => \word_index_reg__0\(3),
      I3 => \word_index_reg__0\(4),
      I4 => \word_index_reg__0\(5),
      I5 => \word_index_reg__0\(2),
      O => hist_mag_rd_addr(2)
    );
\hist_mag_rd_addr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \hist_mag_rd_addr[3]_INST_0_i_1_n_0\,
      I2 => \word_index_reg__0\(4),
      I3 => \word_index_reg__0\(5),
      I4 => \word_index_reg__0\(3),
      O => hist_mag_rd_addr(3)
    );
\hist_mag_rd_addr[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAFFFFFFFFAAAB"
    )
        port map (
      I0 => \word_index_reg__0\(4),
      I1 => \word_index_reg__0\(1),
      I2 => \word_index_reg__0\(0),
      I3 => \word_index_reg__0\(2),
      I4 => \word_index_reg__0\(5),
      I5 => \word_index_reg__0\(3),
      O => \hist_mag_rd_addr[3]_INST_0_i_1_n_0\
    );
\sequence[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => commit,
      I1 => \^busy_reg_0\,
      O => \sequence[0]_i_1_n_0\
    );
\sequence[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sequence_reg(0),
      O => \sequence[0]_i_3_n_0\
    );
\sequence_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[0]_i_2_n_7\,
      Q => sequence_reg(0),
      R => clear
    );
\sequence_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sequence_reg[0]_i_2_n_0\,
      CO(2) => \sequence_reg[0]_i_2_n_1\,
      CO(1) => \sequence_reg[0]_i_2_n_2\,
      CO(0) => \sequence_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sequence_reg[0]_i_2_n_4\,
      O(2) => \sequence_reg[0]_i_2_n_5\,
      O(1) => \sequence_reg[0]_i_2_n_6\,
      O(0) => \sequence_reg[0]_i_2_n_7\,
      S(3 downto 1) => sequence_reg(3 downto 1),
      S(0) => \sequence[0]_i_3_n_0\
    );
\sequence_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[8]_i_1_n_5\,
      Q => sequence_reg(10),
      R => clear
    );
\sequence_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[8]_i_1_n_4\,
      Q => sequence_reg(11),
      R => clear
    );
\sequence_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[12]_i_1_n_7\,
      Q => sequence_reg(12),
      R => clear
    );
\sequence_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_reg[8]_i_1_n_0\,
      CO(3) => \sequence_reg[12]_i_1_n_0\,
      CO(2) => \sequence_reg[12]_i_1_n_1\,
      CO(1) => \sequence_reg[12]_i_1_n_2\,
      CO(0) => \sequence_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_reg[12]_i_1_n_4\,
      O(2) => \sequence_reg[12]_i_1_n_5\,
      O(1) => \sequence_reg[12]_i_1_n_6\,
      O(0) => \sequence_reg[12]_i_1_n_7\,
      S(3 downto 0) => sequence_reg(15 downto 12)
    );
\sequence_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[12]_i_1_n_6\,
      Q => sequence_reg(13),
      R => clear
    );
\sequence_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[12]_i_1_n_5\,
      Q => sequence_reg(14),
      R => clear
    );
\sequence_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[12]_i_1_n_4\,
      Q => sequence_reg(15),
      R => clear
    );
\sequence_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[16]_i_1_n_7\,
      Q => sequence_reg(16),
      R => clear
    );
\sequence_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_reg[12]_i_1_n_0\,
      CO(3) => \sequence_reg[16]_i_1_n_0\,
      CO(2) => \sequence_reg[16]_i_1_n_1\,
      CO(1) => \sequence_reg[16]_i_1_n_2\,
      CO(0) => \sequence_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_reg[16]_i_1_n_4\,
      O(2) => \sequence_reg[16]_i_1_n_5\,
      O(1) => \sequence_reg[16]_i_1_n_6\,
      O(0) => \sequence_reg[16]_i_1_n_7\,
      S(3 downto 0) => sequence_reg(19 downto 16)
    );
\sequence_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[16]_i_1_n_6\,
      Q => sequence_reg(17),
      R => clear
    );
\sequence_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[16]_i_1_n_5\,
      Q => sequence_reg(18),
      R => clear
    );
\sequence_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[16]_i_1_n_4\,
      Q => sequence_reg(19),
      R => clear
    );
\sequence_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[0]_i_2_n_6\,
      Q => sequence_reg(1),
      R => clear
    );
\sequence_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[20]_i_1_n_7\,
      Q => sequence_reg(20),
      R => clear
    );
\sequence_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_reg[16]_i_1_n_0\,
      CO(3) => \sequence_reg[20]_i_1_n_0\,
      CO(2) => \sequence_reg[20]_i_1_n_1\,
      CO(1) => \sequence_reg[20]_i_1_n_2\,
      CO(0) => \sequence_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_reg[20]_i_1_n_4\,
      O(2) => \sequence_reg[20]_i_1_n_5\,
      O(1) => \sequence_reg[20]_i_1_n_6\,
      O(0) => \sequence_reg[20]_i_1_n_7\,
      S(3 downto 0) => sequence_reg(23 downto 20)
    );
\sequence_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[20]_i_1_n_6\,
      Q => sequence_reg(21),
      R => clear
    );
\sequence_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[20]_i_1_n_5\,
      Q => sequence_reg(22),
      R => clear
    );
\sequence_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[20]_i_1_n_4\,
      Q => sequence_reg(23),
      R => clear
    );
\sequence_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[24]_i_1_n_7\,
      Q => sequence_reg(24),
      R => clear
    );
\sequence_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_reg[20]_i_1_n_0\,
      CO(3) => \sequence_reg[24]_i_1_n_0\,
      CO(2) => \sequence_reg[24]_i_1_n_1\,
      CO(1) => \sequence_reg[24]_i_1_n_2\,
      CO(0) => \sequence_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_reg[24]_i_1_n_4\,
      O(2) => \sequence_reg[24]_i_1_n_5\,
      O(1) => \sequence_reg[24]_i_1_n_6\,
      O(0) => \sequence_reg[24]_i_1_n_7\,
      S(3 downto 0) => sequence_reg(27 downto 24)
    );
\sequence_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[24]_i_1_n_6\,
      Q => sequence_reg(25),
      R => clear
    );
\sequence_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[24]_i_1_n_5\,
      Q => sequence_reg(26),
      R => clear
    );
\sequence_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[24]_i_1_n_4\,
      Q => sequence_reg(27),
      R => clear
    );
\sequence_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[28]_i_1_n_7\,
      Q => sequence_reg(28),
      R => clear
    );
\sequence_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_reg[24]_i_1_n_0\,
      CO(3) => \NLW_sequence_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sequence_reg[28]_i_1_n_1\,
      CO(1) => \sequence_reg[28]_i_1_n_2\,
      CO(0) => \sequence_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_reg[28]_i_1_n_4\,
      O(2) => \sequence_reg[28]_i_1_n_5\,
      O(1) => \sequence_reg[28]_i_1_n_6\,
      O(0) => \sequence_reg[28]_i_1_n_7\,
      S(3 downto 0) => sequence_reg(31 downto 28)
    );
\sequence_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[28]_i_1_n_6\,
      Q => sequence_reg(29),
      R => clear
    );
\sequence_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[0]_i_2_n_5\,
      Q => sequence_reg(2),
      R => clear
    );
\sequence_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[28]_i_1_n_5\,
      Q => sequence_reg(30),
      R => clear
    );
\sequence_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[28]_i_1_n_4\,
      Q => sequence_reg(31),
      R => clear
    );
\sequence_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[0]_i_2_n_4\,
      Q => sequence_reg(3),
      R => clear
    );
\sequence_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[4]_i_1_n_7\,
      Q => sequence_reg(4),
      R => clear
    );
\sequence_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_reg[0]_i_2_n_0\,
      CO(3) => \sequence_reg[4]_i_1_n_0\,
      CO(2) => \sequence_reg[4]_i_1_n_1\,
      CO(1) => \sequence_reg[4]_i_1_n_2\,
      CO(0) => \sequence_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_reg[4]_i_1_n_4\,
      O(2) => \sequence_reg[4]_i_1_n_5\,
      O(1) => \sequence_reg[4]_i_1_n_6\,
      O(0) => \sequence_reg[4]_i_1_n_7\,
      S(3 downto 0) => sequence_reg(7 downto 4)
    );
\sequence_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[4]_i_1_n_6\,
      Q => sequence_reg(5),
      R => clear
    );
\sequence_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[4]_i_1_n_5\,
      Q => sequence_reg(6),
      R => clear
    );
\sequence_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[4]_i_1_n_4\,
      Q => sequence_reg(7),
      R => clear
    );
\sequence_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[8]_i_1_n_7\,
      Q => sequence_reg(8),
      R => clear
    );
\sequence_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_reg[4]_i_1_n_0\,
      CO(3) => \sequence_reg[8]_i_1_n_0\,
      CO(2) => \sequence_reg[8]_i_1_n_1\,
      CO(1) => \sequence_reg[8]_i_1_n_2\,
      CO(0) => \sequence_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sequence_reg[8]_i_1_n_4\,
      O(2) => \sequence_reg[8]_i_1_n_5\,
      O(1) => \sequence_reg[8]_i_1_n_6\,
      O(0) => \sequence_reg[8]_i_1_n_7\,
      S(3 downto 0) => sequence_reg(11 downto 8)
    );
\sequence_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \sequence[0]_i_1_n_0\,
      D => \sequence_reg[8]_i_1_n_6\,
      Q => sequence_reg(9),
      R => clear
    );
\snap_bit_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => bpsk_bit_valid,
      I2 => collect_count(0),
      O => collect_count_next(0)
    );
\snap_bit_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(0),
      I2 => bpsk_bit_valid,
      I3 => collect_count(1),
      O => collect_count_next(1)
    );
\snap_bit_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(0),
      I2 => collect_count(1),
      I3 => bpsk_bit_valid,
      I4 => collect_count(2),
      O => collect_count_next(2)
    );
\snap_bit_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(1),
      I2 => collect_count(0),
      I3 => collect_count(2),
      I4 => bpsk_bit_valid,
      I5 => collect_count(3),
      O => collect_count_next(3)
    );
\snap_bit_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => collect_count(2),
      I2 => \collect_count[5]_i_2_n_0\,
      I3 => collect_count(3),
      I4 => bpsk_bit_valid,
      I5 => collect_count(4),
      O => collect_count_next(4)
    );
\snap_bit_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \snap_bit_count[5]_i_2_n_0\,
      I2 => bpsk_bit_valid,
      I3 => collect_count(5),
      O => collect_count_next(5)
    );
\snap_bit_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => collect_count(4),
      I1 => collect_count(2),
      I2 => collect_count(0),
      I3 => collect_count(1),
      I4 => collect_count(3),
      O => \snap_bit_count[5]_i_2_n_0\
    );
\snap_bit_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_count[7]_i_3_n_0\,
      I2 => bpsk_bit_valid,
      I3 => collect_count(6),
      O => collect_count_next(6)
    );
\snap_bit_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => collect_count(6),
      I1 => \collect_count[7]_i_3_n_0\,
      I2 => bpsk_bit_valid,
      I3 => collect_count(7),
      O => collect_count_next(7)
    );
\snap_bit_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_count_next(0),
      Q => snap_bit_count(0),
      R => clear
    );
\snap_bit_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_count_next(1),
      Q => snap_bit_count(1),
      R => clear
    );
\snap_bit_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_count_next(2),
      Q => snap_bit_count(2),
      R => clear
    );
\snap_bit_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_count_next(3),
      Q => snap_bit_count(3),
      R => clear
    );
\snap_bit_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_count_next(4),
      Q => snap_bit_count(4),
      R => clear
    );
\snap_bit_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_count_next(5),
      Q => snap_bit_count(5),
      R => clear
    );
\snap_bit_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_count_next(6),
      Q => snap_bit_count(6),
      R => clear
    );
\snap_bit_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_count_next(7),
      Q => snap_bit_count(7),
      R => clear
    );
snap_bit_overflow_sticky_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => bit_overflow_sticky,
      I1 => collect_overflow,
      I2 => bpsk_bit_valid,
      I3 => collect_count(7),
      O => snap_bit_overflow_sticky_i_1_n_0
    );
snap_bit_overflow_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snap_bit_overflow_sticky_i_1_n_0,
      Q => snap_bit_overflow_sticky,
      R => clear
    );
\snap_bits[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[112]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(0),
      O => collect_bits_next(0)
    );
\snap_bits[100]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[116]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(100),
      O => collect_bits_next(100)
    );
\snap_bits[101]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[117]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(101),
      O => collect_bits_next(101)
    );
\snap_bits[102]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[118]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(102),
      O => collect_bits_next(102)
    );
\snap_bits[103]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[119]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(103),
      O => collect_bits_next(103)
    );
\snap_bits[104]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[120]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(104),
      O => collect_bits_next(104)
    );
\snap_bits[105]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[121]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(105),
      O => collect_bits_next(105)
    );
\snap_bits[106]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[122]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(106),
      O => collect_bits_next(106)
    );
\snap_bits[107]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[123]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(107),
      O => collect_bits_next(107)
    );
\snap_bits[108]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[124]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(108),
      O => collect_bits_next(108)
    );
\snap_bits[109]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[125]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(109),
      O => collect_bits_next(109)
    );
\snap_bits[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[122]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(10),
      O => collect_bits_next(10)
    );
\snap_bits[110]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[126]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(110),
      O => collect_bits_next(110)
    );
\snap_bits[111]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[127]_i_3_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(111),
      O => collect_bits_next(111)
    );
\snap_bits[112]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[112]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(112),
      O => collect_bits_next(112)
    );
\snap_bits[113]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[113]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(113),
      O => collect_bits_next(113)
    );
\snap_bits[114]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[114]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(114),
      O => collect_bits_next(114)
    );
\snap_bits[115]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[115]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(115),
      O => collect_bits_next(115)
    );
\snap_bits[116]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[116]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(116),
      O => collect_bits_next(116)
    );
\snap_bits[117]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[117]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(117),
      O => collect_bits_next(117)
    );
\snap_bits[118]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[118]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(118),
      O => collect_bits_next(118)
    );
\snap_bits[119]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[119]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(119),
      O => collect_bits_next(119)
    );
\snap_bits[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[123]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(11),
      O => collect_bits_next(11)
    );
\snap_bits[120]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[120]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(120),
      O => collect_bits_next(120)
    );
\snap_bits[121]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[121]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(121),
      O => collect_bits_next(121)
    );
\snap_bits[122]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[122]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(122),
      O => collect_bits_next(122)
    );
\snap_bits[123]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[123]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(123),
      O => collect_bits_next(123)
    );
\snap_bits[124]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[124]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(124),
      O => collect_bits_next(124)
    );
\snap_bits[125]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[125]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(125),
      O => collect_bits_next(125)
    );
\snap_bits[126]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[126]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(126),
      O => collect_bits_next(126)
    );
\snap_bits[127]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[127]_i_2_n_0\,
      I2 => \collect_bits[127]_i_3_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(127),
      O => collect_bits_next(127)
    );
\snap_bits[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[124]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(12),
      O => collect_bits_next(12)
    );
\snap_bits[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[125]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(13),
      O => collect_bits_next(13)
    );
\snap_bits[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[126]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(14),
      O => collect_bits_next(14)
    );
\snap_bits[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[127]_i_3_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(15),
      O => collect_bits_next(15)
    );
\snap_bits[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[112]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(16),
      O => collect_bits_next(16)
    );
\snap_bits[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[113]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(17),
      O => collect_bits_next(17)
    );
\snap_bits[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[114]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(18),
      O => collect_bits_next(18)
    );
\snap_bits[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[115]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(19),
      O => collect_bits_next(19)
    );
\snap_bits[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[113]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(1),
      O => collect_bits_next(1)
    );
\snap_bits[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[116]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(20),
      O => collect_bits_next(20)
    );
\snap_bits[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[117]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(21),
      O => collect_bits_next(21)
    );
\snap_bits[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[118]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(22),
      O => collect_bits_next(22)
    );
\snap_bits[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[119]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(23),
      O => collect_bits_next(23)
    );
\snap_bits[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[120]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(24),
      O => collect_bits_next(24)
    );
\snap_bits[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[121]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(25),
      O => collect_bits_next(25)
    );
\snap_bits[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[122]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(26),
      O => collect_bits_next(26)
    );
\snap_bits[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[123]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(27),
      O => collect_bits_next(27)
    );
\snap_bits[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[124]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(28),
      O => collect_bits_next(28)
    );
\snap_bits[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[125]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(29),
      O => collect_bits_next(29)
    );
\snap_bits[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[114]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(2),
      O => collect_bits_next(2)
    );
\snap_bits[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[126]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(30),
      O => collect_bits_next(30)
    );
\snap_bits[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[31]_i_2_n_0\,
      I2 => \collect_bits[127]_i_3_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(31),
      O => collect_bits_next(31)
    );
\snap_bits[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[112]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(32),
      O => collect_bits_next(32)
    );
\snap_bits[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[113]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(33),
      O => collect_bits_next(33)
    );
\snap_bits[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[114]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(34),
      O => collect_bits_next(34)
    );
\snap_bits[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[115]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(35),
      O => collect_bits_next(35)
    );
\snap_bits[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[116]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(36),
      O => collect_bits_next(36)
    );
\snap_bits[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[117]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(37),
      O => collect_bits_next(37)
    );
\snap_bits[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[118]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(38),
      O => collect_bits_next(38)
    );
\snap_bits[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[119]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(39),
      O => collect_bits_next(39)
    );
\snap_bits[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[115]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(3),
      O => collect_bits_next(3)
    );
\snap_bits[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[120]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(40),
      O => collect_bits_next(40)
    );
\snap_bits[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[121]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(41),
      O => collect_bits_next(41)
    );
\snap_bits[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[122]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(42),
      O => collect_bits_next(42)
    );
\snap_bits[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[123]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(43),
      O => collect_bits_next(43)
    );
\snap_bits[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[124]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(44),
      O => collect_bits_next(44)
    );
\snap_bits[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[125]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(45),
      O => collect_bits_next(45)
    );
\snap_bits[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[126]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(46),
      O => collect_bits_next(46)
    );
\snap_bits[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[47]_i_2_n_0\,
      I2 => \collect_bits[127]_i_3_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(47),
      O => collect_bits_next(47)
    );
\snap_bits[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[112]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(48),
      O => collect_bits_next(48)
    );
\snap_bits[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[113]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(49),
      O => collect_bits_next(49)
    );
\snap_bits[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[116]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(4),
      O => collect_bits_next(4)
    );
\snap_bits[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[114]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(50),
      O => collect_bits_next(50)
    );
\snap_bits[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[115]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(51),
      O => collect_bits_next(51)
    );
\snap_bits[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[116]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(52),
      O => collect_bits_next(52)
    );
\snap_bits[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[117]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(53),
      O => collect_bits_next(53)
    );
\snap_bits[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[118]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(54),
      O => collect_bits_next(54)
    );
\snap_bits[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[119]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(55),
      O => collect_bits_next(55)
    );
\snap_bits[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[120]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(56),
      O => collect_bits_next(56)
    );
\snap_bits[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[121]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(57),
      O => collect_bits_next(57)
    );
\snap_bits[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[122]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(58),
      O => collect_bits_next(58)
    );
\snap_bits[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[123]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(59),
      O => collect_bits_next(59)
    );
\snap_bits[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[117]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(5),
      O => collect_bits_next(5)
    );
\snap_bits[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[124]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(60),
      O => collect_bits_next(60)
    );
\snap_bits[61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[125]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(61),
      O => collect_bits_next(61)
    );
\snap_bits[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[126]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(62),
      O => collect_bits_next(62)
    );
\snap_bits[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[63]_i_2_n_0\,
      I2 => \collect_bits[127]_i_3_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(63),
      O => collect_bits_next(63)
    );
\snap_bits[64]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[112]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(64),
      O => collect_bits_next(64)
    );
\snap_bits[65]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[113]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(65),
      O => collect_bits_next(65)
    );
\snap_bits[66]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[114]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(66),
      O => collect_bits_next(66)
    );
\snap_bits[67]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[115]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(67),
      O => collect_bits_next(67)
    );
\snap_bits[68]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[116]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(68),
      O => collect_bits_next(68)
    );
\snap_bits[69]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[117]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(69),
      O => collect_bits_next(69)
    );
\snap_bits[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[118]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(6),
      O => collect_bits_next(6)
    );
\snap_bits[70]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[118]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(70),
      O => collect_bits_next(70)
    );
\snap_bits[71]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[119]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(71),
      O => collect_bits_next(71)
    );
\snap_bits[72]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[120]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(72),
      O => collect_bits_next(72)
    );
\snap_bits[73]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[121]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(73),
      O => collect_bits_next(73)
    );
\snap_bits[74]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[122]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(74),
      O => collect_bits_next(74)
    );
\snap_bits[75]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[123]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(75),
      O => collect_bits_next(75)
    );
\snap_bits[76]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[124]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(76),
      O => collect_bits_next(76)
    );
\snap_bits[77]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[125]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(77),
      O => collect_bits_next(77)
    );
\snap_bits[78]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[126]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(78),
      O => collect_bits_next(78)
    );
\snap_bits[79]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[79]_i_2_n_0\,
      I2 => \collect_bits[127]_i_3_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(79),
      O => collect_bits_next(79)
    );
\snap_bits[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[119]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(7),
      O => collect_bits_next(7)
    );
\snap_bits[80]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[112]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(80),
      O => collect_bits_next(80)
    );
\snap_bits[81]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[113]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(81),
      O => collect_bits_next(81)
    );
\snap_bits[82]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[114]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(82),
      O => collect_bits_next(82)
    );
\snap_bits[83]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[115]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(83),
      O => collect_bits_next(83)
    );
\snap_bits[84]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[116]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(84),
      O => collect_bits_next(84)
    );
\snap_bits[85]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[117]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(85),
      O => collect_bits_next(85)
    );
\snap_bits[86]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[118]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(86),
      O => collect_bits_next(86)
    );
\snap_bits[87]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[119]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(87),
      O => collect_bits_next(87)
    );
\snap_bits[88]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__0_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[120]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(88),
      O => collect_bits_next(88)
    );
\snap_bits[89]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[121]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(89),
      O => collect_bits_next(89)
    );
\snap_bits[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[120]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(8),
      O => collect_bits_next(8)
    );
\snap_bits[90]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[122]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(90),
      O => collect_bits_next(90)
    );
\snap_bits[91]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[123]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(91),
      O => collect_bits_next(91)
    );
\snap_bits[92]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[124]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(92),
      O => collect_bits_next(92)
    );
\snap_bits[93]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[125]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(93),
      O => collect_bits_next(93)
    );
\snap_bits[94]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[126]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(94),
      O => collect_bits_next(94)
    );
\snap_bits[95]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[95]_i_2_n_0\,
      I2 => \collect_bits[127]_i_3_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(95),
      O => collect_bits_next(95)
    );
\snap_bits[96]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[112]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(96),
      O => collect_bits_next(96)
    );
\snap_bits[97]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[113]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(97),
      O => collect_bits_next(97)
    );
\snap_bits[98]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[114]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(98),
      O => collect_bits_next(98)
    );
\snap_bits[99]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep_n_0\,
      I1 => \collect_bits[111]_i_2_n_0\,
      I2 => \collect_bits[115]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(99),
      O => collect_bits_next(99)
    );
\snap_bits[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF01000000"
    )
        port map (
      I0 => \collect_count_reg[7]_rep__1_n_0\,
      I1 => \collect_bits[15]_i_2_n_0\,
      I2 => \collect_bits[121]_i_2_n_0\,
      I3 => bpsk_bit_data,
      I4 => bpsk_bit_valid,
      I5 => collect_bits(9),
      O => collect_bits_next(9)
    );
\snap_bits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(0),
      Q => \snap_bits_reg_n_0_[0]\,
      R => clear
    );
\snap_bits_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(100),
      Q => data12(4),
      R => clear
    );
\snap_bits_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(101),
      Q => data12(5),
      R => clear
    );
\snap_bits_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(102),
      Q => data12(6),
      R => clear
    );
\snap_bits_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(103),
      Q => data12(7),
      R => clear
    );
\snap_bits_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(104),
      Q => data12(8),
      R => clear
    );
\snap_bits_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(105),
      Q => data12(9),
      R => clear
    );
\snap_bits_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(106),
      Q => data12(10),
      R => clear
    );
\snap_bits_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(107),
      Q => data12(11),
      R => clear
    );
\snap_bits_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(108),
      Q => data12(12),
      R => clear
    );
\snap_bits_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(109),
      Q => data12(13),
      R => clear
    );
\snap_bits_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(10),
      Q => \snap_bits_reg_n_0_[10]\,
      R => clear
    );
\snap_bits_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(110),
      Q => data12(14),
      R => clear
    );
\snap_bits_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(111),
      Q => data12(15),
      R => clear
    );
\snap_bits_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(112),
      Q => data12(16),
      R => clear
    );
\snap_bits_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(113),
      Q => data12(17),
      R => clear
    );
\snap_bits_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(114),
      Q => data12(18),
      R => clear
    );
\snap_bits_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(115),
      Q => data12(19),
      R => clear
    );
\snap_bits_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(116),
      Q => data12(20),
      R => clear
    );
\snap_bits_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(117),
      Q => data12(21),
      R => clear
    );
\snap_bits_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(118),
      Q => data12(22),
      R => clear
    );
\snap_bits_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(119),
      Q => data12(23),
      R => clear
    );
\snap_bits_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(11),
      Q => \snap_bits_reg_n_0_[11]\,
      R => clear
    );
\snap_bits_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(120),
      Q => data12(24),
      R => clear
    );
\snap_bits_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(121),
      Q => data12(25),
      R => clear
    );
\snap_bits_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(122),
      Q => data12(26),
      R => clear
    );
\snap_bits_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(123),
      Q => data12(27),
      R => clear
    );
\snap_bits_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(124),
      Q => data12(28),
      R => clear
    );
\snap_bits_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(125),
      Q => data12(29),
      R => clear
    );
\snap_bits_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(126),
      Q => data12(30),
      R => clear
    );
\snap_bits_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(127),
      Q => data12(31),
      R => clear
    );
\snap_bits_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(12),
      Q => \snap_bits_reg_n_0_[12]\,
      R => clear
    );
\snap_bits_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(13),
      Q => \snap_bits_reg_n_0_[13]\,
      R => clear
    );
\snap_bits_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(14),
      Q => \snap_bits_reg_n_0_[14]\,
      R => clear
    );
\snap_bits_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(15),
      Q => \snap_bits_reg_n_0_[15]\,
      R => clear
    );
\snap_bits_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(16),
      Q => \snap_bits_reg_n_0_[16]\,
      R => clear
    );
\snap_bits_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(17),
      Q => \snap_bits_reg_n_0_[17]\,
      R => clear
    );
\snap_bits_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(18),
      Q => \snap_bits_reg_n_0_[18]\,
      R => clear
    );
\snap_bits_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(19),
      Q => \snap_bits_reg_n_0_[19]\,
      R => clear
    );
\snap_bits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(1),
      Q => \snap_bits_reg_n_0_[1]\,
      R => clear
    );
\snap_bits_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(20),
      Q => \snap_bits_reg_n_0_[20]\,
      R => clear
    );
\snap_bits_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(21),
      Q => \snap_bits_reg_n_0_[21]\,
      R => clear
    );
\snap_bits_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(22),
      Q => \snap_bits_reg_n_0_[22]\,
      R => clear
    );
\snap_bits_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(23),
      Q => \snap_bits_reg_n_0_[23]\,
      R => clear
    );
\snap_bits_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(24),
      Q => \snap_bits_reg_n_0_[24]\,
      R => clear
    );
\snap_bits_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(25),
      Q => \snap_bits_reg_n_0_[25]\,
      R => clear
    );
\snap_bits_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(26),
      Q => \snap_bits_reg_n_0_[26]\,
      R => clear
    );
\snap_bits_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(27),
      Q => \snap_bits_reg_n_0_[27]\,
      R => clear
    );
\snap_bits_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(28),
      Q => \snap_bits_reg_n_0_[28]\,
      R => clear
    );
\snap_bits_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(29),
      Q => \snap_bits_reg_n_0_[29]\,
      R => clear
    );
\snap_bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(2),
      Q => \snap_bits_reg_n_0_[2]\,
      R => clear
    );
\snap_bits_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(30),
      Q => \snap_bits_reg_n_0_[30]\,
      R => clear
    );
\snap_bits_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(31),
      Q => \snap_bits_reg_n_0_[31]\,
      R => clear
    );
\snap_bits_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(32),
      Q => data10(0),
      R => clear
    );
\snap_bits_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(33),
      Q => data10(1),
      R => clear
    );
\snap_bits_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(34),
      Q => data10(2),
      R => clear
    );
\snap_bits_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(35),
      Q => data10(3),
      R => clear
    );
\snap_bits_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(36),
      Q => data10(4),
      R => clear
    );
\snap_bits_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(37),
      Q => data10(5),
      R => clear
    );
\snap_bits_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(38),
      Q => data10(6),
      R => clear
    );
\snap_bits_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(39),
      Q => data10(7),
      R => clear
    );
\snap_bits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(3),
      Q => \snap_bits_reg_n_0_[3]\,
      R => clear
    );
\snap_bits_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(40),
      Q => data10(8),
      R => clear
    );
\snap_bits_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(41),
      Q => data10(9),
      R => clear
    );
\snap_bits_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(42),
      Q => data10(10),
      R => clear
    );
\snap_bits_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(43),
      Q => data10(11),
      R => clear
    );
\snap_bits_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(44),
      Q => data10(12),
      R => clear
    );
\snap_bits_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(45),
      Q => data10(13),
      R => clear
    );
\snap_bits_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(46),
      Q => data10(14),
      R => clear
    );
\snap_bits_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(47),
      Q => data10(15),
      R => clear
    );
\snap_bits_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(48),
      Q => data10(16),
      R => clear
    );
\snap_bits_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(49),
      Q => data10(17),
      R => clear
    );
\snap_bits_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(4),
      Q => \snap_bits_reg_n_0_[4]\,
      R => clear
    );
\snap_bits_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(50),
      Q => data10(18),
      R => clear
    );
\snap_bits_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(51),
      Q => data10(19),
      R => clear
    );
\snap_bits_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(52),
      Q => data10(20),
      R => clear
    );
\snap_bits_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(53),
      Q => data10(21),
      R => clear
    );
\snap_bits_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(54),
      Q => data10(22),
      R => clear
    );
\snap_bits_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(55),
      Q => data10(23),
      R => clear
    );
\snap_bits_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(56),
      Q => data10(24),
      R => clear
    );
\snap_bits_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(57),
      Q => data10(25),
      R => clear
    );
\snap_bits_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(58),
      Q => data10(26),
      R => clear
    );
\snap_bits_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(59),
      Q => data10(27),
      R => clear
    );
\snap_bits_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(5),
      Q => \snap_bits_reg_n_0_[5]\,
      R => clear
    );
\snap_bits_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(60),
      Q => data10(28),
      R => clear
    );
\snap_bits_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(61),
      Q => data10(29),
      R => clear
    );
\snap_bits_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(62),
      Q => data10(30),
      R => clear
    );
\snap_bits_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(63),
      Q => data10(31),
      R => clear
    );
\snap_bits_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(64),
      Q => data11(0),
      R => clear
    );
\snap_bits_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(65),
      Q => data11(1),
      R => clear
    );
\snap_bits_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(66),
      Q => data11(2),
      R => clear
    );
\snap_bits_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(67),
      Q => data11(3),
      R => clear
    );
\snap_bits_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(68),
      Q => data11(4),
      R => clear
    );
\snap_bits_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(69),
      Q => data11(5),
      R => clear
    );
\snap_bits_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(6),
      Q => \snap_bits_reg_n_0_[6]\,
      R => clear
    );
\snap_bits_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(70),
      Q => data11(6),
      R => clear
    );
\snap_bits_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(71),
      Q => data11(7),
      R => clear
    );
\snap_bits_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(72),
      Q => data11(8),
      R => clear
    );
\snap_bits_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(73),
      Q => data11(9),
      R => clear
    );
\snap_bits_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(74),
      Q => data11(10),
      R => clear
    );
\snap_bits_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(75),
      Q => data11(11),
      R => clear
    );
\snap_bits_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(76),
      Q => data11(12),
      R => clear
    );
\snap_bits_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(77),
      Q => data11(13),
      R => clear
    );
\snap_bits_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(78),
      Q => data11(14),
      R => clear
    );
\snap_bits_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(79),
      Q => data11(15),
      R => clear
    );
\snap_bits_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(7),
      Q => \snap_bits_reg_n_0_[7]\,
      R => clear
    );
\snap_bits_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(80),
      Q => data11(16),
      R => clear
    );
\snap_bits_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(81),
      Q => data11(17),
      R => clear
    );
\snap_bits_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(82),
      Q => data11(18),
      R => clear
    );
\snap_bits_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(83),
      Q => data11(19),
      R => clear
    );
\snap_bits_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(84),
      Q => data11(20),
      R => clear
    );
\snap_bits_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(85),
      Q => data11(21),
      R => clear
    );
\snap_bits_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(86),
      Q => data11(22),
      R => clear
    );
\snap_bits_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(87),
      Q => data11(23),
      R => clear
    );
\snap_bits_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(88),
      Q => data11(24),
      R => clear
    );
\snap_bits_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(89),
      Q => data11(25),
      R => clear
    );
\snap_bits_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(8),
      Q => \snap_bits_reg_n_0_[8]\,
      R => clear
    );
\snap_bits_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(90),
      Q => data11(26),
      R => clear
    );
\snap_bits_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(91),
      Q => data11(27),
      R => clear
    );
\snap_bits_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(92),
      Q => data11(28),
      R => clear
    );
\snap_bits_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(93),
      Q => data11(29),
      R => clear
    );
\snap_bits_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(94),
      Q => data11(30),
      R => clear
    );
\snap_bits_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(95),
      Q => data11(31),
      R => clear
    );
\snap_bits_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(96),
      Q => data12(0),
      R => clear
    );
\snap_bits_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(97),
      Q => data12(1),
      R => clear
    );
\snap_bits_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(98),
      Q => data12(2),
      R => clear
    );
\snap_bits_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(99),
      Q => data12(3),
      R => clear
    );
\snap_bits_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_bits_next(9),
      Q => \snap_bits_reg_n_0_[9]\,
      R => clear
    );
snap_carrier_locked_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => frame_done,
      I1 => commit,
      I2 => \^busy_reg_0\,
      O => snap_carrier_locked_i_1_n_0
    );
snap_carrier_locked_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => bpsk_carrier_locked,
      Q => data7(0),
      R => clear
    );
\snap_dropped_bits[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \collect_drop_count[7]_i_3_n_0\,
      I1 => collect_count(7),
      I2 => bpsk_bit_valid,
      I3 => collect_drop_count(0),
      O => collect_drop_count_next(0)
    );
\snap_dropped_bits[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => collect_drop_count(0),
      I1 => \collect_drop_count[7]_i_3_n_0\,
      I2 => collect_count(7),
      I3 => bpsk_bit_valid,
      I4 => collect_drop_count(1),
      O => collect_drop_count_next(1)
    );
\snap_dropped_bits[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => collect_drop_count(1),
      I1 => collect_drop_count(0),
      I2 => \collect_drop_count[7]_i_3_n_0\,
      I3 => collect_count(7),
      I4 => bpsk_bit_valid,
      I5 => collect_drop_count(2),
      O => collect_drop_count_next(2)
    );
\snap_dropped_bits[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \collect_drop_count[4]_i_2_n_0\,
      I1 => collect_drop_count(2),
      I2 => \collect_drop_count[7]_i_3_n_0\,
      I3 => collect_count(7),
      I4 => bpsk_bit_valid,
      I5 => collect_drop_count(3),
      O => collect_drop_count_next(3)
    );
\snap_dropped_bits[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \snap_dropped_bits[4]_i_2_n_0\,
      I1 => \collect_drop_count[7]_i_3_n_0\,
      I2 => collect_count(7),
      I3 => bpsk_bit_valid,
      I4 => collect_drop_count(4),
      O => collect_drop_count_next(4)
    );
\snap_dropped_bits[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => collect_drop_count(3),
      I1 => collect_drop_count(0),
      I2 => collect_drop_count(1),
      I3 => collect_drop_count(2),
      O => \snap_dropped_bits[4]_i_2_n_0\
    );
\snap_dropped_bits[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \collect_drop_count[5]_i_2_n_0\,
      I1 => \collect_drop_count[7]_i_3_n_0\,
      I2 => collect_count(7),
      I3 => bpsk_bit_valid,
      I4 => collect_drop_count(5),
      O => collect_drop_count_next(5)
    );
\snap_dropped_bits[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \collect_drop_count[7]_i_2_n_0\,
      I1 => \collect_drop_count[7]_i_3_n_0\,
      I2 => collect_count(7),
      I3 => bpsk_bit_valid,
      I4 => collect_drop_count(6),
      O => collect_drop_count_next(6)
    );
\snap_dropped_bits[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \collect_drop_count[7]_i_2_n_0\,
      I1 => collect_drop_count(6),
      I2 => \collect_drop_count[7]_i_3_n_0\,
      I3 => collect_count(7),
      I4 => bpsk_bit_valid,
      I5 => collect_drop_count(7),
      O => collect_drop_count_next(7)
    );
\snap_dropped_bits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_drop_count_next(0),
      Q => snap_dropped_bits(0),
      R => clear
    );
\snap_dropped_bits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_drop_count_next(1),
      Q => snap_dropped_bits(1),
      R => clear
    );
\snap_dropped_bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_drop_count_next(2),
      Q => snap_dropped_bits(2),
      R => clear
    );
\snap_dropped_bits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_drop_count_next(3),
      Q => snap_dropped_bits(3),
      R => clear
    );
\snap_dropped_bits_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_drop_count_next(4),
      Q => snap_dropped_bits(4),
      R => clear
    );
\snap_dropped_bits_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_drop_count_next(5),
      Q => snap_dropped_bits(5),
      R => clear
    );
\snap_dropped_bits_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_drop_count_next(6),
      Q => snap_dropped_bits(6),
      R => clear
    );
\snap_dropped_bits_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_drop_count_next(7),
      Q => snap_dropped_bits(7),
      R => clear
    );
snap_frame_overflow_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => collect_count(7),
      I1 => bpsk_bit_valid,
      I2 => collect_overflow,
      O => collect_overflow_next
    );
snap_frame_overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => collect_overflow_next,
      Q => data7(4),
      R => clear
    );
\snap_rate_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => bpsk_rate_code(0),
      Q => data7(2),
      R => clear
    );
\snap_rate_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => bpsk_rate_code(1),
      Q => data7(3),
      R => clear
    );
\snap_snapshot_overrun_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(0),
      Q => snap_snapshot_overrun_count(0),
      R => clear
    );
\snap_snapshot_overrun_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(10),
      Q => snap_snapshot_overrun_count(10),
      R => clear
    );
\snap_snapshot_overrun_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(11),
      Q => snap_snapshot_overrun_count(11),
      R => clear
    );
\snap_snapshot_overrun_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(12),
      Q => snap_snapshot_overrun_count(12),
      R => clear
    );
\snap_snapshot_overrun_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(13),
      Q => snap_snapshot_overrun_count(13),
      R => clear
    );
\snap_snapshot_overrun_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(14),
      Q => snap_snapshot_overrun_count(14),
      R => clear
    );
\snap_snapshot_overrun_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(15),
      Q => snap_snapshot_overrun_count(15),
      R => clear
    );
\snap_snapshot_overrun_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(1),
      Q => snap_snapshot_overrun_count(1),
      R => clear
    );
\snap_snapshot_overrun_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(2),
      Q => snap_snapshot_overrun_count(2),
      R => clear
    );
\snap_snapshot_overrun_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(3),
      Q => snap_snapshot_overrun_count(3),
      R => clear
    );
\snap_snapshot_overrun_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(4),
      Q => snap_snapshot_overrun_count(4),
      R => clear
    );
\snap_snapshot_overrun_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(5),
      Q => snap_snapshot_overrun_count(5),
      R => clear
    );
\snap_snapshot_overrun_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(6),
      Q => snap_snapshot_overrun_count(6),
      R => clear
    );
\snap_snapshot_overrun_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(7),
      Q => snap_snapshot_overrun_count(7),
      R => clear
    );
\snap_snapshot_overrun_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(8),
      Q => snap_snapshot_overrun_count(8),
      R => clear
    );
\snap_snapshot_overrun_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_count_reg(9),
      Q => snap_snapshot_overrun_count(9),
      R => clear
    );
snap_snapshot_overrun_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => snapshot_overrun_sticky,
      Q => snap_snapshot_overrun_sticky,
      R => clear
    );
snap_timing_locked_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snap_carrier_locked_i_1_n_0,
      D => bpsk_timing_locked,
      Q => data7(1),
      R => clear
    );
\snapshot_overrun_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A800"
    )
        port map (
      I0 => frame_done,
      I1 => \snapshot_overrun_count[0]_i_3_n_0\,
      I2 => \snapshot_overrun_count[0]_i_4_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      O => snapshot_overrun_count
    );
\snapshot_overrun_count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => snapshot_overrun_count_reg(13),
      I1 => snapshot_overrun_count_reg(12),
      I2 => snapshot_overrun_count_reg(14),
      I3 => snapshot_overrun_count_reg(15),
      I4 => \snapshot_overrun_count[0]_i_6_n_0\,
      O => \snapshot_overrun_count[0]_i_3_n_0\
    );
\snapshot_overrun_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => snapshot_overrun_count_reg(5),
      I1 => snapshot_overrun_count_reg(4),
      I2 => snapshot_overrun_count_reg(7),
      I3 => snapshot_overrun_count_reg(6),
      I4 => \snapshot_overrun_count[0]_i_7_n_0\,
      O => \snapshot_overrun_count[0]_i_4_n_0\
    );
\snapshot_overrun_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => snapshot_overrun_count_reg(0),
      O => \snapshot_overrun_count[0]_i_5_n_0\
    );
\snapshot_overrun_count[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => snapshot_overrun_count_reg(10),
      I1 => snapshot_overrun_count_reg(11),
      I2 => snapshot_overrun_count_reg(8),
      I3 => snapshot_overrun_count_reg(9),
      O => \snapshot_overrun_count[0]_i_6_n_0\
    );
\snapshot_overrun_count[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => snapshot_overrun_count_reg(2),
      I1 => snapshot_overrun_count_reg(3),
      I2 => snapshot_overrun_count_reg(0),
      I3 => snapshot_overrun_count_reg(1),
      O => \snapshot_overrun_count[0]_i_7_n_0\
    );
\snapshot_overrun_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[0]_i_2_n_7\,
      Q => snapshot_overrun_count_reg(0),
      R => clear
    );
\snapshot_overrun_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \snapshot_overrun_count_reg[0]_i_2_n_0\,
      CO(2) => \snapshot_overrun_count_reg[0]_i_2_n_1\,
      CO(1) => \snapshot_overrun_count_reg[0]_i_2_n_2\,
      CO(0) => \snapshot_overrun_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \snapshot_overrun_count_reg[0]_i_2_n_4\,
      O(2) => \snapshot_overrun_count_reg[0]_i_2_n_5\,
      O(1) => \snapshot_overrun_count_reg[0]_i_2_n_6\,
      O(0) => \snapshot_overrun_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => snapshot_overrun_count_reg(3 downto 1),
      S(0) => \snapshot_overrun_count[0]_i_5_n_0\
    );
\snapshot_overrun_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[8]_i_1_n_5\,
      Q => snapshot_overrun_count_reg(10),
      R => clear
    );
\snapshot_overrun_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[8]_i_1_n_4\,
      Q => snapshot_overrun_count_reg(11),
      R => clear
    );
\snapshot_overrun_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[12]_i_1_n_7\,
      Q => snapshot_overrun_count_reg(12),
      R => clear
    );
\snapshot_overrun_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \snapshot_overrun_count_reg[8]_i_1_n_0\,
      CO(3) => \NLW_snapshot_overrun_count_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \snapshot_overrun_count_reg[12]_i_1_n_1\,
      CO(1) => \snapshot_overrun_count_reg[12]_i_1_n_2\,
      CO(0) => \snapshot_overrun_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \snapshot_overrun_count_reg[12]_i_1_n_4\,
      O(2) => \snapshot_overrun_count_reg[12]_i_1_n_5\,
      O(1) => \snapshot_overrun_count_reg[12]_i_1_n_6\,
      O(0) => \snapshot_overrun_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => snapshot_overrun_count_reg(15 downto 12)
    );
\snapshot_overrun_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[12]_i_1_n_6\,
      Q => snapshot_overrun_count_reg(13),
      R => clear
    );
\snapshot_overrun_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[12]_i_1_n_5\,
      Q => snapshot_overrun_count_reg(14),
      R => clear
    );
\snapshot_overrun_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[12]_i_1_n_4\,
      Q => snapshot_overrun_count_reg(15),
      R => clear
    );
\snapshot_overrun_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[0]_i_2_n_6\,
      Q => snapshot_overrun_count_reg(1),
      R => clear
    );
\snapshot_overrun_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[0]_i_2_n_5\,
      Q => snapshot_overrun_count_reg(2),
      R => clear
    );
\snapshot_overrun_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[0]_i_2_n_4\,
      Q => snapshot_overrun_count_reg(3),
      R => clear
    );
\snapshot_overrun_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[4]_i_1_n_7\,
      Q => snapshot_overrun_count_reg(4),
      R => clear
    );
\snapshot_overrun_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \snapshot_overrun_count_reg[0]_i_2_n_0\,
      CO(3) => \snapshot_overrun_count_reg[4]_i_1_n_0\,
      CO(2) => \snapshot_overrun_count_reg[4]_i_1_n_1\,
      CO(1) => \snapshot_overrun_count_reg[4]_i_1_n_2\,
      CO(0) => \snapshot_overrun_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \snapshot_overrun_count_reg[4]_i_1_n_4\,
      O(2) => \snapshot_overrun_count_reg[4]_i_1_n_5\,
      O(1) => \snapshot_overrun_count_reg[4]_i_1_n_6\,
      O(0) => \snapshot_overrun_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => snapshot_overrun_count_reg(7 downto 4)
    );
\snapshot_overrun_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[4]_i_1_n_6\,
      Q => snapshot_overrun_count_reg(5),
      R => clear
    );
\snapshot_overrun_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[4]_i_1_n_5\,
      Q => snapshot_overrun_count_reg(6),
      R => clear
    );
\snapshot_overrun_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[4]_i_1_n_4\,
      Q => snapshot_overrun_count_reg(7),
      R => clear
    );
\snapshot_overrun_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[8]_i_1_n_7\,
      Q => snapshot_overrun_count_reg(8),
      R => clear
    );
\snapshot_overrun_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \snapshot_overrun_count_reg[4]_i_1_n_0\,
      CO(3) => \snapshot_overrun_count_reg[8]_i_1_n_0\,
      CO(2) => \snapshot_overrun_count_reg[8]_i_1_n_1\,
      CO(1) => \snapshot_overrun_count_reg[8]_i_1_n_2\,
      CO(0) => \snapshot_overrun_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \snapshot_overrun_count_reg[8]_i_1_n_4\,
      O(2) => \snapshot_overrun_count_reg[8]_i_1_n_5\,
      O(1) => \snapshot_overrun_count_reg[8]_i_1_n_6\,
      O(0) => \snapshot_overrun_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => snapshot_overrun_count_reg(11 downto 8)
    );
\snapshot_overrun_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => snapshot_overrun_count,
      D => \snapshot_overrun_count_reg[8]_i_1_n_6\,
      Q => snapshot_overrun_count_reg(9),
      R => clear
    );
snapshot_overrun_sticky_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => commit,
      I2 => frame_done,
      I3 => snapshot_overrun_sticky,
      O => snapshot_overrun_sticky_i_1_n_0
    );
snapshot_overrun_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => snapshot_overrun_sticky_i_1_n_0,
      Q => snapshot_overrun_sticky,
      R => clear
    );
\word_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \word_index_reg__0\(0),
      O => \word_index[0]_i_1_n_0\
    );
\word_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \word_index_reg__0\(0),
      I1 => \word_index_reg__0\(1),
      O => \word_index[1]_i_1_n_0\
    );
\word_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \word_index_reg__0\(0),
      I1 => \word_index_reg__0\(1),
      I2 => \word_index_reg__0\(2),
      O => p_0_in(2)
    );
\word_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \word_index_reg__0\(1),
      I1 => \word_index_reg__0\(0),
      I2 => \word_index_reg__0\(2),
      I3 => \word_index_reg__0\(3),
      O => p_0_in(3)
    );
\word_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \word_index_reg__0\(2),
      I1 => \word_index_reg__0\(0),
      I2 => \word_index_reg__0\(1),
      I3 => \word_index_reg__0\(3),
      I4 => \word_index_reg__0\(4),
      O => p_0_in(4)
    );
\word_index[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FF"
    )
        port map (
      I0 => frame_done,
      I1 => commit,
      I2 => \^busy_reg_0\,
      I3 => aresetn,
      O => \word_index[5]_i_1_n_0\
    );
\word_index[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAAAAAAAAAA"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => \word_index_reg__0\(2),
      I2 => \word_index_reg__0\(3),
      I3 => \word_index[5]_i_4_n_0\,
      I4 => \word_index_reg__0\(1),
      I5 => \word_index_reg__0\(5),
      O => word_index
    );
\word_index[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \word_index_reg__0\(3),
      I1 => \word_index_reg__0\(1),
      I2 => \word_index_reg__0\(0),
      I3 => \word_index_reg__0\(2),
      I4 => \word_index_reg__0\(4),
      I5 => \word_index_reg__0\(5),
      O => p_0_in(5)
    );
\word_index[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \word_index_reg__0\(4),
      I1 => \word_index_reg__0\(0),
      O => \word_index[5]_i_4_n_0\
    );
\word_index_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => word_index,
      D => \word_index[0]_i_1_n_0\,
      Q => \word_index_reg__0\(0),
      S => \word_index[5]_i_1_n_0\
    );
\word_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_index,
      D => \word_index[1]_i_1_n_0\,
      Q => \word_index_reg__0\(1),
      R => \word_index[5]_i_1_n_0\
    );
\word_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_index,
      D => p_0_in(2),
      Q => \word_index_reg__0\(2),
      R => \word_index[5]_i_1_n_0\
    );
\word_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_index,
      D => p_0_in(3),
      Q => \word_index_reg__0\(3),
      R => \word_index[5]_i_1_n_0\
    );
\word_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_index,
      D => p_0_in(4),
      Q => \word_index_reg__0\(4),
      R => \word_index[5]_i_1_n_0\
    );
\word_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_index,
      D => p_0_in(5),
      Q => \word_index_reg__0\(5),
      R => \word_index[5]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_feature_bram_writer_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    frame_done : in STD_LOGIC;
    var_mag_num : in STD_LOGIC_VECTOR ( 63 downto 0 );
    var_freq_num : in STD_LOGIC_VECTOR ( 63 downto 0 );
    mean_mag_num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mean_freq_num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    psk_spike_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    psk_flag : in STD_LOGIC;
    bpsk_carrier_locked : in STD_LOGIC;
    bpsk_timing_locked : in STD_LOGIC;
    bpsk_rate_code : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bpsk_bit_data : in STD_LOGIC;
    bpsk_bit_valid : in STD_LOGIC;
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_feature_bram_writer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_feature_bram_writer_0_0 : entity is "design_1_feature_bram_writer_0_0,feature_bram_writer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_feature_bram_writer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_feature_bram_writer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_feature_bram_writer_0_0 : entity is "feature_bram_writer,Vivado 2018.3";
end design_1_feature_bram_writer_0_0;

architecture STRUCTURE of design_1_feature_bram_writer_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \^bram_en\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  bram_addr(31) <= \<const0>\;
  bram_addr(30) <= \<const0>\;
  bram_addr(29) <= \<const0>\;
  bram_addr(28) <= \<const0>\;
  bram_addr(27) <= \<const0>\;
  bram_addr(26) <= \<const0>\;
  bram_addr(25) <= \<const0>\;
  bram_addr(24) <= \<const0>\;
  bram_addr(23) <= \<const0>\;
  bram_addr(22) <= \<const0>\;
  bram_addr(21) <= \<const0>\;
  bram_addr(20) <= \<const0>\;
  bram_addr(19) <= \<const0>\;
  bram_addr(18) <= \<const0>\;
  bram_addr(17) <= \<const0>\;
  bram_addr(16) <= \<const0>\;
  bram_addr(15) <= \<const0>\;
  bram_addr(14) <= \<const0>\;
  bram_addr(13) <= \<const0>\;
  bram_addr(12) <= \<const0>\;
  bram_addr(11) <= \<const0>\;
  bram_addr(10) <= \<const0>\;
  bram_addr(9) <= \<const0>\;
  bram_addr(8) <= \<const0>\;
  bram_addr(7 downto 2) <= \^bram_addr\(7 downto 2);
  bram_addr(1) <= \<const0>\;
  bram_addr(0) <= \<const0>\;
  bram_en <= \^bram_en\;
  bram_we(3) <= \^bram_en\;
  bram_we(2) <= \^bram_en\;
  bram_we(1) <= \^bram_en\;
  bram_we(0) <= \^bram_en\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_feature_bram_writer_0_0_feature_bram_writer
     port map (
      aclk => aclk,
      aresetn => aresetn,
      bpsk_bit_data => bpsk_bit_data,
      bpsk_bit_valid => bpsk_bit_valid,
      bpsk_carrier_locked => bpsk_carrier_locked,
      bpsk_rate_code(1 downto 0) => bpsk_rate_code(1 downto 0),
      bpsk_timing_locked => bpsk_timing_locked,
      bram_addr(5 downto 0) => \^bram_addr\(7 downto 2),
      bram_en => \^bram_en\,
      bram_wdata(31 downto 0) => bram_wdata(31 downto 0),
      busy_reg_0 => busy,
      frame_done => frame_done,
      hist_freq_rd_addr(3 downto 0) => hist_freq_rd_addr(3 downto 0),
      hist_freq_rd_data(31 downto 0) => hist_freq_rd_data(31 downto 0),
      hist_mag_rd_addr(3 downto 0) => hist_mag_rd_addr(3 downto 0),
      hist_mag_rd_data(31 downto 0) => hist_mag_rd_data(31 downto 0),
      mean_freq_num(31 downto 0) => mean_freq_num(31 downto 0),
      mean_mag_num(31 downto 0) => mean_mag_num(31 downto 0),
      psk_flag => psk_flag,
      psk_spike_count(30 downto 0) => psk_spike_count(30 downto 0),
      var_freq_num(63 downto 0) => var_freq_num(63 downto 0),
      var_mag_num(63 downto 0) => var_mag_num(63 downto 0)
    );
end STRUCTURE;
