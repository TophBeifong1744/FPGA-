-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 27 03:41:58 2026
-- Host        : Toph running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               F:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw_v5/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_ad9226_stage1_driver_0_0/design_1_ad9226_stage1_driver_0_0_sim_netlist.vhdl
-- Design      : design_1_ad9226_stage1_driver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ad9226_stage1_driver_0_0_ad9226_data_path is
  port (
    adc_valid : out STD_LOGIC;
    \sample_reset_sync_reg[1]\ : out STD_LOGIC;
    adc_otr : out STD_LOGIC;
    adc_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    sample_valid : in STD_LOGIC;
    clk_60m_sample : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    core_aresetn : in STD_LOGIC;
    ad_otr_sample : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ad9226_stage1_driver_0_0_ad9226_data_path : entity is "ad9226_data_path";
end design_1_ad9226_stage1_driver_0_0_ad9226_data_path;

architecture STRUCTURE of design_1_ad9226_stage1_driver_0_0_ad9226_data_path is
  signal data_dc_removed1 : STD_LOGIC;
  signal data_dc_removed10_in : STD_LOGIC;
  signal \data_dc_removed1__5_carry__0_n_3\ : STD_LOGIC;
  signal \data_dc_removed1__5_carry_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed1__5_carry_i_2_n_0\ : STD_LOGIC;
  signal \data_dc_removed1__5_carry_i_3_n_0\ : STD_LOGIC;
  signal \data_dc_removed1__5_carry_i_4_n_0\ : STD_LOGIC;
  signal \data_dc_removed1__5_carry_n_0\ : STD_LOGIC;
  signal \data_dc_removed1__5_carry_n_1\ : STD_LOGIC;
  signal \data_dc_removed1__5_carry_n_2\ : STD_LOGIC;
  signal \data_dc_removed1__5_carry_n_3\ : STD_LOGIC;
  signal \data_dc_removed1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_dc_removed1_carry__0_n_3\ : STD_LOGIC;
  signal data_dc_removed1_carry_i_1_n_3 : STD_LOGIC;
  signal data_dc_removed1_carry_i_2_n_0 : STD_LOGIC;
  signal data_dc_removed1_carry_i_3_n_0 : STD_LOGIC;
  signal data_dc_removed1_carry_i_4_n_0 : STD_LOGIC;
  signal data_dc_removed1_carry_i_5_n_0 : STD_LOGIC;
  signal data_dc_removed1_carry_i_6_n_0 : STD_LOGIC;
  signal data_dc_removed1_carry_n_0 : STD_LOGIC;
  signal data_dc_removed1_carry_n_1 : STD_LOGIC;
  signal data_dc_removed1_carry_n_2 : STD_LOGIC;
  signal data_dc_removed1_carry_n_3 : STD_LOGIC;
  signal \data_dc_removed[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_dc_removed[9]_i_1_n_0\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[0]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[10]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[11]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[12]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[13]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[14]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[15]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[16]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[17]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[18]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[1]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[2]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[3]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[4]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[5]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[6]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[7]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[8]\ : STD_LOGIC;
  signal \dc_accumulator_reg_n_0_[9]\ : STD_LOGIC;
  signal dc_error_wide : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \dc_error_wide_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \dc_error_wide_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \dc_error_wide_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \dc_error_wide_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \dc_error_wide_carry__0_n_0\ : STD_LOGIC;
  signal \dc_error_wide_carry__0_n_1\ : STD_LOGIC;
  signal \dc_error_wide_carry__0_n_2\ : STD_LOGIC;
  signal \dc_error_wide_carry__0_n_3\ : STD_LOGIC;
  signal \dc_error_wide_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \dc_error_wide_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \dc_error_wide_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \dc_error_wide_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \dc_error_wide_carry__1_n_0\ : STD_LOGIC;
  signal \dc_error_wide_carry__1_n_1\ : STD_LOGIC;
  signal \dc_error_wide_carry__1_n_2\ : STD_LOGIC;
  signal \dc_error_wide_carry__1_n_3\ : STD_LOGIC;
  signal dc_error_wide_carry_i_5_n_0 : STD_LOGIC;
  signal dc_error_wide_carry_i_6_n_0 : STD_LOGIC;
  signal dc_error_wide_carry_i_7_n_0 : STD_LOGIC;
  signal dc_error_wide_carry_i_8_n_0 : STD_LOGIC;
  signal dc_error_wide_carry_n_0 : STD_LOGIC;
  signal dc_error_wide_carry_n_1 : STD_LOGIC;
  signal dc_error_wide_carry_n_2 : STD_LOGIC;
  signal dc_error_wide_carry_n_3 : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_n_1\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_n_2\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_n_3\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_n_4\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_n_5\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_n_6\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__0_n_7\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_n_1\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_n_2\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_n_3\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_n_4\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_n_5\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_n_6\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__1_n_7\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_n_1\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_n_2\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_n_3\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_n_4\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_n_5\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_n_6\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__2_n_7\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_n_1\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_n_2\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_n_3\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_n_4\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_n_5\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_n_6\ : STD_LOGIC;
  signal \dc_next_wide__0_carry__3_n_7\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_n_0\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_n_1\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_n_2\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_n_3\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_n_4\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_n_5\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_n_6\ : STD_LOGIC;
  signal \dc_next_wide__0_carry_n_7\ : STD_LOGIC;
  signal otr_out_reg : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal sample_extended : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^sample_reset_sync_reg[1]\ : STD_LOGIC;
  signal \NLW_data_dc_removed1__5_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_dc_removed1__5_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_data_dc_removed1__5_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_dc_removed1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_dc_removed1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_data_dc_removed1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_dc_removed1_carry_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_data_dc_removed1_carry_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dc_next_wide__0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_dc_removed[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_dc_removed[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_dc_removed[11]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_dc_removed[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_dc_removed[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_dc_removed[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_dc_removed[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_dc_removed[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_dc_removed[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_dc_removed[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_dc_removed[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_dc_removed[9]_i_1\ : label is "soft_lutpair5";
  attribute HLUTNM : string;
  attribute HLUTNM of \dc_next_wide__0_carry__0_i_1\ : label is "lutpair5";
  attribute HLUTNM of \dc_next_wide__0_carry__0_i_2\ : label is "lutpair4";
  attribute HLUTNM of \dc_next_wide__0_carry__0_i_3\ : label is "lutpair3";
  attribute HLUTNM of \dc_next_wide__0_carry__0_i_4\ : label is "lutpair2";
  attribute HLUTNM of \dc_next_wide__0_carry__0_i_5\ : label is "lutpair6";
  attribute HLUTNM of \dc_next_wide__0_carry__0_i_6\ : label is "lutpair5";
  attribute HLUTNM of \dc_next_wide__0_carry__0_i_7\ : label is "lutpair4";
  attribute HLUTNM of \dc_next_wide__0_carry__0_i_8\ : label is "lutpair3";
  attribute HLUTNM of \dc_next_wide__0_carry__1_i_2\ : label is "lutpair8";
  attribute HLUTNM of \dc_next_wide__0_carry__1_i_3\ : label is "lutpair7";
  attribute HLUTNM of \dc_next_wide__0_carry__1_i_4\ : label is "lutpair6";
  attribute HLUTNM of \dc_next_wide__0_carry__1_i_7\ : label is "lutpair8";
  attribute HLUTNM of \dc_next_wide__0_carry__1_i_8\ : label is "lutpair7";
  attribute HLUTNM of \dc_next_wide__0_carry_i_1\ : label is "lutpair1";
  attribute HLUTNM of \dc_next_wide__0_carry_i_2\ : label is "lutpair0";
  attribute HLUTNM of \dc_next_wide__0_carry_i_3\ : label is "lutpair9";
  attribute HLUTNM of \dc_next_wide__0_carry_i_5\ : label is "lutpair2";
  attribute HLUTNM of \dc_next_wide__0_carry_i_6\ : label is "lutpair1";
  attribute HLUTNM of \dc_next_wide__0_carry_i_7\ : label is "lutpair0";
  attribute HLUTNM of \dc_next_wide__0_carry_i_8\ : label is "lutpair9";
begin
  \sample_reset_sync_reg[1]\ <= \^sample_reset_sync_reg[1]\;
\data_dc_removed1__5_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_dc_removed1__5_carry_n_0\,
      CO(2) => \data_dc_removed1__5_carry_n_1\,
      CO(1) => \data_dc_removed1__5_carry_n_2\,
      CO(0) => \data_dc_removed1__5_carry_n_3\,
      CYINIT => '0',
      DI(3) => \data_dc_removed1__5_carry_i_1_n_0\,
      DI(2) => \data_dc_removed1__5_carry_i_2_n_0\,
      DI(1) => \data_dc_removed1__5_carry_i_3_n_0\,
      DI(0) => dc_error_wide(11),
      O(3 downto 0) => \NLW_data_dc_removed1__5_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => data_dc_removed1_carry_i_1_n_3,
      S(2) => data_dc_removed1_carry_i_1_n_3,
      S(1) => data_dc_removed1_carry_i_1_n_3,
      S(0) => \data_dc_removed1__5_carry_i_4_n_0\
    );
\data_dc_removed1__5_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_dc_removed1__5_carry_n_0\,
      CO(3 downto 2) => \NLW_data_dc_removed1__5_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => data_dc_removed10_in,
      CO(0) => \data_dc_removed1__5_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => dc_error_wide(20),
      O(3 downto 0) => \NLW_data_dc_removed1__5_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => data_dc_removed1_carry_i_1_n_3,
      S(0) => data_dc_removed1_carry_i_1_n_3
    );
\data_dc_removed1__5_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_dc_removed1_carry_i_1_n_3,
      O => dc_error_wide(20)
    );
\data_dc_removed1__5_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_dc_removed1_carry_i_1_n_3,
      O => \data_dc_removed1__5_carry_i_1_n_0\
    );
\data_dc_removed1__5_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_dc_removed1_carry_i_1_n_3,
      O => \data_dc_removed1__5_carry_i_2_n_0\
    );
\data_dc_removed1__5_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_dc_removed1_carry_i_1_n_3,
      O => \data_dc_removed1__5_carry_i_3_n_0\
    );
\data_dc_removed1__5_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dc_error_wide(10),
      I1 => dc_error_wide(11),
      O => \data_dc_removed1__5_carry_i_4_n_0\
    );
data_dc_removed1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data_dc_removed1_carry_n_0,
      CO(2) => data_dc_removed1_carry_n_1,
      CO(1) => data_dc_removed1_carry_n_2,
      CO(0) => data_dc_removed1_carry_n_3,
      CYINIT => '0',
      DI(3) => data_dc_removed1_carry_i_1_n_3,
      DI(2) => data_dc_removed1_carry_i_1_n_3,
      DI(1) => data_dc_removed1_carry_i_1_n_3,
      DI(0) => data_dc_removed1_carry_i_2_n_0,
      O(3 downto 0) => NLW_data_dc_removed1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => data_dc_removed1_carry_i_3_n_0,
      S(2) => data_dc_removed1_carry_i_4_n_0,
      S(1) => data_dc_removed1_carry_i_5_n_0,
      S(0) => data_dc_removed1_carry_i_6_n_0
    );
\data_dc_removed1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => data_dc_removed1_carry_n_0,
      CO(3 downto 2) => \NLW_data_dc_removed1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => data_dc_removed1,
      CO(0) => \data_dc_removed1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => data_dc_removed1_carry_i_1_n_3,
      O(3 downto 0) => \NLW_data_dc_removed1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \data_dc_removed1_carry__0_i_1_n_0\,
      S(0) => \data_dc_removed1_carry__0_i_2_n_0\
    );
\data_dc_removed1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_dc_removed1_carry_i_1_n_3,
      O => \data_dc_removed1_carry__0_i_1_n_0\
    );
\data_dc_removed1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_dc_removed1_carry_i_1_n_3,
      O => \data_dc_removed1_carry__0_i_2_n_0\
    );
data_dc_removed1_carry_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_error_wide_carry__1_n_0\,
      CO(3 downto 1) => NLW_data_dc_removed1_carry_i_1_CO_UNCONNECTED(3 downto 1),
      CO(0) => data_dc_removed1_carry_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_data_dc_removed1_carry_i_1_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
data_dc_removed1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dc_error_wide(11),
      O => data_dc_removed1_carry_i_2_n_0
    );
