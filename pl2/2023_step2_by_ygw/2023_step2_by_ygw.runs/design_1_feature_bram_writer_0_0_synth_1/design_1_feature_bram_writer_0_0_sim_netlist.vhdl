-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jul 18 17:16:14 2026
-- Host        : Toph running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_feature_bram_writer_0_0_sim_netlist.vhdl
-- Design      : design_1_feature_bram_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_feature_bram_writer is
  port (
    busy_reg_0 : out STD_LOGIC;
    bram_en : out STD_LOGIC;
    hist_mag_rd_addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hist_freq_rd_addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    bram_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    frame_done : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    hist_mag_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hist_freq_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    psk_flag : in STD_LOGIC;
    mean_freq_num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mean_mag_num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    var_freq_num : in STD_LOGIC_VECTOR ( 63 downto 0 );
    var_mag_num : in STD_LOGIC_VECTOR ( 63 downto 0 );
    psk_spike_count : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_feature_bram_writer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_feature_bram_writer is
  signal \bram_wdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_1\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_wdata[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_wdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_wdata[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_wdata[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal busy6_out : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal \^busy_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal commit : STD_LOGIC;
  signal commit2_out : STD_LOGIC;
  signal commit_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sequence_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sequence_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \sequence_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \sequence_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \sequence_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \sequence_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \sequence_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \sequence_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \sequence_reg[0]_i_3_n_7\ : STD_LOGIC;
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
  signal word_index : STD_LOGIC;
  signal \word_index[5]_i_1_n_0\ : STD_LOGIC;
  signal \word_index[5]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_bram_wdata[31]_INST_0_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bram_wdata[31]_INST_0_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sequence_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bram_addr[2]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bram_addr[3]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bram_addr[4]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bram_addr[5]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_addr[6]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bram_addr[7]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_wdata[14]_INST_0_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bram_wdata[23]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bram_wdata[25]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bram_we[0]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of commit_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \hist_freq_rd_addr[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hist_freq_rd_addr[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hist_freq_rd_addr[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hist_freq_rd_addr[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hist_mag_rd_addr[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hist_mag_rd_addr[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hist_mag_rd_addr[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hist_mag_rd_addr[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \word_index[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \word_index[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \word_index[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \word_index[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \word_index[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \word_index[5]_i_4\ : label is "soft_lutpair0";
begin
  busy_reg_0 <= \^busy_reg_0\;
\bram_addr[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => p_0_in_0(2),
      I2 => commit,
      O => bram_addr(0)
    );
\bram_addr[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => p_0_in_0(3),
      I2 => commit,
      O => bram_addr(1)
    );
\bram_addr[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => p_0_in_0(4),
      I2 => commit,
      O => bram_addr(2)
    );
\bram_addr[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => p_0_in_0(5),
      I2 => commit,
      O => bram_addr(3)
    );
\bram_addr[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => p_0_in_0(6),
      I2 => commit,
      O => bram_addr(4)
    );
\bram_addr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => p_0_in_0(7),
      I2 => commit,
      O => bram_addr(5)
    );
\bram_wdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => \bram_wdata[0]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[0]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => commit,
      I5 => sequence_reg(0),
      O => bram_wdata(0)
    );
\bram_wdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(0),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(0),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[0]_INST_0_i_3_n_0\,
      O => \bram_wdata[0]_INST_0_i_1_n_0\
    );
\bram_wdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(0),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(0),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[0]_INST_0_i_4_n_0\,
      O => \bram_wdata[0]_INST_0_i_2_n_0\
    );
\bram_wdata[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(0),
      I1 => mean_freq_num(0),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(0),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(32),
      O => \bram_wdata[0]_INST_0_i_3_n_0\
    );
\bram_wdata[0]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(0),
      I1 => var_mag_num(32),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(0),
      I4 => p_0_in_0(2),
      O => \bram_wdata[0]_INST_0_i_4_n_0\
    );
\bram_wdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[10]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[10]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(10),
      I5 => commit,
      O => bram_wdata(10)
    );
\bram_wdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(10),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(10),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[10]_INST_0_i_3_n_0\,
      O => \bram_wdata[10]_INST_0_i_1_n_0\
    );
\bram_wdata[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(10),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(10),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[10]_INST_0_i_4_n_0\,
      O => \bram_wdata[10]_INST_0_i_2_n_0\
    );
\bram_wdata[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(10),
      I1 => mean_freq_num(10),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(10),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(42),
      O => \bram_wdata[10]_INST_0_i_3_n_0\
    );
\bram_wdata[10]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(10),
      I1 => var_mag_num(42),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(10),
      I4 => p_0_in_0(2),
      O => \bram_wdata[10]_INST_0_i_4_n_0\
    );
\bram_wdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[11]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[11]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(11),
      I5 => commit,
      O => bram_wdata(11)
    );
\bram_wdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(11),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(11),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[11]_INST_0_i_3_n_0\,
      O => \bram_wdata[11]_INST_0_i_1_n_0\
    );
\bram_wdata[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(11),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(11),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[11]_INST_0_i_4_n_0\,
      O => \bram_wdata[11]_INST_0_i_2_n_0\
    );
\bram_wdata[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(11),
      I1 => mean_freq_num(11),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(11),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(43),
      O => \bram_wdata[11]_INST_0_i_3_n_0\
    );
\bram_wdata[11]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(11),
      I1 => var_mag_num(43),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(11),
      I4 => p_0_in_0(2),
      O => \bram_wdata[11]_INST_0_i_4_n_0\
    );
\bram_wdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[12]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[12]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(12),
      I5 => commit,
      O => bram_wdata(12)
    );
\bram_wdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(12),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(12),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[12]_INST_0_i_4_n_0\,
      O => \bram_wdata[12]_INST_0_i_1_n_0\
    );
\bram_wdata[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(12),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(12),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[12]_INST_0_i_5_n_0\,
      O => \bram_wdata[12]_INST_0_i_2_n_0\
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
      O(3 downto 0) => \p_0_in__0\(12 downto 9),
      S(3 downto 0) => sequence_reg(12 downto 9)
    );
\bram_wdata[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(12),
      I1 => mean_freq_num(12),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(12),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(44),
      O => \bram_wdata[12]_INST_0_i_4_n_0\
    );
\bram_wdata[12]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(12),
      I1 => var_mag_num(44),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(12),
      I4 => p_0_in_0(2),
      O => \bram_wdata[12]_INST_0_i_5_n_0\
    );
\bram_wdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[13]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[13]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(13),
      I5 => commit,
      O => bram_wdata(13)
    );
\bram_wdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(13),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(13),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[13]_INST_0_i_3_n_0\,
      O => \bram_wdata[13]_INST_0_i_1_n_0\
    );
\bram_wdata[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(13),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(13),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[13]_INST_0_i_4_n_0\,
      O => \bram_wdata[13]_INST_0_i_2_n_0\
    );
\bram_wdata[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(13),
      I1 => mean_freq_num(13),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(13),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(45),
      O => \bram_wdata[13]_INST_0_i_3_n_0\
    );
\bram_wdata[13]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(13),
      I1 => var_mag_num(45),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(13),
      I4 => p_0_in_0(2),
      O => \bram_wdata[13]_INST_0_i_4_n_0\
    );