data_dc_removed1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_dc_removed1_carry_i_1_n_3,
      O => data_dc_removed1_carry_i_3_n_0
    );
data_dc_removed1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_dc_removed1_carry_i_1_n_3,
      O => data_dc_removed1_carry_i_4_n_0
    );
data_dc_removed1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_dc_removed1_carry_i_1_n_3,
      O => data_dc_removed1_carry_i_5_n_0
    );
data_dc_removed1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dc_error_wide(11),
      I1 => dc_error_wide(10),
      O => data_dc_removed1_carry_i_6_n_0
    );
\data_dc_removed[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(0),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[0]_i_1_n_0\
    );
\data_dc_removed[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(10),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[10]_i_1_n_0\
    );
\data_dc_removed[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => sample_valid,
      I1 => data_dc_removed10_in,
      I2 => data_dc_removed1,
      I3 => dc_error_wide(11),
      O => \data_dc_removed[11]_i_1_n_0\
    );
\data_dc_removed[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_aresetn,
      O => \^sample_reset_sync_reg[1]\
    );
\data_dc_removed[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(1),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[1]_i_1_n_0\
    );
\data_dc_removed[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(2),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[2]_i_1_n_0\
    );
\data_dc_removed[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(3),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[3]_i_1_n_0\
    );
\data_dc_removed[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(4),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[4]_i_1_n_0\
    );
\data_dc_removed[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(5),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[5]_i_1_n_0\
    );
\data_dc_removed[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(6),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[6]_i_1_n_0\
    );
\data_dc_removed[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(7),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[7]_i_1_n_0\
    );
\data_dc_removed[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(8),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[8]_i_1_n_0\
    );
\data_dc_removed[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => sample_valid,
      I1 => dc_error_wide(9),
      I2 => data_dc_removed1,
      I3 => data_dc_removed10_in,
      O => \data_dc_removed[9]_i_1_n_0\
    );
\data_dc_removed_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[0]_i_1_n_0\,
      Q => adc_data(0)
    );
\data_dc_removed_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[10]_i_1_n_0\,
      Q => adc_data(10)
    );
\data_dc_removed_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[11]_i_1_n_0\,
      Q => adc_data(11)
    );
\data_dc_removed_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[1]_i_1_n_0\,
      Q => adc_data(1)
    );
\data_dc_removed_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[2]_i_1_n_0\,
      Q => adc_data(2)
    );
\data_dc_removed_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[3]_i_1_n_0\,
      Q => adc_data(3)
    );
\data_dc_removed_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[4]_i_1_n_0\,
      Q => adc_data(4)
    );
\data_dc_removed_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[5]_i_1_n_0\,
      Q => adc_data(5)
    );
\data_dc_removed_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[6]_i_1_n_0\,
      Q => adc_data(6)
    );
\data_dc_removed_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[7]_i_1_n_0\,
      Q => adc_data(7)
    );
\data_dc_removed_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[8]_i_1_n_0\,
      Q => adc_data(8)
    );
\data_dc_removed_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => \data_dc_removed[9]_i_1_n_0\,
      Q => adc_data(9)
    );
\dc_accumulator_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry_n_7\,
      Q => \dc_accumulator_reg_n_0_[0]\
    );
\dc_accumulator_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__1_n_5\,
      Q => \dc_accumulator_reg_n_0_[10]\
    );
\dc_accumulator_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__1_n_4\,
      Q => \dc_accumulator_reg_n_0_[11]\
    );
\dc_accumulator_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__2_n_7\,
      Q => \dc_accumulator_reg_n_0_[12]\
    );
\dc_accumulator_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__2_n_6\,
      Q => \dc_accumulator_reg_n_0_[13]\
    );
\dc_accumulator_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__2_n_5\,
      Q => \dc_accumulator_reg_n_0_[14]\
    );
\dc_accumulator_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__2_n_4\,
      Q => \dc_accumulator_reg_n_0_[15]\
    );
\dc_accumulator_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__3_n_7\,
      Q => \dc_accumulator_reg_n_0_[16]\
    );
\dc_accumulator_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__3_n_6\,
      Q => \dc_accumulator_reg_n_0_[17]\
    );
\dc_accumulator_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__3_n_5\,
      Q => \dc_accumulator_reg_n_0_[18]\
    );
\dc_accumulator_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__3_n_4\,
      Q => p_0_in0
    );
\dc_accumulator_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry_n_6\,
      Q => \dc_accumulator_reg_n_0_[1]\
    );
\dc_accumulator_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry_n_5\,
      Q => \dc_accumulator_reg_n_0_[2]\
    );
\dc_accumulator_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry_n_4\,
      Q => \dc_accumulator_reg_n_0_[3]\
    );
\dc_accumulator_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__0_n_7\,
      Q => \dc_accumulator_reg_n_0_[4]\
    );
\dc_accumulator_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__0_n_6\,
      Q => \dc_accumulator_reg_n_0_[5]\
    );
\dc_accumulator_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__0_n_5\,
      Q => \dc_accumulator_reg_n_0_[6]\
    );