\bram_wdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[14]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[14]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(14),
      I5 => commit,
      O => bram_wdata(14)
    );
\bram_wdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(14),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(14),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[14]_INST_0_i_3_n_0\,
      O => \bram_wdata[14]_INST_0_i_1_n_0\
    );
\bram_wdata[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(14),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(14),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[14]_INST_0_i_4_n_0\,
      O => \bram_wdata[14]_INST_0_i_2_n_0\
    );
\bram_wdata[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(14),
      I1 => mean_freq_num(14),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(14),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(46),
      O => \bram_wdata[14]_INST_0_i_3_n_0\
    );
\bram_wdata[14]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(14),
      I1 => var_mag_num(46),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(14),
      I4 => p_0_in_0(2),
      O => \bram_wdata[14]_INST_0_i_4_n_0\
    );
\bram_wdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[15]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[15]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(15),
      I5 => commit,
      O => bram_wdata(15)
    );
\bram_wdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(15),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(15),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[15]_INST_0_i_3_n_0\,
      O => \bram_wdata[15]_INST_0_i_1_n_0\
    );
\bram_wdata[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(15),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(15),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[15]_INST_0_i_4_n_0\,
      O => \bram_wdata[15]_INST_0_i_2_n_0\
    );
\bram_wdata[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(15),
      I1 => mean_freq_num(15),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(15),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(47),
      O => \bram_wdata[15]_INST_0_i_3_n_0\
    );
\bram_wdata[15]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(15),
      I1 => var_mag_num(47),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(15),
      I4 => p_0_in_0(2),
      O => \bram_wdata[15]_INST_0_i_4_n_0\
    );
\bram_wdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[16]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[16]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(16),
      I5 => commit,
      O => bram_wdata(16)
    );
\bram_wdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(16),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(16),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[16]_INST_0_i_4_n_0\,
      O => \bram_wdata[16]_INST_0_i_1_n_0\
    );
\bram_wdata[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(16),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(16),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[16]_INST_0_i_5_n_0\,
      O => \bram_wdata[16]_INST_0_i_2_n_0\
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
      O(3 downto 0) => \p_0_in__0\(16 downto 13),
      S(3 downto 0) => sequence_reg(16 downto 13)
    );
\bram_wdata[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(16),
      I1 => mean_freq_num(16),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(16),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(48),
      O => \bram_wdata[16]_INST_0_i_4_n_0\
    );
\bram_wdata[16]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(16),
      I1 => var_mag_num(48),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(16),
      I4 => p_0_in_0(2),
      O => \bram_wdata[16]_INST_0_i_5_n_0\
    );
\bram_wdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[17]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[17]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(17),
      I5 => commit,
      O => bram_wdata(17)
    );