\dc_accumulator_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__0_n_4\,
      Q => \dc_accumulator_reg_n_0_[7]\
    );
\dc_accumulator_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__1_n_7\,
      Q => \dc_accumulator_reg_n_0_[8]\
    );
\dc_accumulator_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => sample_valid,
      CLR => \^sample_reset_sync_reg[1]\,
      D => \dc_next_wide__0_carry__1_n_6\,
      Q => \dc_accumulator_reg_n_0_[9]\
    );
dc_error_wide_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dc_error_wide_carry_n_0,
      CO(2) => dc_error_wide_carry_n_1,
      CO(1) => dc_error_wide_carry_n_2,
      CO(0) => dc_error_wide_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => sample_extended(3 downto 0),
      O(3 downto 0) => dc_error_wide(3 downto 0),
      S(3) => dc_error_wide_carry_i_5_n_0,
      S(2) => dc_error_wide_carry_i_6_n_0,
      S(1) => dc_error_wide_carry_i_7_n_0,
      S(0) => dc_error_wide_carry_i_8_n_0
    );
\dc_error_wide_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dc_error_wide_carry_n_0,
      CO(3) => \dc_error_wide_carry__0_n_0\,
      CO(2) => \dc_error_wide_carry__0_n_1\,
      CO(1) => \dc_error_wide_carry__0_n_2\,
      CO(0) => \dc_error_wide_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sample_extended(7 downto 4),
      O(3 downto 0) => dc_error_wide(7 downto 4),
      S(3) => \dc_error_wide_carry__0_i_5_n_0\,
      S(2) => \dc_error_wide_carry__0_i_6_n_0\,
      S(1) => \dc_error_wide_carry__0_i_7_n_0\,
      S(0) => \dc_error_wide_carry__0_i_8_n_0\
    );
\dc_error_wide_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      O => sample_extended(7)
    );
\dc_error_wide_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(6),
      O => sample_extended(6)
    );
\dc_error_wide_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => sample_extended(5)
    );
\dc_error_wide_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(4),
      O => sample_extended(4)
    );
\dc_error_wide_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(7),
      I1 => \dc_accumulator_reg_n_0_[15]\,
      O => \dc_error_wide_carry__0_i_5_n_0\
    );
\dc_error_wide_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(6),
      I1 => \dc_accumulator_reg_n_0_[14]\,
      O => \dc_error_wide_carry__0_i_6_n_0\
    );
\dc_error_wide_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(5),
      I1 => \dc_accumulator_reg_n_0_[13]\,
      O => \dc_error_wide_carry__0_i_7_n_0\
    );
\dc_error_wide_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(4),
      I1 => \dc_accumulator_reg_n_0_[12]\,
      O => \dc_error_wide_carry__0_i_8_n_0\
    );
\dc_error_wide_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_error_wide_carry__0_n_0\,
      CO(3) => \dc_error_wide_carry__1_n_0\,
      CO(2) => \dc_error_wide_carry__1_n_1\,
      CO(1) => \dc_error_wide_carry__1_n_2\,
      CO(0) => \dc_error_wide_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => p_0_in0,
      DI(2 downto 0) => sample_extended(10 downto 8),
      O(3 downto 0) => dc_error_wide(11 downto 8),
      S(3) => \dc_error_wide_carry__1_i_4_n_0\,
      S(2) => \dc_error_wide_carry__1_i_5_n_0\,
      S(1) => \dc_error_wide_carry__1_i_6_n_0\,
      S(0) => \dc_error_wide_carry__1_i_7_n_0\
    );
\dc_error_wide_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(10),
      O => sample_extended(10)
    );
\dc_error_wide_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      O => sample_extended(9)
    );
\dc_error_wide_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      O => sample_extended(8)
    );
\dc_error_wide_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(11),
      I1 => p_0_in0,
      O => \dc_error_wide_carry__1_i_4_n_0\
    );
\dc_error_wide_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(10),
      I1 => \dc_accumulator_reg_n_0_[18]\,
      O => \dc_error_wide_carry__1_i_5_n_0\
    );
\dc_error_wide_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(9),
      I1 => \dc_accumulator_reg_n_0_[17]\,
      O => \dc_error_wide_carry__1_i_6_n_0\
    );
\dc_error_wide_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(8),
      I1 => \dc_accumulator_reg_n_0_[16]\,
      O => \dc_error_wide_carry__1_i_7_n_0\
    );
dc_error_wide_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      O => sample_extended(3)
    );
dc_error_wide_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      O => sample_extended(2)
    );
dc_error_wide_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      O => sample_extended(1)
    );
dc_error_wide_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => sample_extended(0)
    );
dc_error_wide_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(3),
      I1 => \dc_accumulator_reg_n_0_[11]\,
      O => dc_error_wide_carry_i_5_n_0
    );
dc_error_wide_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(2),
      I1 => \dc_accumulator_reg_n_0_[10]\,
      O => dc_error_wide_carry_i_6_n_0
    );
dc_error_wide_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => \dc_accumulator_reg_n_0_[9]\,
      O => dc_error_wide_carry_i_7_n_0
    );
dc_error_wide_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => \dc_accumulator_reg_n_0_[8]\,
      O => dc_error_wide_carry_i_8_n_0
    );
\dc_next_wide__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dc_next_wide__0_carry_n_0\,
      CO(2) => \dc_next_wide__0_carry_n_1\,
      CO(1) => \dc_next_wide__0_carry_n_2\,
      CO(0) => \dc_next_wide__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \dc_next_wide__0_carry_i_1_n_0\,
      DI(2) => \dc_next_wide__0_carry_i_2_n_0\,
      DI(1) => \dc_next_wide__0_carry_i_3_n_0\,
      DI(0) => \dc_next_wide__0_carry_i_4_n_0\,
      O(3) => \dc_next_wide__0_carry_n_4\,
      O(2) => \dc_next_wide__0_carry_n_5\,
      O(1) => \dc_next_wide__0_carry_n_6\,
      O(0) => \dc_next_wide__0_carry_n_7\,
      S(3) => \dc_next_wide__0_carry_i_5_n_0\,
      S(2) => \dc_next_wide__0_carry_i_6_n_0\,
      S(1) => \dc_next_wide__0_carry_i_7_n_0\,
      S(0) => \dc_next_wide__0_carry_i_8_n_0\
    );
\dc_next_wide__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_next_wide__0_carry_n_0\,
      CO(3) => \dc_next_wide__0_carry__0_n_0\,
      CO(2) => \dc_next_wide__0_carry__0_n_1\,
      CO(1) => \dc_next_wide__0_carry__0_n_2\,
      CO(0) => \dc_next_wide__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \dc_next_wide__0_carry__0_i_1_n_0\,
      DI(2) => \dc_next_wide__0_carry__0_i_2_n_0\,
      DI(1) => \dc_next_wide__0_carry__0_i_3_n_0\,
      DI(0) => \dc_next_wide__0_carry__0_i_4_n_0\,
      O(3) => \dc_next_wide__0_carry__0_n_4\,
      O(2) => \dc_next_wide__0_carry__0_n_5\,
      O(1) => \dc_next_wide__0_carry__0_n_6\,
      O(0) => \dc_next_wide__0_carry__0_n_7\,
      S(3) => \dc_next_wide__0_carry__0_i_5_n_0\,
      S(2) => \dc_next_wide__0_carry__0_i_6_n_0\,
      S(1) => \dc_next_wide__0_carry__0_i_7_n_0\,
      S(0) => \dc_next_wide__0_carry__0_i_8_n_0\
    );
\dc_next_wide__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q(6),
      I1 => \dc_accumulator_reg_n_0_[6]\,
      I2 => \dc_accumulator_reg_n_0_[14]\,
      O => \dc_next_wide__0_carry__0_i_1_n_0\
    );
\dc_next_wide__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q(5),
      I1 => \dc_accumulator_reg_n_0_[5]\,
      I2 => \dc_accumulator_reg_n_0_[13]\,
      O => \dc_next_wide__0_carry__0_i_2_n_0\
    );
\dc_next_wide__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q(4),
      I1 => \dc_accumulator_reg_n_0_[4]\,
      I2 => \dc_accumulator_reg_n_0_[12]\,
      O => \dc_next_wide__0_carry__0_i_3_n_0\
    );
\dc_next_wide__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q(3),
      I1 => \dc_accumulator_reg_n_0_[3]\,
      I2 => \dc_accumulator_reg_n_0_[11]\,
      O => \dc_next_wide__0_carry__0_i_4_n_0\
    );
\dc_next_wide__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(7),
      I1 => \dc_accumulator_reg_n_0_[7]\,
      I2 => \dc_accumulator_reg_n_0_[15]\,
      I3 => \dc_next_wide__0_carry__0_i_1_n_0\,
      O => \dc_next_wide__0_carry__0_i_5_n_0\
    );
\dc_next_wide__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(6),
      I1 => \dc_accumulator_reg_n_0_[6]\,
      I2 => \dc_accumulator_reg_n_0_[14]\,
      I3 => \dc_next_wide__0_carry__0_i_2_n_0\,
      O => \dc_next_wide__0_carry__0_i_6_n_0\
    );
\dc_next_wide__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(5),
      I1 => \dc_accumulator_reg_n_0_[5]\,
      I2 => \dc_accumulator_reg_n_0_[13]\,
      I3 => \dc_next_wide__0_carry__0_i_3_n_0\,
      O => \dc_next_wide__0_carry__0_i_7_n_0\
    );
\dc_next_wide__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(4),
      I1 => \dc_accumulator_reg_n_0_[4]\,
      I2 => \dc_accumulator_reg_n_0_[12]\,
      I3 => \dc_next_wide__0_carry__0_i_4_n_0\,
      O => \dc_next_wide__0_carry__0_i_8_n_0\
    );
\dc_next_wide__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_next_wide__0_carry__0_n_0\,
      CO(3) => \dc_next_wide__0_carry__1_n_0\,
      CO(2) => \dc_next_wide__0_carry__1_n_1\,
      CO(1) => \dc_next_wide__0_carry__1_n_2\,
      CO(0) => \dc_next_wide__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \dc_next_wide__0_carry__1_i_1_n_0\,
      DI(2) => \dc_next_wide__0_carry__1_i_2_n_0\,
      DI(1) => \dc_next_wide__0_carry__1_i_3_n_0\,
      DI(0) => \dc_next_wide__0_carry__1_i_4_n_0\,
      O(3) => \dc_next_wide__0_carry__1_n_4\,
      O(2) => \dc_next_wide__0_carry__1_n_5\,
      O(1) => \dc_next_wide__0_carry__1_n_6\,
      O(0) => \dc_next_wide__0_carry__1_n_7\,
      S(3) => \dc_next_wide__0_carry__1_i_5_n_0\,
      S(2) => \dc_next_wide__0_carry__1_i_6_n_0\,
      S(1) => \dc_next_wide__0_carry__1_i_7_n_0\,
      S(0) => \dc_next_wide__0_carry__1_i_8_n_0\
    );
\dc_next_wide__0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => p_0_in0,
      O => \dc_next_wide__0_carry__1_i_1_n_0\
    );
\dc_next_wide__0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q(9),
      I1 => \dc_accumulator_reg_n_0_[9]\,
      I2 => \dc_accumulator_reg_n_0_[17]\,
      O => \dc_next_wide__0_carry__1_i_2_n_0\
    );
\dc_next_wide__0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q(8),
      I1 => \dc_accumulator_reg_n_0_[8]\,
      I2 => \dc_accumulator_reg_n_0_[16]\,
      O => \dc_next_wide__0_carry__1_i_3_n_0\
    );