\bram_wdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(17),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(17),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[17]_INST_0_i_3_n_0\,
      O => \bram_wdata[17]_INST_0_i_1_n_0\
    );
\bram_wdata[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(17),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(17),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[17]_INST_0_i_4_n_0\,
      O => \bram_wdata[17]_INST_0_i_2_n_0\
    );
\bram_wdata[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(17),
      I1 => mean_freq_num(17),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(17),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(49),
      O => \bram_wdata[17]_INST_0_i_3_n_0\
    );
\bram_wdata[17]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(17),
      I1 => var_mag_num(49),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(17),
      I4 => p_0_in_0(2),
      O => \bram_wdata[17]_INST_0_i_4_n_0\
    );
\bram_wdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[18]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[18]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(18),
      I5 => commit,
      O => bram_wdata(18)
    );
\bram_wdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(18),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(18),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[18]_INST_0_i_3_n_0\,
      O => \bram_wdata[18]_INST_0_i_1_n_0\
    );
\bram_wdata[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(18),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(18),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[18]_INST_0_i_4_n_0\,
      O => \bram_wdata[18]_INST_0_i_2_n_0\
    );
\bram_wdata[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(18),
      I1 => mean_freq_num(18),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(18),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(50),
      O => \bram_wdata[18]_INST_0_i_3_n_0\
    );
\bram_wdata[18]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(18),
      I1 => var_mag_num(50),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(18),
      I4 => p_0_in_0(2),
      O => \bram_wdata[18]_INST_0_i_4_n_0\
    );
\bram_wdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[19]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[19]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(19),
      I5 => commit,
      O => bram_wdata(19)
    );
\bram_wdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(19),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(19),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[19]_INST_0_i_3_n_0\,
      O => \bram_wdata[19]_INST_0_i_1_n_0\
    );
\bram_wdata[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(19),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(19),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[19]_INST_0_i_4_n_0\,
      O => \bram_wdata[19]_INST_0_i_2_n_0\
    );
\bram_wdata[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(19),
      I1 => mean_freq_num(19),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(19),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(51),
      O => \bram_wdata[19]_INST_0_i_3_n_0\
    );
\bram_wdata[19]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(19),
      I1 => var_mag_num(51),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(19),
      I4 => p_0_in_0(2),
      O => \bram_wdata[19]_INST_0_i_4_n_0\
    );
\bram_wdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[1]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[1]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(1),
      I5 => commit,
      O => bram_wdata(1)
    );
\bram_wdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(1),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(1),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[1]_INST_0_i_3_n_0\,
      O => \bram_wdata[1]_INST_0_i_1_n_0\
    );
\bram_wdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(1),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(1),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[1]_INST_0_i_4_n_0\,
      O => \bram_wdata[1]_INST_0_i_2_n_0\
    );
\bram_wdata[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(1),
      I1 => mean_freq_num(1),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(1),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(33),
      O => \bram_wdata[1]_INST_0_i_3_n_0\
    );
\bram_wdata[1]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(1),
      I1 => var_mag_num(33),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(1),
      I4 => p_0_in_0(2),
      O => \bram_wdata[1]_INST_0_i_4_n_0\
    );
\bram_wdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[20]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[20]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(20),
      I5 => commit,
      O => bram_wdata(20)
    );
\bram_wdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(20),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(20),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[20]_INST_0_i_4_n_0\,
      O => \bram_wdata[20]_INST_0_i_1_n_0\
    );
\bram_wdata[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(20),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(20),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[20]_INST_0_i_5_n_0\,
      O => \bram_wdata[20]_INST_0_i_2_n_0\
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
      O(3 downto 0) => \p_0_in__0\(20 downto 17),
      S(3 downto 0) => sequence_reg(20 downto 17)
    );
\bram_wdata[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(20),
      I1 => mean_freq_num(20),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(20),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(52),
      O => \bram_wdata[20]_INST_0_i_4_n_0\
    );
\bram_wdata[20]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(20),
      I1 => var_mag_num(52),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(20),
      I4 => p_0_in_0(2),
      O => \bram_wdata[20]_INST_0_i_5_n_0\
    );
\bram_wdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[21]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[21]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(21),
      I5 => commit,
      O => bram_wdata(21)
    );
\bram_wdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(21),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(21),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[21]_INST_0_i_3_n_0\,
      O => \bram_wdata[21]_INST_0_i_1_n_0\
    );
\bram_wdata[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(21),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(21),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[21]_INST_0_i_4_n_0\,
      O => \bram_wdata[21]_INST_0_i_2_n_0\
    );
\bram_wdata[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(21),
      I1 => mean_freq_num(21),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(21),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(53),
      O => \bram_wdata[21]_INST_0_i_3_n_0\
    );
\bram_wdata[21]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(21),
      I1 => var_mag_num(53),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(21),
      I4 => p_0_in_0(2),
      O => \bram_wdata[21]_INST_0_i_4_n_0\
    );
\bram_wdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[22]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[22]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(22),
      I5 => commit,
      O => bram_wdata(22)
    );