\dc_next_wide__0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q(7),
      I1 => \dc_accumulator_reg_n_0_[7]\,
      I2 => \dc_accumulator_reg_n_0_[15]\,
      O => \dc_next_wide__0_carry__1_i_4_n_0\
    );
\dc_next_wide__0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696996966996"
    )
        port map (
      I0 => p_0_in0,
      I1 => Q(11),
      I2 => \dc_accumulator_reg_n_0_[11]\,
      I3 => \dc_accumulator_reg_n_0_[18]\,
      I4 => \dc_accumulator_reg_n_0_[10]\,
      I5 => Q(10),
      O => \dc_next_wide__0_carry__1_i_5_n_0\
    );
\dc_next_wide__0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dc_next_wide__0_carry__1_i_2_n_0\,
      I1 => Q(10),
      I2 => \dc_accumulator_reg_n_0_[10]\,
      I3 => \dc_accumulator_reg_n_0_[18]\,
      O => \dc_next_wide__0_carry__1_i_6_n_0\
    );
\dc_next_wide__0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(9),
      I1 => \dc_accumulator_reg_n_0_[9]\,
      I2 => \dc_accumulator_reg_n_0_[17]\,
      I3 => \dc_next_wide__0_carry__1_i_3_n_0\,
      O => \dc_next_wide__0_carry__1_i_7_n_0\
    );
\dc_next_wide__0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(8),
      I1 => \dc_accumulator_reg_n_0_[8]\,
      I2 => \dc_accumulator_reg_n_0_[16]\,
      I3 => \dc_next_wide__0_carry__1_i_4_n_0\,
      O => \dc_next_wide__0_carry__1_i_8_n_0\
    );
\dc_next_wide__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_next_wide__0_carry__1_n_0\,
      CO(3) => \dc_next_wide__0_carry__2_n_0\,
      CO(2) => \dc_next_wide__0_carry__2_n_1\,
      CO(1) => \dc_next_wide__0_carry__2_n_2\,
      CO(0) => \dc_next_wide__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \dc_accumulator_reg_n_0_[14]\,
      DI(2) => \dc_accumulator_reg_n_0_[13]\,
      DI(1) => \dc_next_wide__0_carry__2_i_1_n_0\,
      DI(0) => \dc_next_wide__0_carry__2_i_2_n_0\,
      O(3) => \dc_next_wide__0_carry__2_n_4\,
      O(2) => \dc_next_wide__0_carry__2_n_5\,
      O(1) => \dc_next_wide__0_carry__2_n_6\,
      O(0) => \dc_next_wide__0_carry__2_n_7\,
      S(3) => \dc_next_wide__0_carry__2_i_3_n_0\,
      S(2) => \dc_next_wide__0_carry__2_i_4_n_0\,
      S(1) => \dc_next_wide__0_carry__2_i_5_n_0\,
      S(0) => \dc_next_wide__0_carry__2_i_6_n_0\
    );
\dc_next_wide__0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE8E"
    )
        port map (
      I0 => p_0_in0,
      I1 => \dc_accumulator_reg_n_0_[12]\,
      I2 => Q(11),
      I3 => \dc_accumulator_reg_n_0_[11]\,
      O => \dc_next_wide__0_carry__2_i_1_n_0\
    );
\dc_next_wide__0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => p_0_in0,
      O => \dc_next_wide__0_carry__2_i_2_n_0\
    );
\dc_next_wide__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[14]\,
      I1 => \dc_accumulator_reg_n_0_[15]\,
      O => \dc_next_wide__0_carry__2_i_3_n_0\
    );
\dc_next_wide__0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[13]\,
      I1 => \dc_accumulator_reg_n_0_[14]\,
      O => \dc_next_wide__0_carry__2_i_4_n_0\
    );
\dc_next_wide__0_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBB0044F"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => \dc_accumulator_reg_n_0_[12]\,
      I3 => p_0_in0,
      I4 => \dc_accumulator_reg_n_0_[13]\,
      O => \dc_next_wide__0_carry__2_i_5_n_0\
    );
\dc_next_wide__0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"93C9"
    )
        port map (
      I0 => p_0_in0,
      I1 => \dc_accumulator_reg_n_0_[12]\,
      I2 => \dc_accumulator_reg_n_0_[11]\,
      I3 => Q(11),
      O => \dc_next_wide__0_carry__2_i_6_n_0\
    );
\dc_next_wide__0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \dc_next_wide__0_carry__2_n_0\,
      CO(3) => \NLW_dc_next_wide__0_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \dc_next_wide__0_carry__3_n_1\,
      CO(1) => \dc_next_wide__0_carry__3_n_2\,
      CO(0) => \dc_next_wide__0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \dc_accumulator_reg_n_0_[17]\,
      DI(1) => \dc_accumulator_reg_n_0_[16]\,
      DI(0) => \dc_accumulator_reg_n_0_[15]\,
      O(3) => \dc_next_wide__0_carry__3_n_4\,
      O(2) => \dc_next_wide__0_carry__3_n_5\,
      O(1) => \dc_next_wide__0_carry__3_n_6\,
      O(0) => \dc_next_wide__0_carry__3_n_7\,
      S(3) => \dc_next_wide__0_carry__3_i_1_n_0\,
      S(2) => \dc_next_wide__0_carry__3_i_2_n_0\,
      S(1) => \dc_next_wide__0_carry__3_i_3_n_0\,
      S(0) => \dc_next_wide__0_carry__3_i_4_n_0\
    );
\dc_next_wide__0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[18]\,
      I1 => p_0_in0,
      O => \dc_next_wide__0_carry__3_i_1_n_0\
    );
\dc_next_wide__0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[17]\,
      I1 => \dc_accumulator_reg_n_0_[18]\,
      O => \dc_next_wide__0_carry__3_i_2_n_0\
    );