\bram_wdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(22),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(22),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[22]_INST_0_i_3_n_0\,
      O => \bram_wdata[22]_INST_0_i_1_n_0\
    );
\bram_wdata[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(22),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(22),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[22]_INST_0_i_4_n_0\,
      O => \bram_wdata[22]_INST_0_i_2_n_0\
    );
\bram_wdata[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(22),
      I1 => mean_freq_num(22),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(22),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(54),
      O => \bram_wdata[22]_INST_0_i_3_n_0\
    );
\bram_wdata[22]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(22),
      I1 => var_mag_num(54),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(22),
      I4 => p_0_in_0(2),
      O => \bram_wdata[22]_INST_0_i_4_n_0\
    );
\bram_wdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[23]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[23]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(23),
      I5 => commit,
      O => bram_wdata(23)
    );
\bram_wdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(23),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(23),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[23]_INST_0_i_3_n_0\,
      O => \bram_wdata[23]_INST_0_i_1_n_0\
    );
\bram_wdata[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(23),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(23),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[23]_INST_0_i_4_n_0\,
      O => \bram_wdata[23]_INST_0_i_2_n_0\
    );
\bram_wdata[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(23),
      I1 => mean_freq_num(23),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(23),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(55),
      O => \bram_wdata[23]_INST_0_i_3_n_0\
    );
\bram_wdata[23]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(23),
      I1 => var_mag_num(55),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(23),
      I4 => p_0_in_0(2),
      O => \bram_wdata[23]_INST_0_i_4_n_0\
    );
\bram_wdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[24]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[24]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(24),
      I5 => commit,
      O => bram_wdata(24)
    );
\bram_wdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(24),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(24),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[24]_INST_0_i_4_n_0\,
      O => \bram_wdata[24]_INST_0_i_1_n_0\
    );
\bram_wdata[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(24),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(24),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[24]_INST_0_i_5_n_0\,
      O => \bram_wdata[24]_INST_0_i_2_n_0\
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
      O(3 downto 0) => \p_0_in__0\(24 downto 21),
      S(3 downto 0) => sequence_reg(24 downto 21)
    );
\bram_wdata[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(24),
      I1 => mean_freq_num(24),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(24),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(56),
      O => \bram_wdata[24]_INST_0_i_4_n_0\
    );
\bram_wdata[24]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(24),
      I1 => var_mag_num(56),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(24),
      I4 => p_0_in_0(2),
      O => \bram_wdata[24]_INST_0_i_5_n_0\
    );
\bram_wdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[25]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[25]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(25),
      I5 => commit,
      O => bram_wdata(25)
    );
\bram_wdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(25),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(25),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[25]_INST_0_i_3_n_0\,
      O => \bram_wdata[25]_INST_0_i_1_n_0\
    );
\bram_wdata[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(25),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(25),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[25]_INST_0_i_4_n_0\,
      O => \bram_wdata[25]_INST_0_i_2_n_0\
    );
\bram_wdata[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(25),
      I1 => mean_freq_num(25),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(25),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(57),
      O => \bram_wdata[25]_INST_0_i_3_n_0\
    );
\bram_wdata[25]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(25),
      I1 => var_mag_num(57),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(25),
      I4 => p_0_in_0(2),
      O => \bram_wdata[25]_INST_0_i_4_n_0\
    );
\bram_wdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[26]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[26]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(26),
      I5 => commit,
      O => bram_wdata(26)
    );
\bram_wdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(26),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(26),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[26]_INST_0_i_3_n_0\,
      O => \bram_wdata[26]_INST_0_i_1_n_0\
    );
\bram_wdata[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(26),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(26),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[26]_INST_0_i_4_n_0\,
      O => \bram_wdata[26]_INST_0_i_2_n_0\
    );
\bram_wdata[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(26),
      I1 => mean_freq_num(26),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(26),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(58),
      O => \bram_wdata[26]_INST_0_i_3_n_0\
    );
\bram_wdata[26]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(26),
      I1 => var_mag_num(58),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(26),
      I4 => p_0_in_0(2),
      O => \bram_wdata[26]_INST_0_i_4_n_0\
    );
\bram_wdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[27]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[27]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(27),
      I5 => commit,
      O => bram_wdata(27)
    );
\bram_wdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(27),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(27),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[27]_INST_0_i_3_n_0\,
      O => \bram_wdata[27]_INST_0_i_1_n_0\
    );
\bram_wdata[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(27),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(27),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[27]_INST_0_i_4_n_0\,
      O => \bram_wdata[27]_INST_0_i_2_n_0\
    );
\bram_wdata[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(27),
      I1 => mean_freq_num(27),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(27),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(59),
      O => \bram_wdata[27]_INST_0_i_3_n_0\
    );
\bram_wdata[27]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(27),
      I1 => var_mag_num(59),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(27),
      I4 => p_0_in_0(2),
      O => \bram_wdata[27]_INST_0_i_4_n_0\
    );
\bram_wdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[28]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[28]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(28),
      I5 => commit,
      O => bram_wdata(28)
    );
\bram_wdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(28),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(28),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[28]_INST_0_i_4_n_0\,
      O => \bram_wdata[28]_INST_0_i_1_n_0\
    );
\bram_wdata[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(28),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(28),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[28]_INST_0_i_5_n_0\,
      O => \bram_wdata[28]_INST_0_i_2_n_0\
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
      O(3 downto 0) => \p_0_in__0\(28 downto 25),
      S(3 downto 0) => sequence_reg(28 downto 25)
    );
\bram_wdata[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(28),
      I1 => mean_freq_num(28),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(28),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(60),
      O => \bram_wdata[28]_INST_0_i_4_n_0\
    );
\bram_wdata[28]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(28),
      I1 => var_mag_num(60),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(28),
      I4 => p_0_in_0(2),
      O => \bram_wdata[28]_INST_0_i_5_n_0\
    );
\bram_wdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[29]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[29]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(29),
      I5 => commit,
      O => bram_wdata(29)
    );
\bram_wdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(29),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(29),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[29]_INST_0_i_3_n_0\,
      O => \bram_wdata[29]_INST_0_i_1_n_0\
    );
\bram_wdata[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(29),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(29),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[29]_INST_0_i_4_n_0\,
      O => \bram_wdata[29]_INST_0_i_2_n_0\
    );
\bram_wdata[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(29),
      I1 => mean_freq_num(29),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(29),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(61),
      O => \bram_wdata[29]_INST_0_i_3_n_0\
    );
\bram_wdata[29]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(29),
      I1 => var_mag_num(61),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(29),
      I4 => p_0_in_0(2),
      O => \bram_wdata[29]_INST_0_i_4_n_0\
    );
\bram_wdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[2]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[2]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(2),
      I5 => commit,
      O => bram_wdata(2)
    );
\bram_wdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(2),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(2),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[2]_INST_0_i_3_n_0\,
      O => \bram_wdata[2]_INST_0_i_1_n_0\
    );
\bram_wdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(2),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(2),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[2]_INST_0_i_4_n_0\,
      O => \bram_wdata[2]_INST_0_i_2_n_0\
    );
\bram_wdata[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(2),
      I1 => mean_freq_num(2),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(2),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(34),
      O => \bram_wdata[2]_INST_0_i_3_n_0\
    );
\bram_wdata[2]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(2),
      I1 => var_mag_num(34),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(2),
      I4 => p_0_in_0(2),
      O => \bram_wdata[2]_INST_0_i_4_n_0\
    );
\bram_wdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[30]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[30]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(30),
      I5 => commit,
      O => bram_wdata(30)
    );
\bram_wdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(30),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(30),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[30]_INST_0_i_3_n_0\,
      O => \bram_wdata[30]_INST_0_i_1_n_0\
    );
\bram_wdata[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(30),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(30),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[30]_INST_0_i_4_n_0\,
      O => \bram_wdata[30]_INST_0_i_2_n_0\
    );
\bram_wdata[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(30),
      I1 => mean_freq_num(30),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(30),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(62),
      O => \bram_wdata[30]_INST_0_i_3_n_0\
    );
\bram_wdata[30]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(30),
      I1 => var_mag_num(62),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(30),
      I4 => p_0_in_0(2),
      O => \bram_wdata[30]_INST_0_i_4_n_0\
    );
\bram_wdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[31]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[31]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(31),
      I5 => commit,
      O => bram_wdata(31)
    );
\bram_wdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(31),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(31),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[31]_INST_0_i_4_n_0\,
      O => \bram_wdata[31]_INST_0_i_1_n_0\
    );
\bram_wdata[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(31),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(31),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[31]_INST_0_i_5_n_0\,
      O => \bram_wdata[31]_INST_0_i_2_n_0\
    );
\bram_wdata[31]_INST_0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_wdata[28]_INST_0_i_3_n_0\,
      CO(3 downto 2) => \NLW_bram_wdata[31]_INST_0_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bram_wdata[31]_INST_0_i_3_n_2\,
      CO(0) => \bram_wdata[31]_INST_0_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bram_wdata[31]_INST_0_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => \p_0_in__0\(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => sequence_reg(31 downto 29)
    );
\bram_wdata[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_flag,
      I1 => mean_freq_num(31),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(31),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(63),
      O => \bram_wdata[31]_INST_0_i_4_n_0\
    );
\bram_wdata[31]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(31),
      I1 => var_mag_num(63),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(31),
      I4 => p_0_in_0(2),
      O => \bram_wdata[31]_INST_0_i_5_n_0\
    );
\bram_wdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[3]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[3]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(3),
      I5 => commit,
      O => bram_wdata(3)
    );
\bram_wdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(3),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(3),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[3]_INST_0_i_3_n_0\,
      O => \bram_wdata[3]_INST_0_i_1_n_0\
    );
\bram_wdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(3),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(3),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[3]_INST_0_i_4_n_0\,
      O => \bram_wdata[3]_INST_0_i_2_n_0\
    );