\dc_next_wide__0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[16]\,
      I1 => \dc_accumulator_reg_n_0_[17]\,
      O => \dc_next_wide__0_carry__3_i_3_n_0\
    );
\dc_next_wide__0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[15]\,
      I1 => \dc_accumulator_reg_n_0_[16]\,
      O => \dc_next_wide__0_carry__3_i_4_n_0\
    );
\dc_next_wide__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q(2),
      I1 => \dc_accumulator_reg_n_0_[2]\,
      I2 => \dc_accumulator_reg_n_0_[10]\,
      O => \dc_next_wide__0_carry_i_1_n_0\
    );
\dc_next_wide__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q(1),
      I1 => \dc_accumulator_reg_n_0_[1]\,
      I2 => \dc_accumulator_reg_n_0_[9]\,
      O => \dc_next_wide__0_carry_i_2_n_0\
    );
\dc_next_wide__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[0]\,
      I1 => Q(0),
      O => \dc_next_wide__0_carry_i_3_n_0\
    );
\dc_next_wide__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[0]\,
      I1 => Q(0),
      O => \dc_next_wide__0_carry_i_4_n_0\
    );
\dc_next_wide__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(3),
      I1 => \dc_accumulator_reg_n_0_[3]\,
      I2 => \dc_accumulator_reg_n_0_[11]\,
      I3 => \dc_next_wide__0_carry_i_1_n_0\,
      O => \dc_next_wide__0_carry_i_5_n_0\
    );
\dc_next_wide__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(2),
      I1 => \dc_accumulator_reg_n_0_[2]\,
      I2 => \dc_accumulator_reg_n_0_[10]\,
      I3 => \dc_next_wide__0_carry_i_2_n_0\,
      O => \dc_next_wide__0_carry_i_6_n_0\
    );
\dc_next_wide__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(1),
      I1 => \dc_accumulator_reg_n_0_[1]\,
      I2 => \dc_accumulator_reg_n_0_[9]\,
      I3 => \dc_next_wide__0_carry_i_3_n_0\,
      O => \dc_next_wide__0_carry_i_7_n_0\
    );
\dc_next_wide__0_carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dc_accumulator_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => \dc_accumulator_reg_n_0_[8]\,
      O => \dc_next_wide__0_carry_i_8_n_0\
    );
otr_out_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sample_valid,
      I1 => ad_otr_sample,
      O => otr_out_reg
    );
otr_out_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => otr_out_reg,
      Q => adc_otr
    );
valid_out_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \^sample_reset_sync_reg[1]\,
      D => sample_valid,
      Q => adc_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ad9226_stage1_driver_0_0_ad9226_stage1_driver is
  port (
    ad_clk : out STD_LOGIC;
    core_aresetn : out STD_LOGIC;
    adc_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_valid : out STD_LOGIC;
    adc_otr : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_locked : in STD_LOGIC;
    clk_60m_adc : in STD_LOGIC;
    clk_60m_sample : in STD_LOGIC;
    ad_data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ad_otr_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ad9226_stage1_driver_0_0_ad9226_stage1_driver : entity is "ad9226_stage1_driver";
end design_1_ad9226_stage1_driver_0_0_ad9226_stage1_driver;

architecture STRUCTURE of design_1_ad9226_stage1_driver_0_0_ad9226_stage1_driver is
  signal R0 : STD_LOGIC;
  signal ad_data_capture_adc : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ad_data_sample : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ad_otr_capture_adc : STD_LOGIC;
  signal ad_otr_sample : STD_LOGIC;
  signal adc_capture_aresetn : STD_LOGIC;
  signal adc_capture_valid : STD_LOGIC;
  signal adc_capture_valid_i_1_n_0 : STD_LOGIC;
  signal \adc_reset_sync_reg_n_0_[0]\ : STD_LOGIC;
  signal \^core_aresetn\ : STD_LOGIC;
  signal sample_reset_sync : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sample_reset_sync[1]_i_1_n_0\ : STD_LOGIC;
  signal sample_valid : STD_LOGIC;
  signal u_ad9226_data_path_n_1 : STD_LOGIC;
  signal NLW_u_oddr_ad_clk_S_UNCONNECTED : STD_LOGIC;
  attribute IOB : string;
  attribute IOB of \ad_data_capture_adc_reg[0]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[10]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[11]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[1]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[2]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[3]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[4]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[5]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[6]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[7]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[8]\ : label is "TRUE";
  attribute IOB of \ad_data_capture_adc_reg[9]\ : label is "TRUE";
  attribute IOB of ad_otr_capture_adc_reg : label is "TRUE";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_oddr_ad_clk : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of u_oddr_ad_clk : label is "MLO ";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of u_oddr_ad_clk : label is "FALSE";
begin
  core_aresetn <= \^core_aresetn\;
\ad_data_capture_adc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(0),
      Q => ad_data_capture_adc(0)
    );
\ad_data_capture_adc_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(10),
      Q => ad_data_capture_adc(10)
    );
\ad_data_capture_adc_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(11),
      Q => ad_data_capture_adc(11)
    );
\ad_data_capture_adc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(1),
      Q => ad_data_capture_adc(1)
    );
\ad_data_capture_adc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(2),
      Q => ad_data_capture_adc(2)
    );
\ad_data_capture_adc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(3),
      Q => ad_data_capture_adc(3)
    );
\ad_data_capture_adc_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(4),
      Q => ad_data_capture_adc(4)
    );
\ad_data_capture_adc_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(5),
      Q => ad_data_capture_adc(5)
    );
\ad_data_capture_adc_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(6),
      Q => ad_data_capture_adc(6)
    );
\ad_data_capture_adc_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(7),
      Q => ad_data_capture_adc(7)
    );
\ad_data_capture_adc_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(8),
      Q => ad_data_capture_adc(8)
    );
\ad_data_capture_adc_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_data_in(9),
      Q => ad_data_capture_adc(9)
    );
\ad_data_sample_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(0),
      Q => ad_data_sample(0)
    );