\bram_wdata[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(3),
      I1 => mean_freq_num(3),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(3),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(35),
      O => \bram_wdata[3]_INST_0_i_3_n_0\
    );
\bram_wdata[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(3),
      I1 => var_mag_num(35),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(3),
      I4 => p_0_in_0(2),
      O => \bram_wdata[3]_INST_0_i_4_n_0\
    );
\bram_wdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[4]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[4]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(4),
      I5 => commit,
      O => bram_wdata(4)
    );
\bram_wdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(4),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(4),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[4]_INST_0_i_4_n_0\,
      O => \bram_wdata[4]_INST_0_i_1_n_0\
    );
\bram_wdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(4),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(4),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[4]_INST_0_i_5_n_0\,
      O => \bram_wdata[4]_INST_0_i_2_n_0\
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
      O(3 downto 0) => \p_0_in__0\(4 downto 1),
      S(3 downto 0) => sequence_reg(4 downto 1)
    );
\bram_wdata[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(4),
      I1 => mean_freq_num(4),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(4),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(36),
      O => \bram_wdata[4]_INST_0_i_4_n_0\
    );
\bram_wdata[4]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(4),
      I1 => var_mag_num(36),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(4),
      I4 => p_0_in_0(2),
      O => \bram_wdata[4]_INST_0_i_5_n_0\
    );
\bram_wdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[5]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[5]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(5),
      I5 => commit,
      O => bram_wdata(5)
    );
\bram_wdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(5),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(5),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[5]_INST_0_i_3_n_0\,
      O => \bram_wdata[5]_INST_0_i_1_n_0\
    );
\bram_wdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(5),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(5),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[5]_INST_0_i_4_n_0\,
      O => \bram_wdata[5]_INST_0_i_2_n_0\
    );
\bram_wdata[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(5),
      I1 => mean_freq_num(5),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(5),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(37),
      O => \bram_wdata[5]_INST_0_i_3_n_0\
    );
\bram_wdata[5]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(5),
      I1 => var_mag_num(37),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(5),
      I4 => p_0_in_0(2),
      O => \bram_wdata[5]_INST_0_i_4_n_0\
    );
\bram_wdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[6]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[6]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(6),
      I5 => commit,
      O => bram_wdata(6)
    );
\bram_wdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(6),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(6),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[6]_INST_0_i_3_n_0\,
      O => \bram_wdata[6]_INST_0_i_1_n_0\
    );
\bram_wdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(6),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(6),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[6]_INST_0_i_4_n_0\,
      O => \bram_wdata[6]_INST_0_i_2_n_0\
    );
\bram_wdata[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(6),
      I1 => mean_freq_num(6),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(6),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(38),
      O => \bram_wdata[6]_INST_0_i_3_n_0\
    );
\bram_wdata[6]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(6),
      I1 => var_mag_num(38),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(6),
      I4 => p_0_in_0(2),
      O => \bram_wdata[6]_INST_0_i_4_n_0\
    );
\bram_wdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[7]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[7]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(7),
      I5 => commit,
      O => bram_wdata(7)
    );
\bram_wdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(7),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(7),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[7]_INST_0_i_3_n_0\,
      O => \bram_wdata[7]_INST_0_i_1_n_0\
    );
\bram_wdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(7),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(7),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[7]_INST_0_i_4_n_0\,
      O => \bram_wdata[7]_INST_0_i_2_n_0\
    );
\bram_wdata[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(7),
      I1 => mean_freq_num(7),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(7),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(39),
      O => \bram_wdata[7]_INST_0_i_3_n_0\
    );
\bram_wdata[7]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(7),
      I1 => var_mag_num(39),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(7),
      I4 => p_0_in_0(2),
      O => \bram_wdata[7]_INST_0_i_4_n_0\
    );
\bram_wdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[8]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[8]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(8),
      I5 => commit,
      O => bram_wdata(8)
    );
\bram_wdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(8),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(8),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[8]_INST_0_i_4_n_0\,
      O => \bram_wdata[8]_INST_0_i_1_n_0\
    );
\bram_wdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(8),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(8),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[8]_INST_0_i_5_n_0\,
      O => \bram_wdata[8]_INST_0_i_2_n_0\
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
      O(3 downto 0) => \p_0_in__0\(8 downto 5),
      S(3 downto 0) => sequence_reg(8 downto 5)
    );
\bram_wdata[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(8),
      I1 => mean_freq_num(8),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(8),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(40),
      O => \bram_wdata[8]_INST_0_i_4_n_0\
    );
\bram_wdata[8]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(8),
      I1 => var_mag_num(40),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(8),
      I4 => p_0_in_0(2),
      O => \bram_wdata[8]_INST_0_i_5_n_0\
    );
\bram_wdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B800"
    )
        port map (
      I0 => \bram_wdata[9]_INST_0_i_1_n_0\,
      I1 => p_0_in_0(4),
      I2 => \bram_wdata[9]_INST_0_i_2_n_0\,
      I3 => \^busy_reg_0\,
      I4 => \p_0_in__0\(9),
      I5 => commit,
      O => bram_wdata(9)
    );
\bram_wdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(9),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(9),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[9]_INST_0_i_3_n_0\,
      O => \bram_wdata[9]_INST_0_i_1_n_0\
    );
\bram_wdata[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500ED4D0500E848"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => hist_mag_rd_data(9),
      I2 => p_0_in_0(5),
      I3 => hist_freq_rd_data(9),
      I4 => p_0_in_0(7),
      I5 => \bram_wdata[9]_INST_0_i_4_n_0\,
      O => \bram_wdata[9]_INST_0_i_2_n_0\
    );
\bram_wdata[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => psk_spike_count(9),
      I1 => mean_freq_num(9),
      I2 => p_0_in_0(3),
      I3 => mean_mag_num(9),
      I4 => p_0_in_0(2),
      I5 => var_freq_num(41),
      O => \bram_wdata[9]_INST_0_i_3_n_0\
    );
\bram_wdata[9]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => var_freq_num(9),
      I1 => var_mag_num(41),
      I2 => p_0_in_0(3),
      I3 => var_mag_num(9),
      I4 => p_0_in_0(2),
      O => \bram_wdata[9]_INST_0_i_4_n_0\
    );
\bram_we[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => commit,
      I1 => \^busy_reg_0\,
      O => bram_en
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04F40000"
    )
        port map (
      I0 => commit,
      I1 => frame_done,
      I2 => \^busy_reg_0\,
      I3 => busy6_out,
      I4 => aresetn,
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(5),
      I2 => \word_index[5]_i_4_n_0\,
      I3 => p_0_in_0(7),
      I4 => p_0_in_0(6),
      I5 => \^busy_reg_0\,
      O => busy6_out
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => \^busy_reg_0\,
      R => '0'
    );
commit_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => busy6_out,
      I1 => commit,
      I2 => \^busy_reg_0\,
      I3 => aresetn,
      O => commit_i_1_n_0
    );
commit_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => commit_i_1_n_0,
      Q => commit,
      R => '0'
    );
\hist_freq_rd_addr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08400000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(7),
      I3 => p_0_in_0(6),
      I4 => \^busy_reg_0\,
      O => hist_freq_rd_addr(0)
    );
\hist_freq_rd_addr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08400000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(7),
      I3 => p_0_in_0(6),
      I4 => \^busy_reg_0\,
      O => hist_freq_rd_addr(1)
    );
\hist_freq_rd_addr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08200000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(6),
      I2 => p_0_in_0(7),
      I3 => p_0_in_0(5),
      I4 => \^busy_reg_0\,
      O => hist_freq_rd_addr(2)
    );
\hist_freq_rd_addr[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => p_0_in_0(7),
      I2 => p_0_in_0(5),
      I3 => \^busy_reg_0\,
      O => hist_freq_rd_addr(3)
    );
\hist_mag_rd_addr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(7),
      I3 => p_0_in_0(6),
      I4 => \^busy_reg_0\,
      O => hist_mag_rd_addr(0)
    );
\hist_mag_rd_addr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(7),
      I3 => p_0_in_0(6),
      I4 => \^busy_reg_0\,
      O => hist_mag_rd_addr(1)
    );
\hist_mag_rd_addr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00280000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(6),
      I2 => p_0_in_0(5),
      I3 => p_0_in_0(7),
      I4 => \^busy_reg_0\,
      O => hist_mag_rd_addr(2)
    );
\hist_mag_rd_addr[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => p_0_in_0(7),
      I2 => p_0_in_0(5),
      I3 => \^busy_reg_0\,
      O => hist_mag_rd_addr(3)
    );
\sequence[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => clear
    );
\sequence[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => commit,
      I1 => \^busy_reg_0\,
      O => commit2_out
    );
\sequence[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sequence_reg(0),
      O => \p_0_in__0\(0)
    );
\sequence_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[0]_i_3_n_7\,
      Q => sequence_reg(0),
      R => clear
    );
\sequence_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sequence_reg[0]_i_3_n_0\,
      CO(2) => \sequence_reg[0]_i_3_n_1\,
      CO(1) => \sequence_reg[0]_i_3_n_2\,
      CO(0) => \sequence_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sequence_reg[0]_i_3_n_4\,
      O(2) => \sequence_reg[0]_i_3_n_5\,
      O(1) => \sequence_reg[0]_i_3_n_6\,
      O(0) => \sequence_reg[0]_i_3_n_7\,
      S(3 downto 1) => sequence_reg(3 downto 1),
      S(0) => \p_0_in__0\(0)
    );
\sequence_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[8]_i_1_n_5\,
      Q => sequence_reg(10),
      R => clear
    );
\sequence_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[8]_i_1_n_4\,
      Q => sequence_reg(11),
      R => clear
    );
\sequence_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
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
      CE => commit2_out,
      D => \sequence_reg[12]_i_1_n_6\,
      Q => sequence_reg(13),
      R => clear
    );