\ad_data_sample_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(10),
      Q => ad_data_sample(10)
    );
\ad_data_sample_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(11),
      Q => ad_data_sample(11)
    );
\ad_data_sample_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(1),
      Q => ad_data_sample(1)
    );
\ad_data_sample_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(2),
      Q => ad_data_sample(2)
    );
\ad_data_sample_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(3),
      Q => ad_data_sample(3)
    );
\ad_data_sample_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(4),
      Q => ad_data_sample(4)
    );
\ad_data_sample_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(5),
      Q => ad_data_sample(5)
    );
\ad_data_sample_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(6),
      Q => ad_data_sample(6)
    );
\ad_data_sample_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(7),
      Q => ad_data_sample(7)
    );
\ad_data_sample_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(8),
      Q => ad_data_sample(8)
    );
\ad_data_sample_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_data_capture_adc(9),
      Q => ad_data_sample(9)
    );
ad_otr_capture_adc_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => ad_otr_in,
      Q => ad_otr_capture_adc
    );
ad_otr_sample_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => ad_otr_capture_adc,
      Q => ad_otr_sample
    );
adc_capture_valid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_capture_aresetn,
      O => adc_capture_valid_i_1_n_0
    );
adc_capture_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => adc_capture_valid_i_1_n_0,
      D => '1',
      Q => adc_capture_valid
    );
\adc_reset_sync_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => \sample_reset_sync[1]_i_1_n_0\,
      D => '1',
      Q => \adc_reset_sync_reg_n_0_[0]\
    );
\adc_reset_sync_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_adc,
      CE => '1',
      CLR => \sample_reset_sync[1]_i_1_n_0\,
      D => \adc_reset_sync_reg_n_0_[0]\,
      Q => adc_capture_aresetn
    );
\sample_reset_sync[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => resetn,
      I1 => clk_locked,
      O => \sample_reset_sync[1]_i_1_n_0\
    );
\sample_reset_sync_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \sample_reset_sync[1]_i_1_n_0\,
      D => '1',
      Q => sample_reset_sync(0)
    );
\sample_reset_sync_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => \sample_reset_sync[1]_i_1_n_0\,
      D => sample_reset_sync(0),
      Q => \^core_aresetn\
    );
sample_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_60m_sample,
      CE => '1',
      CLR => u_ad9226_data_path_n_1,
      D => adc_capture_valid,
      Q => sample_valid
    );
u_ad9226_data_path: entity work.design_1_ad9226_stage1_driver_0_0_ad9226_data_path
     port map (
      Q(11 downto 0) => ad_data_sample(11 downto 0),
      ad_otr_sample => ad_otr_sample,
      adc_data(11 downto 0) => adc_data(11 downto 0),
      adc_otr => adc_otr,
      adc_valid => adc_valid,
      clk_60m_sample => clk_60m_sample,
      core_aresetn => \^core_aresetn\,
      \sample_reset_sync_reg[1]\ => u_ad9226_data_path_n_1,
      sample_valid => sample_valid
    );
u_oddr_ad_clk: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk_60m_adc,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => ad_clk,
      R => R0,
      S => NLW_u_oddr_ad_clk_S_UNCONNECTED
    );
u_oddr_ad_clk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_locked,
      O => R0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ad9226_stage1_driver_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ad9226_stage1_driver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ad9226_stage1_driver_0_0 : entity is "design_1_ad9226_stage1_driver_0_0,ad9226_stage1_driver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ad9226_stage1_driver_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ad9226_stage1_driver_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ad9226_stage1_driver_0_0 : entity is "ad9226_stage1_driver,Vivado 2018.3";
end design_1_ad9226_stage1_driver_0_0;

architecture STRUCTURE of design_1_ad9226_stage1_driver_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^adc_data\ : STD_LOGIC_VECTOR ( 13 downto 2 );
  signal \^clk_60m_sample\ : STD_LOGIC;
  signal \^clk_locked\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ad_clk : signal is "xilinx.com:signal:clock:1.0 AD_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ad_clk : signal is "XIL_INTERFACENAME AD_CLK, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ad9226_stage1_driver_0_0_ad_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_60m_adc : signal is "xilinx.com:signal:clock:1.0 CLK_ADC CLK";
  attribute X_INTERFACE_PARAMETER of clk_60m_adc : signal is "XIL_INTERFACENAME CLK_ADC, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_60m_sample : signal is "xilinx.com:signal:clock:1.0 CLK_SAMPLE CLK";
  attribute X_INTERFACE_PARAMETER of clk_60m_sample : signal is "XIL_INTERFACENAME CLK_SAMPLE, ASSOCIATED_RESET resetn, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of core_aresetn : signal is "xilinx.com:signal:reset:1.0 core_aresetn RST";
  attribute X_INTERFACE_PARAMETER of core_aresetn : signal is "XIL_INTERFACENAME core_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^clk_60m_sample\ <= clk_60m_sample;
  \^clk_locked\ <= clk_locked;
  adc_data(13 downto 2) <= \^adc_data\(13 downto 2);
  adc_data(1) <= \<const0>\;
  adc_data(0) <= \<const0>\;
  clk_60m_core <= \^clk_60m_sample\;
  locked_debug <= \^clk_locked\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_ad9226_stage1_driver_0_0_ad9226_stage1_driver
     port map (
      ad_clk => ad_clk,
      ad_data_in(11 downto 0) => ad_data_in(11 downto 0),
      ad_otr_in => ad_otr_in,
      adc_data(11 downto 0) => \^adc_data\(13 downto 2),
      adc_otr => adc_otr,
      adc_valid => adc_valid,
      clk_60m_adc => clk_60m_adc,
      clk_60m_sample => \^clk_60m_sample\,
      clk_locked => \^clk_locked\,
      core_aresetn => core_aresetn,
      resetn => resetn
    );
end STRUCTURE;