\sequence_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[12]_i_1_n_5\,
      Q => sequence_reg(14),
      R => clear
    );
\sequence_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[12]_i_1_n_4\,
      Q => sequence_reg(15),
      R => clear
    );
\sequence_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
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
      CE => commit2_out,
      D => \sequence_reg[16]_i_1_n_6\,
      Q => sequence_reg(17),
      R => clear
    );
\sequence_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[16]_i_1_n_5\,
      Q => sequence_reg(18),
      R => clear
    );
\sequence_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[16]_i_1_n_4\,
      Q => sequence_reg(19),
      R => clear
    );
\sequence_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[0]_i_3_n_6\,
      Q => sequence_reg(1),
      R => clear
    );
\sequence_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
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
      CE => commit2_out,
      D => \sequence_reg[20]_i_1_n_6\,
      Q => sequence_reg(21),
      R => clear
    );
\sequence_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[20]_i_1_n_5\,
      Q => sequence_reg(22),
      R => clear
    );
\sequence_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[20]_i_1_n_4\,
      Q => sequence_reg(23),
      R => clear
    );
\sequence_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
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
      CE => commit2_out,
      D => \sequence_reg[24]_i_1_n_6\,
      Q => sequence_reg(25),
      R => clear
    );
\sequence_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[24]_i_1_n_5\,
      Q => sequence_reg(26),
      R => clear
    );
\sequence_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[24]_i_1_n_4\,
      Q => sequence_reg(27),
      R => clear
    );
\sequence_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
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
      CE => commit2_out,
      D => \sequence_reg[28]_i_1_n_6\,
      Q => sequence_reg(29),
      R => clear
    );
\sequence_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[0]_i_3_n_5\,
      Q => sequence_reg(2),
      R => clear
    );
\sequence_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[28]_i_1_n_5\,
      Q => sequence_reg(30),
      R => clear
    );
\sequence_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[28]_i_1_n_4\,
      Q => sequence_reg(31),
      R => clear
    );
\sequence_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[0]_i_3_n_4\,
      Q => sequence_reg(3),
      R => clear
    );
\sequence_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[4]_i_1_n_7\,
      Q => sequence_reg(4),
      R => clear
    );
\sequence_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_reg[0]_i_3_n_0\,
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
      CE => commit2_out,
      D => \sequence_reg[4]_i_1_n_6\,
      Q => sequence_reg(5),
      R => clear
    );
\sequence_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[4]_i_1_n_5\,
      Q => sequence_reg(6),
      R => clear
    );
\sequence_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
      D => \sequence_reg[4]_i_1_n_4\,
      Q => sequence_reg(7),
      R => clear
    );
\sequence_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => commit2_out,
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
      CE => commit2_out,
      D => \sequence_reg[8]_i_1_n_6\,
      Q => sequence_reg(9),
      R => clear
    );
\word_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in_0(2),
      O => p_0_in(0)
    );
\word_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(2),
      O => p_0_in(1)
    );
\word_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(2),
      O => p_0_in(2)
    );
\word_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(4),
      I3 => p_0_in_0(5),
      O => p_0_in(3)
    );
\word_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(5),
      I3 => p_0_in_0(4),
      I4 => p_0_in_0(6),
      O => p_0_in(4)
    );
\word_index[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \^busy_reg_0\,
      I1 => commit,
      I2 => frame_done,
      I3 => aresetn,
      O => \word_index[5]_i_1_n_0\
    );
\word_index[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(5),
      I2 => \word_index[5]_i_4_n_0\,
      I3 => p_0_in_0(7),
      I4 => p_0_in_0(6),
      I5 => \^busy_reg_0\,
      O => word_index
    );
\word_index[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(5),
      I3 => p_0_in_0(6),
      I4 => p_0_in_0(4),
      I5 => p_0_in_0(7),
      O => p_0_in(5)
    );
\word_index[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(3),
      O => \word_index[5]_i_4_n_0\
    );
\word_index_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => word_index,
      D => p_0_in(0),
      Q => p_0_in_0(2),
      S => \word_index[5]_i_1_n_0\
    );
\word_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_index,
      D => p_0_in(1),
      Q => p_0_in_0(3),
      R => \word_index[5]_i_1_n_0\
    );
\word_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_index,
      D => p_0_in(2),
      Q => p_0_in_0(4),
      R => \word_index[5]_i_1_n_0\
    );
\word_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_index,
      D => p_0_in(3),
      Q => p_0_in_0(5),
      R => \word_index[5]_i_1_n_0\
    );
\word_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_index,
      D => p_0_in(4),
      Q => p_0_in_0(6),
      R => \word_index[5]_i_1_n_0\
    );
\word_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_index,
      D => p_0_in(5),
      Q => p_0_in_0(7),
      R => \word_index[5]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_feature_bram_writer_0_0,feature_bram_writer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "feature_bram_writer,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \^bram_en\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 60000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_feature_bram_writer
     port map (
      aclk => aclk,
      aresetn => aresetn,
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
