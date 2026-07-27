-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 27 03:42:00 2026
-- Host        : Toph running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               F:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw_v5/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_smart_mux_stream_0_0/design_1_smart_mux_stream_0_0_sim_netlist.vhdl
-- Design      : design_1_smart_mux_stream_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_smart_mux_stream_0_0_smart_mux_stream is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    mux_ctrl : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mag_out : in STD_LOGIC_VECTOR ( 23 downto 0 );
    dphi_out : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_valid : in STD_LOGIC;
    bpsk_nrz_out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bpsk_sample_valid : in STD_LOGIC;
    audio_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    audio_valid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute AXIS_COUNT_WIDTH : integer;
  attribute AXIS_COUNT_WIDTH of design_1_smart_mux_stream_0_0_smart_mux_stream : entity is 5;
  attribute AXIS_FIFO_DEPTH : integer;
  attribute AXIS_FIFO_DEPTH of design_1_smart_mux_stream_0_0_smart_mux_stream : entity is 16;
  attribute AXIS_PTR_WIDTH : integer;
  attribute AXIS_PTR_WIDTH of design_1_smart_mux_stream_0_0_smart_mux_stream : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_smart_mux_stream_0_0_smart_mux_stream : entity is "smart_mux_stream";
end design_1_smart_mux_stream_0_0_smart_mux_stream;

architecture STRUCTURE of design_1_smart_mux_stream_0_0_smart_mux_stream is
  signal audio_out_inferred_i_17_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_18_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_19_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_20_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_21_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_22_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_23_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_24_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_25_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_26_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_27_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_28_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_29_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_30_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_31_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_32_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_33_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_34_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_35_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_36_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_37_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_40_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_40_n_1 : STD_LOGIC;
  signal audio_out_inferred_i_40_n_2 : STD_LOGIC;
  signal audio_out_inferred_i_40_n_3 : STD_LOGIC;
  signal audio_out_inferred_i_41_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_41_n_1 : STD_LOGIC;
  signal audio_out_inferred_i_41_n_2 : STD_LOGIC;
  signal audio_out_inferred_i_41_n_3 : STD_LOGIC;
  signal audio_out_inferred_i_42_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_43_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_43_n_1 : STD_LOGIC;
  signal audio_out_inferred_i_43_n_2 : STD_LOGIC;
  signal audio_out_inferred_i_43_n_3 : STD_LOGIC;
  signal audio_out_inferred_i_44_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_45_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_46_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_47_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_48_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_49_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_50_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_51_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_52_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_52_n_1 : STD_LOGIC;
  signal audio_out_inferred_i_52_n_2 : STD_LOGIC;
  signal audio_out_inferred_i_52_n_3 : STD_LOGIC;
  signal audio_out_inferred_i_53_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_54_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_55_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_56_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_57_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_58_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_59_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_60_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_61_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_62_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_63_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_64_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_65_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_66_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_67_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_68_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_69_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_70_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_71_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_72_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_73_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_74_n_0 : STD_LOGIC;
  signal audio_out_inferred_i_75_n_0 : STD_LOGIC;
  signal axis_data_fifo_reg_0_15_30_31_i_2_n_0 : STD_LOGIC;
  signal axis_fifo_level : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of axis_fifo_level : signal is std.standard.true;
  signal \axis_fifo_level[4]_i_1_n_0\ : STD_LOGIC;
  signal \axis_fifo_level[4]_i_3_n_0\ : STD_LOGIC;
  signal \axis_fifo_level[4]_i_4_n_0\ : STD_LOGIC;
  signal \axis_fifo_level[4]_i_5_n_0\ : STD_LOGIC;
  signal \axis_fifo_level[4]_i_6_n_0\ : STD_LOGIC;
  signal \axis_fifo_level__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axis_last_fifo_reg_0_15_0_0_i_2_n_0 : STD_LOGIC;
  signal axis_last_fifo_reg_0_15_0_0_i_3_n_0 : STD_LOGIC;
  signal axis_last_fifo_reg_0_15_0_0_i_4_n_0 : STD_LOGIC;
  signal axis_next_pointer0_return : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal axis_next_pointer_return : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal axis_overflow_sticky : STD_LOGIC;
  attribute MARK_DEBUG of axis_overflow_sticky : signal is std.standard.true;
  signal axis_overflow_sticky_i_1_n_0 : STD_LOGIC;
  signal axis_pop : STD_LOGIC;
  signal axis_push : STD_LOGIC;
  signal \axis_read_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \axis_read_pointer_reg_n_0_[0]\ : STD_LOGIC;
  signal \axis_read_pointer_reg_n_0_[1]\ : STD_LOGIC;
  signal \axis_read_pointer_reg_n_0_[2]\ : STD_LOGIC;
  signal \axis_read_pointer_reg_n_0_[3]\ : STD_LOGIC;
  signal \axis_read_pointer_reg_rep_n_0_[1]\ : STD_LOGIC;
  signal \axis_read_pointer_reg_rep_n_0_[2]\ : STD_LOGIC;
  signal \axis_read_pointer_reg_rep_n_0_[3]\ : STD_LOGIC;
  signal \axis_read_pointer_rep[1]_i_1_n_0\ : STD_LOGIC;
  signal \axis_read_pointer_rep[2]_i_1_n_0\ : STD_LOGIC;
  signal \axis_read_pointer_rep[3]_i_1_n_0\ : STD_LOGIC;
  signal \axis_write_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal capture_enable_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of capture_enable_meta : signal is "true";
  signal capture_enable_sync : STD_LOGIC;
  attribute async_reg of capture_enable_sync : signal is "true";
  signal clear : STD_LOGIC;
  signal \dac_iir[0]_i_10_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_11_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_12_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_13_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_14_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_15_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_3_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_4_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_5_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_6_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_8_n_0\ : STD_LOGIC;
  signal \dac_iir[0]_i_9_n_0\ : STD_LOGIC;
  signal \dac_iir[12]_i_10_n_0\ : STD_LOGIC;
  signal \dac_iir[12]_i_3_n_0\ : STD_LOGIC;
  signal \dac_iir[12]_i_4_n_0\ : STD_LOGIC;
  signal \dac_iir[12]_i_5_n_0\ : STD_LOGIC;
  signal \dac_iir[12]_i_6_n_0\ : STD_LOGIC;
  signal \dac_iir[12]_i_7_n_0\ : STD_LOGIC;
  signal \dac_iir[12]_i_8_n_0\ : STD_LOGIC;
  signal \dac_iir[12]_i_9_n_0\ : STD_LOGIC;
  signal \dac_iir[16]_i_10_n_0\ : STD_LOGIC;
  signal \dac_iir[16]_i_3_n_0\ : STD_LOGIC;
  signal \dac_iir[16]_i_4_n_0\ : STD_LOGIC;
  signal \dac_iir[16]_i_5_n_0\ : STD_LOGIC;
  signal \dac_iir[16]_i_6_n_0\ : STD_LOGIC;
  signal \dac_iir[16]_i_7_n_0\ : STD_LOGIC;
  signal \dac_iir[16]_i_8_n_0\ : STD_LOGIC;
  signal \dac_iir[16]_i_9_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_10_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_11_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_12_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_13_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_14_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_3_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_4_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_5_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_6_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_7_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_8_n_0\ : STD_LOGIC;
  signal \dac_iir[20]_i_9_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_10_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_11_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_12_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_13_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_3_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_4_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_5_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_6_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_7_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_8_n_0\ : STD_LOGIC;
  signal \dac_iir[24]_i_9_n_0\ : STD_LOGIC;
  signal \dac_iir[28]_i_2_n_0\ : STD_LOGIC;
  signal \dac_iir[28]_i_3_n_0\ : STD_LOGIC;
  signal \dac_iir[28]_i_4_n_0\ : STD_LOGIC;
  signal \dac_iir[28]_i_5_n_0\ : STD_LOGIC;
  signal \dac_iir[4]_i_10_n_0\ : STD_LOGIC;
  signal \dac_iir[4]_i_3_n_0\ : STD_LOGIC;
  signal \dac_iir[4]_i_4_n_0\ : STD_LOGIC;
  signal \dac_iir[4]_i_5_n_0\ : STD_LOGIC;
  signal \dac_iir[4]_i_6_n_0\ : STD_LOGIC;
  signal \dac_iir[4]_i_7_n_0\ : STD_LOGIC;
  signal \dac_iir[4]_i_8_n_0\ : STD_LOGIC;
  signal \dac_iir[4]_i_9_n_0\ : STD_LOGIC;
  signal \dac_iir[8]_i_10_n_0\ : STD_LOGIC;
  signal \dac_iir[8]_i_3_n_0\ : STD_LOGIC;
  signal \dac_iir[8]_i_4_n_0\ : STD_LOGIC;
  signal \dac_iir[8]_i_5_n_0\ : STD_LOGIC;
  signal \dac_iir[8]_i_6_n_0\ : STD_LOGIC;
  signal \dac_iir[8]_i_7_n_0\ : STD_LOGIC;
  signal \dac_iir[8]_i_8_n_0\ : STD_LOGIC;
  signal \dac_iir[8]_i_9_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_7_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_7_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[0]_i_7_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \dac_iir_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[0]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[10]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[11]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[12]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[13]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[14]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[15]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[16]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[17]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[18]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[19]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[1]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[20]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[21]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[22]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[23]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[24]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[25]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[26]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[27]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[28]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[29]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[2]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[30]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[3]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[4]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[5]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[6]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[7]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[8]\ : STD_LOGIC;
  signal \dac_iir_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \delay_line_reg[31][0]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][10]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][11]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][12]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][13]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][14]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][15]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][16]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][17]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][18]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][19]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][1]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][20]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][21]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][22]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][23]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][2]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][3]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][4]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][5]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][6]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][7]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][8]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[31][9]_srl32___delay_line_reg_r_30_n_1\ : STD_LOGIC;
  signal \delay_line_reg[61][0]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][10]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][11]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][12]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][13]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][14]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][15]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][16]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][17]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][18]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][19]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][1]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][20]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][21]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][22]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][23]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][2]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][3]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][4]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][5]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][6]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][7]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][8]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[61][9]_srl30___delay_line_reg_r_60_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][0]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][10]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][11]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][12]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][13]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][14]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][15]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][16]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][17]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][18]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][19]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][1]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][20]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][21]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][22]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][23]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][2]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][3]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][4]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][5]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][6]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][7]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][8]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[62][9]_delay_line_reg_r_61_n_0\ : STD_LOGIC;
  signal \delay_line_reg[63]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \delay_line_reg_gate__0_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__10_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__11_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__12_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__13_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__14_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__15_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__16_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__17_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__18_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__19_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__1_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__20_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__21_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__22_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__2_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__3_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__4_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__5_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__6_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__7_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__8_n_0\ : STD_LOGIC;
  signal \delay_line_reg_gate__9_n_0\ : STD_LOGIC;
  signal delay_line_reg_gate_n_0 : STD_LOGIC;
  signal delay_line_reg_r_0_n_0 : STD_LOGIC;
  signal delay_line_reg_r_10_n_0 : STD_LOGIC;
  signal delay_line_reg_r_11_n_0 : STD_LOGIC;
  signal delay_line_reg_r_12_n_0 : STD_LOGIC;
  signal delay_line_reg_r_13_n_0 : STD_LOGIC;
  signal delay_line_reg_r_14_n_0 : STD_LOGIC;
  signal delay_line_reg_r_15_n_0 : STD_LOGIC;
  signal delay_line_reg_r_16_n_0 : STD_LOGIC;
  signal delay_line_reg_r_17_n_0 : STD_LOGIC;
  signal delay_line_reg_r_18_n_0 : STD_LOGIC;
  signal delay_line_reg_r_19_n_0 : STD_LOGIC;
  signal delay_line_reg_r_1_n_0 : STD_LOGIC;
  signal delay_line_reg_r_20_n_0 : STD_LOGIC;
  signal delay_line_reg_r_21_n_0 : STD_LOGIC;
  signal delay_line_reg_r_22_n_0 : STD_LOGIC;
  signal delay_line_reg_r_23_n_0 : STD_LOGIC;
  signal delay_line_reg_r_24_n_0 : STD_LOGIC;
  signal delay_line_reg_r_25_n_0 : STD_LOGIC;
  signal delay_line_reg_r_26_n_0 : STD_LOGIC;
  signal delay_line_reg_r_27_n_0 : STD_LOGIC;
  signal delay_line_reg_r_28_n_0 : STD_LOGIC;
  signal delay_line_reg_r_29_n_0 : STD_LOGIC;
  signal delay_line_reg_r_2_n_0 : STD_LOGIC;
  signal delay_line_reg_r_30_n_0 : STD_LOGIC;
  signal delay_line_reg_r_31_n_0 : STD_LOGIC;
  signal delay_line_reg_r_32_n_0 : STD_LOGIC;
  signal delay_line_reg_r_33_n_0 : STD_LOGIC;
  signal delay_line_reg_r_34_n_0 : STD_LOGIC;
  signal delay_line_reg_r_35_n_0 : STD_LOGIC;
  signal delay_line_reg_r_36_n_0 : STD_LOGIC;
  signal delay_line_reg_r_37_n_0 : STD_LOGIC;
  signal delay_line_reg_r_38_n_0 : STD_LOGIC;
  signal delay_line_reg_r_39_n_0 : STD_LOGIC;
  signal delay_line_reg_r_3_n_0 : STD_LOGIC;
  signal delay_line_reg_r_40_n_0 : STD_LOGIC;
  signal delay_line_reg_r_41_n_0 : STD_LOGIC;
  signal delay_line_reg_r_42_n_0 : STD_LOGIC;
  signal delay_line_reg_r_43_n_0 : STD_LOGIC;
  signal delay_line_reg_r_44_n_0 : STD_LOGIC;
  signal delay_line_reg_r_45_n_0 : STD_LOGIC;
  signal delay_line_reg_r_46_n_0 : STD_LOGIC;
  signal delay_line_reg_r_47_n_0 : STD_LOGIC;
  signal delay_line_reg_r_48_n_0 : STD_LOGIC;
  signal delay_line_reg_r_49_n_0 : STD_LOGIC;
  signal delay_line_reg_r_4_n_0 : STD_LOGIC;
  signal delay_line_reg_r_50_n_0 : STD_LOGIC;
  signal delay_line_reg_r_51_n_0 : STD_LOGIC;
  signal delay_line_reg_r_52_n_0 : STD_LOGIC;
  signal delay_line_reg_r_53_n_0 : STD_LOGIC;
  signal delay_line_reg_r_54_n_0 : STD_LOGIC;
  signal delay_line_reg_r_55_n_0 : STD_LOGIC;
  signal delay_line_reg_r_56_n_0 : STD_LOGIC;
  signal delay_line_reg_r_57_n_0 : STD_LOGIC;
  signal delay_line_reg_r_58_n_0 : STD_LOGIC;
  signal delay_line_reg_r_59_n_0 : STD_LOGIC;
  signal delay_line_reg_r_5_n_0 : STD_LOGIC;
  signal delay_line_reg_r_60_n_0 : STD_LOGIC;
  signal delay_line_reg_r_61_n_0 : STD_LOGIC;
  signal delay_line_reg_r_6_n_0 : STD_LOGIC;
  signal delay_line_reg_r_7_n_0 : STD_LOGIC;
  signal delay_line_reg_r_8_n_0 : STD_LOGIC;
  signal delay_line_reg_r_9_n_0 : STD_LOGIC;
  signal delay_line_reg_r_n_0 : STD_LOGIC;
  signal fm_audio_out1 : STD_LOGIC;
  signal fm_audio_out2 : STD_LOGIC;
  signal frame_accepting_samples_i_1_n_0 : STD_LOGIC;
  signal frame_accepting_samples_reg_n_0 : STD_LOGIC;
  signal frame_sample_count : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \frame_sample_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \frame_sample_count_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \frame_sample_count_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \frame_sample_count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \frame_sample_count_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \frame_sample_count_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \frame_sample_count_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \frame_sample_count_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \frame_sample_count_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \frame_sample_count_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \frame_sample_count_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \frame_sample_count_reg_n_0_[9]\ : STD_LOGIC;
  signal in0 : STD_LOGIC;
  signal lpf_data_320 : STD_LOGIC;
  signal mux_meta : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of mux_meta : signal is "true";
  signal mux_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \mux_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal mux_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of mux_sync : signal is "true";
  signal mux_sync_d : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_0_in0_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal pointer : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pointer0 : STD_LOGIC;
  signal selected_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \selected_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \selected_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_8_n_0\ : STD_LOGIC;
  signal \sum_reg[11]_i_9_n_0\ : STD_LOGIC;
  signal \sum_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \sum_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \sum_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \sum_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \sum_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \sum_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \sum_reg[15]_i_9_n_0\ : STD_LOGIC;
  signal \sum_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \sum_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \sum_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \sum_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \sum_reg[19]_i_7_n_0\ : STD_LOGIC;
  signal \sum_reg[19]_i_8_n_0\ : STD_LOGIC;
  signal \sum_reg[19]_i_9_n_0\ : STD_LOGIC;
  signal \sum_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \sum_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \sum_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \sum_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \sum_reg[23]_i_7_n_0\ : STD_LOGIC;
  signal \sum_reg[23]_i_8_n_0\ : STD_LOGIC;
  signal \sum_reg[23]_i_9_n_0\ : STD_LOGIC;
  signal \sum_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \sum_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \sum_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \sum_reg[27]_i_6_n_0\ : STD_LOGIC;
  signal \sum_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \sum_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \sum_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal valid_reg : STD_LOGIC;
  signal NLW_audio_out_inferred_i_38_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_audio_out_inferred_i_38_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_out_inferred_i_39_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_audio_out_inferred_i_39_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_out_inferred_i_40_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_out_inferred_i_41_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_out_inferred_i_43_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_audio_out_inferred_i_52_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axis_data_fifo_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axis_data_fifo_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axis_data_fifo_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axis_data_fifo_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axis_data_fifo_reg_0_15_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axis_data_fifo_reg_0_15_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axis_data_fifo_reg_0_15_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axis_data_fifo_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axis_last_fifo_reg_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_dac_iir_reg[0]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dac_iir_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dac_iir_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_delay_line_reg[31][0]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][10]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][11]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][12]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][13]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][14]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][15]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][16]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][17]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][18]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][19]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][1]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][20]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][21]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][22]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][23]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][2]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][3]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][4]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][5]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][6]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][7]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][8]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[31][9]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][0]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][10]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][11]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][12]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][13]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][14]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][15]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][16]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][17]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][18]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][19]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][1]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][20]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][21]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][22]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][23]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][2]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][3]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][4]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][5]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][6]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][7]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][8]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_delay_line_reg[61][9]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_sample_count_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_frame_sample_count_reg[11]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum_reg_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_reg_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of audio_out_inferred_i_18 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of audio_out_inferred_i_19 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of audio_out_inferred_i_30 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of audio_out_inferred_i_36 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of audio_out_inferred_i_37 : label is "soft_lutpair0";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of axis_data_fifo_reg_0_15_0_5 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of axis_data_fifo_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of axis_data_fifo_reg_0_15_0_5 : label is 15;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of axis_data_fifo_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of axis_data_fifo_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of axis_data_fifo_reg_0_15_12_17 : label is "";
  attribute ram_addr_begin of axis_data_fifo_reg_0_15_12_17 : label is 0;
  attribute ram_addr_end of axis_data_fifo_reg_0_15_12_17 : label is 15;
  attribute ram_slice_begin of axis_data_fifo_reg_0_15_12_17 : label is 12;
  attribute ram_slice_end of axis_data_fifo_reg_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of axis_data_fifo_reg_0_15_18_23 : label is "";
  attribute ram_addr_begin of axis_data_fifo_reg_0_15_18_23 : label is 0;
  attribute ram_addr_end of axis_data_fifo_reg_0_15_18_23 : label is 15;
  attribute ram_slice_begin of axis_data_fifo_reg_0_15_18_23 : label is 18;
  attribute ram_slice_end of axis_data_fifo_reg_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of axis_data_fifo_reg_0_15_24_29 : label is "";
  attribute ram_addr_begin of axis_data_fifo_reg_0_15_24_29 : label is 0;
  attribute ram_addr_end of axis_data_fifo_reg_0_15_24_29 : label is 15;
  attribute ram_slice_begin of axis_data_fifo_reg_0_15_24_29 : label is 24;
  attribute ram_slice_end of axis_data_fifo_reg_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of axis_data_fifo_reg_0_15_30_31 : label is "";
  attribute ram_addr_begin of axis_data_fifo_reg_0_15_30_31 : label is 0;
  attribute ram_addr_end of axis_data_fifo_reg_0_15_30_31 : label is 15;
  attribute ram_slice_begin of axis_data_fifo_reg_0_15_30_31 : label is 30;
  attribute ram_slice_end of axis_data_fifo_reg_0_15_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of axis_data_fifo_reg_0_15_6_11 : label is "";
  attribute ram_addr_begin of axis_data_fifo_reg_0_15_6_11 : label is 0;
  attribute ram_addr_end of axis_data_fifo_reg_0_15_6_11 : label is 15;
  attribute ram_slice_begin of axis_data_fifo_reg_0_15_6_11 : label is 6;
  attribute ram_slice_end of axis_data_fifo_reg_0_15_6_11 : label is 11;
  attribute KEEP : string;
  attribute KEEP of \axis_fifo_level_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \axis_fifo_level_reg[0]\ : label is "true";
  attribute KEEP of \axis_fifo_level_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axis_fifo_level_reg[1]\ : label is "true";
  attribute KEEP of \axis_fifo_level_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axis_fifo_level_reg[2]\ : label is "true";
  attribute KEEP of \axis_fifo_level_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axis_fifo_level_reg[3]\ : label is "true";
  attribute KEEP of \axis_fifo_level_reg[4]\ : label is "yes";
  attribute mark_debug_string of \axis_fifo_level_reg[4]\ : label is "true";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of axis_last_fifo_reg_0_15_0_0 : label is "RAM16X1D";
  attribute ram_addr_begin of axis_last_fifo_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end of axis_last_fifo_reg_0_15_0_0 : label is 15;
  attribute ram_slice_begin of axis_last_fifo_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end of axis_last_fifo_reg_0_15_0_0 : label is 0;
  attribute SOFT_HLUTNM of axis_last_fifo_reg_0_15_0_0_i_4 : label is "soft_lutpair3";
  attribute KEEP of axis_overflow_sticky_reg : label is "yes";
  attribute mark_debug_string of axis_overflow_sticky_reg : label is "true";
  attribute SOFT_HLUTNM of \axis_read_pointer[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axis_read_pointer[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axis_read_pointer[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axis_read_pointer_rep[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axis_read_pointer_rep[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axis_read_pointer_rep[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axis_write_pointer[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axis_write_pointer[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axis_write_pointer[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axis_write_pointer[3]_i_3\ : label is "soft_lutpair5";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of capture_enable_meta_reg : label is std.standard.true;
  attribute KEEP of capture_enable_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of capture_enable_sync_reg : label is std.standard.true;
  attribute KEEP of capture_enable_sync_reg : label is "yes";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \delay_line_reg[31][0]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \delay_line_reg[31][0]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][0]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][10]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][10]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][10]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][11]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][11]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][11]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][12]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][12]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][12]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][13]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][13]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][13]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][14]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][14]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][14]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][15]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][15]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][15]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][16]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][16]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][16]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][17]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][17]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][17]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][18]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][18]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][18]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][19]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][19]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][19]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][1]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][1]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][1]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][20]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][20]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][20]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][21]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][21]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][21]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][22]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][22]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][22]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][23]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][23]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][23]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][2]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][2]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][2]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][3]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][3]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][3]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][4]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][4]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][4]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][5]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][5]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][5]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][6]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][6]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][6]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][7]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][7]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][7]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][8]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][8]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][8]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[31][9]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31] ";
  attribute srl_name of \delay_line_reg[31][9]_srl32___delay_line_reg_r_30\ : label is "inst/\delay_line_reg[31][9]_srl32___delay_line_reg_r_30 ";
  attribute srl_bus_name of \delay_line_reg[61][0]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][0]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][0]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][10]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][10]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][10]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][11]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][11]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][11]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][12]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][12]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][12]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][13]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][13]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][13]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][14]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][14]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][14]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][15]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][15]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][15]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][16]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][16]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][16]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][17]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][17]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][17]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][18]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][18]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][18]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][19]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][19]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][19]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][1]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][1]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][1]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][20]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][20]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][20]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][21]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][21]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][21]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][22]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][22]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][22]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][23]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][23]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][23]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][2]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][2]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][2]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][3]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][3]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][3]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][4]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][4]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][4]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][5]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][5]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][5]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][6]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][6]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][6]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][7]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][7]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][7]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][8]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][8]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][8]_srl30___delay_line_reg_r_60 ";
  attribute srl_bus_name of \delay_line_reg[61][9]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61] ";
  attribute srl_name of \delay_line_reg[61][9]_srl30___delay_line_reg_r_60\ : label is "inst/\delay_line_reg[61][9]_srl30___delay_line_reg_r_60 ";
  attribute SOFT_HLUTNM of delay_line_reg_gate : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__11\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__12\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__13\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__14\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__15\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__16\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__17\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__18\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__19\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__20\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__21\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__22\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__7\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \delay_line_reg_gate__9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \frame_sample_count[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \frame_sample_count[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \frame_sample_count[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \frame_sample_count[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \frame_sample_count[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \frame_sample_count[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \frame_sample_count[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \frame_sample_count[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \frame_sample_count[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \frame_sample_count[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \frame_sample_count[9]_i_1\ : label is "soft_lutpair12";
  attribute ASYNC_REG_boolean of \mux_meta_reg[0]\ : label is std.standard.true;
  attribute KEEP of \mux_meta_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mux_meta_reg[1]\ : label is std.standard.true;
  attribute KEEP of \mux_meta_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mux_meta_reg[2]\ : label is std.standard.true;
  attribute KEEP of \mux_meta_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mux_sync_reg[0]\ : label is std.standard.true;
  attribute KEEP of \mux_sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mux_sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \mux_sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \mux_sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \mux_sync_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \selected_data[15]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \selected_data[17]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \selected_data[23]_i_1\ : label is "soft_lutpair4";
  attribute mark_debug_string of audio_out : signal is "true";
begin
audio_out_inferred_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAEEEEAAAAAAAA"
    )
        port map (
      I0 => audio_out_inferred_i_17_n_0,
      I1 => selected_data(22),
      I2 => bpsk_nrz_out(15),
      I3 => mux_sel(1),
      I4 => mux_sel(0),
      I5 => mux_sel(2),
      O => audio_out(15)
    );
audio_out_inferred_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(6),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[8]\,
      I5 => audio_out_inferred_i_29_n_0,
      O => audio_out(6)
    );
audio_out_inferred_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(5),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[7]\,
      I5 => audio_out_inferred_i_30_n_0,
      O => audio_out(5)
    );
audio_out_inferred_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(4),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[6]\,
      I5 => audio_out_inferred_i_31_n_0,
      O => audio_out(4)
    );
audio_out_inferred_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(3),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[5]\,
      I5 => audio_out_inferred_i_32_n_0,
      O => audio_out(3)
    );
audio_out_inferred_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(2),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[4]\,
      I5 => audio_out_inferred_i_33_n_0,
      O => audio_out(2)
    );
audio_out_inferred_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(1),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[3]\,
      I5 => audio_out_inferred_i_34_n_0,
      O => audio_out(1)
    );
audio_out_inferred_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(0),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[2]\,
      I5 => audio_out_inferred_i_35_n_0,
      O => audio_out(0)
    );
audio_out_inferred_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F8F8F888"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[27]\,
      I1 => audio_out_inferred_i_36_n_0,
      I2 => audio_out_inferred_i_37_n_0,
      I3 => \dac_iir_reg_n_0_[17]\,
      I4 => fm_audio_out2,
      I5 => fm_audio_out1,
      O => audio_out_inferred_i_17_n_0
    );
audio_out_inferred_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => mux_sel(1),
      I1 => mux_sel(0),
      I2 => mux_sel(2),
      I3 => fm_audio_out1,
      O => audio_out_inferred_i_18_n_0
    );
audio_out_inferred_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mux_sel(1),
      I1 => mux_sel(0),
      I2 => mux_sel(2),
      O => audio_out_inferred_i_19_n_0
    );
audio_out_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(14),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[16]\,
      I5 => audio_out_inferred_i_21_n_0,
      O => audio_out(14)
    );
audio_out_inferred_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => mux_sel(1),
      I1 => mux_sel(0),
      I2 => mux_sel(2),
      I3 => fm_audio_out2,
      O => audio_out_inferred_i_20_n_0
    );
audio_out_inferred_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(21),
      I1 => \sum_reg_reg_n_0_[26]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_21_n_0
    );
audio_out_inferred_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(20),
      I1 => \sum_reg_reg_n_0_[25]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_22_n_0
    );
audio_out_inferred_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(19),
      I1 => \sum_reg_reg_n_0_[24]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_23_n_0
    );
audio_out_inferred_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(18),
      I1 => \sum_reg_reg_n_0_[23]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_24_n_0
    );
audio_out_inferred_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(17),
      I1 => \sum_reg_reg_n_0_[22]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_25_n_0
    );
audio_out_inferred_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(16),
      I1 => \sum_reg_reg_n_0_[21]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_26_n_0
    );
audio_out_inferred_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(15),
      I1 => \sum_reg_reg_n_0_[20]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_27_n_0
    );
audio_out_inferred_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(14),
      I1 => \sum_reg_reg_n_0_[19]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_28_n_0
    );
audio_out_inferred_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(13),
      I1 => \sum_reg_reg_n_0_[18]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_29_n_0
    );
audio_out_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(13),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[15]\,
      I5 => audio_out_inferred_i_22_n_0,
      O => audio_out(13)
    );
audio_out_inferred_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(12),
      I1 => \sum_reg_reg_n_0_[17]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_30_n_0
    );
audio_out_inferred_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(11),
      I1 => \sum_reg_reg_n_0_[16]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_31_n_0
    );
audio_out_inferred_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(10),
      I1 => \sum_reg_reg_n_0_[15]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_32_n_0
    );
audio_out_inferred_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(9),
      I1 => \sum_reg_reg_n_0_[14]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_33_n_0
    );
audio_out_inferred_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(8),
      I1 => \sum_reg_reg_n_0_[13]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_34_n_0
    );
audio_out_inferred_i_35: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0C00"
    )
        port map (
      I0 => selected_data(7),
      I1 => \sum_reg_reg_n_0_[12]\,
      I2 => mux_sel(1),
      I3 => mux_sel(0),
      I4 => mux_sel(2),
      O => audio_out_inferred_i_35_n_0
    );
audio_out_inferred_i_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mux_sel(1),
      I1 => mux_sel(0),
      I2 => mux_sel(2),
      O => audio_out_inferred_i_36_n_0
    );
audio_out_inferred_i_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => mux_sel(2),
      I1 => mux_sel(0),
      I2 => mux_sel(1),
      O => audio_out_inferred_i_37_n_0
    );
audio_out_inferred_i_38: unisim.vcomponents.CARRY4
     port map (
      CI => audio_out_inferred_i_40_n_0,
      CO(3 downto 1) => NLW_audio_out_inferred_i_38_CO_UNCONNECTED(3 downto 1),
      CO(0) => fm_audio_out2,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_audio_out_inferred_i_38_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => p_0_in0
    );
audio_out_inferred_i_39: unisim.vcomponents.CARRY4
     port map (
      CI => audio_out_inferred_i_41_n_0,
      CO(3 downto 1) => NLW_audio_out_inferred_i_39_CO_UNCONNECTED(3 downto 1),
      CO(0) => fm_audio_out1,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_audio_out_inferred_i_39_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => audio_out_inferred_i_42_n_0
    );
audio_out_inferred_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(12),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[14]\,
      I5 => audio_out_inferred_i_23_n_0,
      O => audio_out(12)
    );
audio_out_inferred_i_40: unisim.vcomponents.CARRY4
     port map (
      CI => audio_out_inferred_i_43_n_0,
      CO(3) => audio_out_inferred_i_40_n_0,
      CO(2) => audio_out_inferred_i_40_n_1,
      CO(1) => audio_out_inferred_i_40_n_2,
      CO(0) => audio_out_inferred_i_40_n_3,
      CYINIT => '0',
      DI(3) => audio_out_inferred_i_44_n_0,
      DI(2) => audio_out_inferred_i_45_n_0,
      DI(1) => audio_out_inferred_i_46_n_0,
      DI(0) => audio_out_inferred_i_47_n_0,
      O(3 downto 0) => NLW_audio_out_inferred_i_40_O_UNCONNECTED(3 downto 0),
      S(3) => audio_out_inferred_i_48_n_0,
      S(2) => audio_out_inferred_i_49_n_0,
      S(1) => audio_out_inferred_i_50_n_0,
      S(0) => audio_out_inferred_i_51_n_0
    );
audio_out_inferred_i_41: unisim.vcomponents.CARRY4
     port map (
      CI => audio_out_inferred_i_52_n_0,
      CO(3) => audio_out_inferred_i_41_n_0,
      CO(2) => audio_out_inferred_i_41_n_1,
      CO(1) => audio_out_inferred_i_41_n_2,
      CO(0) => audio_out_inferred_i_41_n_3,
      CYINIT => '0',
      DI(3) => audio_out_inferred_i_53_n_0,
      DI(2) => audio_out_inferred_i_54_n_0,
      DI(1) => audio_out_inferred_i_55_n_0,
      DI(0) => audio_out_inferred_i_56_n_0,
      O(3 downto 0) => NLW_audio_out_inferred_i_41_O_UNCONNECTED(3 downto 0),
      S(3) => audio_out_inferred_i_57_n_0,
      S(2) => audio_out_inferred_i_58_n_0,
      S(1) => audio_out_inferred_i_59_n_0,
      S(0) => audio_out_inferred_i_60_n_0
    );
audio_out_inferred_i_42: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      O => audio_out_inferred_i_42_n_0
    );
audio_out_inferred_i_43: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => audio_out_inferred_i_43_n_0,
      CO(2) => audio_out_inferred_i_43_n_1,
      CO(1) => audio_out_inferred_i_43_n_2,
      CO(0) => audio_out_inferred_i_43_n_3,
      CYINIT => '0',
      DI(3) => audio_out_inferred_i_61_n_0,
      DI(2) => audio_out_inferred_i_62_n_0,
      DI(1) => audio_out_inferred_i_63_n_0,
      DI(0) => audio_out_inferred_i_64_n_0,
      O(3 downto 0) => NLW_audio_out_inferred_i_43_O_UNCONNECTED(3 downto 0),
      S(3) => audio_out_inferred_i_65_n_0,
      S(2) => audio_out_inferred_i_66_n_0,
      S(1) => audio_out_inferred_i_67_n_0,
      S(0) => audio_out_inferred_i_68_n_0
    );
audio_out_inferred_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[30]\,
      I1 => p_0_in0,
      O => audio_out_inferred_i_44_n_0
    );
audio_out_inferred_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[28]\,
      I1 => \dac_iir_reg_n_0_[29]\,
      O => audio_out_inferred_i_45_n_0
    );
audio_out_inferred_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[26]\,
      I1 => \dac_iir_reg_n_0_[27]\,
      O => audio_out_inferred_i_46_n_0
    );
audio_out_inferred_i_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[24]\,
      I1 => \dac_iir_reg_n_0_[25]\,
      O => audio_out_inferred_i_47_n_0
    );
audio_out_inferred_i_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in0,
      I1 => \dac_iir_reg_n_0_[30]\,
      O => audio_out_inferred_i_48_n_0
    );
audio_out_inferred_i_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[28]\,
      I1 => \dac_iir_reg_n_0_[29]\,
      O => audio_out_inferred_i_49_n_0
    );
audio_out_inferred_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(11),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[13]\,
      I5 => audio_out_inferred_i_24_n_0,
      O => audio_out(11)
    );
audio_out_inferred_i_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[26]\,
      I1 => \dac_iir_reg_n_0_[27]\,
      O => audio_out_inferred_i_50_n_0
    );
audio_out_inferred_i_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[24]\,
      I1 => \dac_iir_reg_n_0_[25]\,
      O => audio_out_inferred_i_51_n_0
    );
audio_out_inferred_i_52: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => audio_out_inferred_i_52_n_0,
      CO(2) => audio_out_inferred_i_52_n_1,
      CO(1) => audio_out_inferred_i_52_n_2,
      CO(0) => audio_out_inferred_i_52_n_3,
      CYINIT => '0',
      DI(3) => audio_out_inferred_i_69_n_0,
      DI(2) => audio_out_inferred_i_70_n_0,
      DI(1) => audio_out_inferred_i_71_n_0,
      DI(0) => \dac_iir_reg_n_0_[17]\,
      O(3 downto 0) => NLW_audio_out_inferred_i_52_O_UNCONNECTED(3 downto 0),
      S(3) => audio_out_inferred_i_72_n_0,
      S(2) => audio_out_inferred_i_73_n_0,
      S(1) => audio_out_inferred_i_74_n_0,
      S(0) => audio_out_inferred_i_75_n_0
    );
audio_out_inferred_i_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[30]\,
      I1 => p_0_in0,
      O => audio_out_inferred_i_53_n_0
    );
audio_out_inferred_i_54: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[28]\,
      I1 => \dac_iir_reg_n_0_[29]\,
      O => audio_out_inferred_i_54_n_0
    );
audio_out_inferred_i_55: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[26]\,
      I1 => \dac_iir_reg_n_0_[27]\,
      O => audio_out_inferred_i_55_n_0
    );
audio_out_inferred_i_56: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[24]\,
      I1 => \dac_iir_reg_n_0_[25]\,
      O => audio_out_inferred_i_56_n_0
    );
audio_out_inferred_i_57: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      I1 => \dac_iir_reg_n_0_[30]\,
      O => audio_out_inferred_i_57_n_0
    );
audio_out_inferred_i_58: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[28]\,
      I1 => \dac_iir_reg_n_0_[29]\,
      O => audio_out_inferred_i_58_n_0
    );
audio_out_inferred_i_59: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[26]\,
      I1 => \dac_iir_reg_n_0_[27]\,
      O => audio_out_inferred_i_59_n_0
    );
audio_out_inferred_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(10),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[12]\,
      I5 => audio_out_inferred_i_25_n_0,
      O => audio_out(10)
    );
audio_out_inferred_i_60: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[24]\,
      I1 => \dac_iir_reg_n_0_[25]\,
      O => audio_out_inferred_i_60_n_0
    );
audio_out_inferred_i_61: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[22]\,
      I1 => \dac_iir_reg_n_0_[23]\,
      O => audio_out_inferred_i_61_n_0
    );
audio_out_inferred_i_62: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[20]\,
      I1 => \dac_iir_reg_n_0_[21]\,
      O => audio_out_inferred_i_62_n_0
    );
audio_out_inferred_i_63: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[18]\,
      I1 => \dac_iir_reg_n_0_[19]\,
      O => audio_out_inferred_i_63_n_0
    );
audio_out_inferred_i_64: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[17]\,
      O => audio_out_inferred_i_64_n_0
    );
audio_out_inferred_i_65: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[22]\,
      I1 => \dac_iir_reg_n_0_[23]\,
      O => audio_out_inferred_i_65_n_0
    );
audio_out_inferred_i_66: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[20]\,
      I1 => \dac_iir_reg_n_0_[21]\,
      O => audio_out_inferred_i_66_n_0
    );
audio_out_inferred_i_67: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[18]\,
      I1 => \dac_iir_reg_n_0_[19]\,
      O => audio_out_inferred_i_67_n_0
    );
audio_out_inferred_i_68: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[17]\,
      I1 => \dac_iir_reg_n_0_[16]\,
      O => audio_out_inferred_i_68_n_0
    );
audio_out_inferred_i_69: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[22]\,
      I1 => \dac_iir_reg_n_0_[23]\,
      O => audio_out_inferred_i_69_n_0
    );
audio_out_inferred_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(9),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[11]\,
      I5 => audio_out_inferred_i_26_n_0,
      O => audio_out(9)
    );
audio_out_inferred_i_70: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[20]\,
      I1 => \dac_iir_reg_n_0_[21]\,
      O => audio_out_inferred_i_70_n_0
    );
audio_out_inferred_i_71: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[18]\,
      I1 => \dac_iir_reg_n_0_[19]\,
      O => audio_out_inferred_i_71_n_0
    );
audio_out_inferred_i_72: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[22]\,
      I1 => \dac_iir_reg_n_0_[23]\,
      O => audio_out_inferred_i_72_n_0
    );
audio_out_inferred_i_73: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[20]\,
      I1 => \dac_iir_reg_n_0_[21]\,
      O => audio_out_inferred_i_73_n_0
    );
audio_out_inferred_i_74: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[18]\,
      I1 => \dac_iir_reg_n_0_[19]\,
      O => audio_out_inferred_i_74_n_0
    );
audio_out_inferred_i_75: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[16]\,
      I1 => \dac_iir_reg_n_0_[17]\,
      O => audio_out_inferred_i_75_n_0
    );
audio_out_inferred_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(8),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[10]\,
      I5 => audio_out_inferred_i_27_n_0,
      O => audio_out(8)
    );
audio_out_inferred_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => audio_out_inferred_i_18_n_0,
      I1 => audio_out_inferred_i_19_n_0,
      I2 => bpsk_nrz_out(7),
      I3 => audio_out_inferred_i_20_n_0,
      I4 => \dac_iir_reg_n_0_[9]\,
      I5 => audio_out_inferred_i_28_n_0,
      O => audio_out(7)
    );
audio_valid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFF083"
    )
        port map (
      I0 => bpsk_sample_valid,
      I1 => mux_sel(2),
      I2 => mux_sel(0),
      I3 => mux_sel(1),
      I4 => valid_reg,
      O => audio_valid
    );
axis_data_fifo_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRA(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRA(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRA(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRB(4) => '0',
      ADDRB(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRB(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRB(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRB(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRC(4) => '0',
      ADDRC(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRC(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRC(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRC(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => pointer(3 downto 0),
      DIA(1) => \sum_reg_reg_n_0_[7]\,
      DIA(0) => \sum_reg_reg_n_0_[6]\,
      DIB(1) => \sum_reg_reg_n_0_[9]\,
      DIB(0) => \sum_reg_reg_n_0_[8]\,
      DIC(1) => \sum_reg_reg_n_0_[11]\,
      DIC(0) => \sum_reg_reg_n_0_[10]\,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => m_axis_tdata(1 downto 0),
      DOB(1 downto 0) => m_axis_tdata(3 downto 2),
      DOC(1 downto 0) => m_axis_tdata(5 downto 4),
      DOD(1 downto 0) => NLW_axis_data_fifo_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => p_0_in0_out
    );
axis_data_fifo_reg_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRA(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRA(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRA(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRB(4) => '0',
      ADDRB(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRB(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRB(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRB(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRC(4) => '0',
      ADDRC(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRC(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRC(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRC(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => pointer(3 downto 0),
      DIA(1) => \sum_reg_reg_n_0_[19]\,
      DIA(0) => \sum_reg_reg_n_0_[18]\,
      DIB(1) => \sum_reg_reg_n_0_[21]\,
      DIB(0) => \sum_reg_reg_n_0_[20]\,
      DIC(1) => \sum_reg_reg_n_0_[23]\,
      DIC(0) => \sum_reg_reg_n_0_[22]\,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => m_axis_tdata(13 downto 12),
      DOB(1 downto 0) => m_axis_tdata(15 downto 14),
      DOC(1 downto 0) => m_axis_tdata(17 downto 16),
      DOD(1 downto 0) => NLW_axis_data_fifo_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => p_0_in0_out
    );
axis_data_fifo_reg_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRA(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRA(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRA(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRB(4) => '0',
      ADDRB(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRB(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRB(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRB(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRC(4) => '0',
      ADDRC(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRC(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRC(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRC(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => pointer(3 downto 0),
      DIA(1) => \sum_reg_reg_n_0_[25]\,
      DIA(0) => \sum_reg_reg_n_0_[24]\,
      DIB(1) => \sum_reg_reg_n_0_[27]\,
      DIB(0) => \sum_reg_reg_n_0_[26]\,
      DIC(1) => lpf_data_320,
      DIC(0) => \sum_reg_reg_n_0_[28]\,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => m_axis_tdata(19 downto 18),
      DOB(1 downto 0) => m_axis_tdata(21 downto 20),
      DOC(1 downto 0) => m_axis_tdata(23 downto 22),
      DOD(1 downto 0) => NLW_axis_data_fifo_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => p_0_in0_out
    );
axis_data_fifo_reg_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRA(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRA(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRA(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRB(4) => '0',
      ADDRB(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRB(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRB(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRB(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRC(4) => '0',
      ADDRC(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRC(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRC(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRC(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => pointer(3 downto 0),
      DIA(1) => lpf_data_320,
      DIA(0) => lpf_data_320,
      DIB(1) => lpf_data_320,
      DIB(0) => lpf_data_320,
      DIC(1) => lpf_data_320,
      DIC(0) => lpf_data_320,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => m_axis_tdata(25 downto 24),
      DOB(1 downto 0) => m_axis_tdata(27 downto 26),
      DOC(1 downto 0) => m_axis_tdata(29 downto 28),
      DOD(1 downto 0) => NLW_axis_data_fifo_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => p_0_in0_out
    );
axis_data_fifo_reg_0_15_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRA(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRA(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRA(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRB(4) => '0',
      ADDRB(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRB(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRB(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRB(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRC(4) => '0',
      ADDRC(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRC(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRC(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRC(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => pointer(3 downto 0),
      DIA(1) => lpf_data_320,
      DIA(0) => lpf_data_320,
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => m_axis_tdata(31 downto 30),
      DOB(1 downto 0) => NLW_axis_data_fifo_reg_0_15_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_axis_data_fifo_reg_0_15_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_axis_data_fifo_reg_0_15_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => p_0_in0_out
    );
axis_data_fifo_reg_0_15_30_31_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => axis_data_fifo_reg_0_15_30_31_i_2_n_0,
      I1 => frame_accepting_samples_reg_n_0,
      I2 => valid_reg,
      I3 => capture_enable_sync,
      I4 => aresetn,
      O => p_0_in0_out
    );
axis_data_fifo_reg_0_15_30_31_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => axis_fifo_level(4),
      I1 => m_axis_tready,
      I2 => axis_fifo_level(1),
      I3 => axis_fifo_level(2),
      I4 => axis_fifo_level(0),
      I5 => axis_fifo_level(3),
      O => axis_data_fifo_reg_0_15_30_31_i_2_n_0
    );
axis_data_fifo_reg_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRA(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRA(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRA(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRB(4) => '0',
      ADDRB(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRB(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRB(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRB(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRC(4) => '0',
      ADDRC(3) => \axis_read_pointer_reg_rep_n_0_[3]\,
      ADDRC(2) => \axis_read_pointer_reg_rep_n_0_[2]\,
      ADDRC(1) => \axis_read_pointer_reg_rep_n_0_[1]\,
      ADDRC(0) => \axis_read_pointer_reg_n_0_[0]\,
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => pointer(3 downto 0),
      DIA(1) => \sum_reg_reg_n_0_[13]\,
      DIA(0) => \sum_reg_reg_n_0_[12]\,
      DIB(1) => \sum_reg_reg_n_0_[15]\,
      DIB(0) => \sum_reg_reg_n_0_[14]\,
      DIC(1) => \sum_reg_reg_n_0_[17]\,
      DIC(0) => \sum_reg_reg_n_0_[16]\,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => m_axis_tdata(7 downto 6),
      DOB(1 downto 0) => m_axis_tdata(9 downto 8),
      DOC(1 downto 0) => m_axis_tdata(11 downto 10),
      DOD(1 downto 0) => NLW_axis_data_fifo_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => p_0_in0_out
    );
\axis_fifo_level[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_fifo_level(0),
      O => \axis_fifo_level__0\(0)
    );
\axis_fifo_level[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DDDD777"
    )
        port map (
      I0 => axis_data_fifo_reg_0_15_30_31_i_2_n_0,
      I1 => axis_fifo_level(0),
      I2 => valid_reg,
      I3 => frame_accepting_samples_reg_n_0,
      I4 => axis_fifo_level(1),
      O => \axis_fifo_level__0\(1)
    );
\axis_fifo_level[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF75F75D"
    )
        port map (
      I0 => axis_data_fifo_reg_0_15_30_31_i_2_n_0,
      I1 => \axis_fifo_level[4]_i_6_n_0\,
      I2 => axis_fifo_level(0),
      I3 => axis_fifo_level(2),
      I4 => axis_fifo_level(1),
      O => \axis_fifo_level__0\(2)
    );
\axis_fifo_level[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFB2004FFFFFFFF"
    )
        port map (
      I0 => axis_fifo_level(0),
      I1 => \axis_fifo_level[4]_i_6_n_0\,
      I2 => axis_fifo_level(2),
      I3 => axis_fifo_level(1),
      I4 => axis_fifo_level(3),
      I5 => axis_data_fifo_reg_0_15_30_31_i_2_n_0,
      O => \axis_fifo_level__0\(3)
    );
\axis_fifo_level[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EEEB000"
    )
        port map (
      I0 => \axis_fifo_level[4]_i_3_n_0\,
      I1 => axis_fifo_level(4),
      I2 => frame_accepting_samples_reg_n_0,
      I3 => valid_reg,
      I4 => m_axis_tready,
      O => \axis_fifo_level[4]_i_1_n_0\
    );
\axis_fifo_level[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B487B487B4B4B484"
    )
        port map (
      I0 => \axis_fifo_level[4]_i_4_n_0\,
      I1 => axis_fifo_level(1),
      I2 => axis_fifo_level(4),
      I3 => \axis_fifo_level[4]_i_5_n_0\,
      I4 => m_axis_tready,
      I5 => \axis_fifo_level[4]_i_6_n_0\,
      O => \axis_fifo_level__0\(4)
    );
\axis_fifo_level[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => axis_fifo_level(3),
      I1 => axis_fifo_level(0),
      I2 => axis_fifo_level(2),
      I3 => axis_fifo_level(1),
      O => \axis_fifo_level[4]_i_3_n_0\
    );
\axis_fifo_level[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => axis_fifo_level(2),
      I1 => frame_accepting_samples_reg_n_0,
      I2 => valid_reg,
      I3 => capture_enable_sync,
      I4 => axis_fifo_level(0),
      I5 => axis_fifo_level(3),
      O => \axis_fifo_level[4]_i_4_n_0\
    );
\axis_fifo_level[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axis_fifo_level(2),
      I1 => axis_fifo_level(0),
      I2 => axis_fifo_level(3),
      O => \axis_fifo_level[4]_i_5_n_0\
    );
\axis_fifo_level[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => capture_enable_sync,
      I1 => valid_reg,
      I2 => frame_accepting_samples_reg_n_0,
      O => \axis_fifo_level[4]_i_6_n_0\
    );
\axis_fifo_level_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axis_fifo_level[4]_i_1_n_0\,
      D => \axis_fifo_level__0\(0),
      Q => axis_fifo_level(0),
      R => pointer0
    );
\axis_fifo_level_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axis_fifo_level[4]_i_1_n_0\,
      D => \axis_fifo_level__0\(1),
      Q => axis_fifo_level(1),
      R => pointer0
    );
\axis_fifo_level_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axis_fifo_level[4]_i_1_n_0\,
      D => \axis_fifo_level__0\(2),
      Q => axis_fifo_level(2),
      R => pointer0
    );
\axis_fifo_level_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axis_fifo_level[4]_i_1_n_0\,
      D => \axis_fifo_level__0\(3),
      Q => axis_fifo_level(3),
      R => pointer0
    );
\axis_fifo_level_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axis_fifo_level[4]_i_1_n_0\,
      D => \axis_fifo_level__0\(4),
      Q => axis_fifo_level(4),
      R => pointer0
    );
axis_last_fifo_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => pointer(0),
      A1 => pointer(1),
      A2 => pointer(2),
      A3 => pointer(3),
      A4 => '0',
      D => p_2_in,
      DPO => m_axis_tlast,
      DPRA0 => \axis_read_pointer_reg_n_0_[0]\,
      DPRA1 => \axis_read_pointer_reg_rep_n_0_[1]\,
      DPRA2 => \axis_read_pointer_reg_rep_n_0_[2]\,
      DPRA3 => \axis_read_pointer_reg_rep_n_0_[3]\,
      DPRA4 => '0',
      SPO => NLW_axis_last_fifo_reg_0_15_0_0_SPO_UNCONNECTED,
      WCLK => aclk,
      WE => p_0_in0_out
    );
axis_last_fifo_reg_0_15_0_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      O => p_2_in
    );
axis_last_fifo_reg_0_15_0_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_3_n_0,
      I1 => \frame_sample_count_reg_n_0_[5]\,
      I2 => \frame_sample_count_reg_n_0_[4]\,
      I3 => \frame_sample_count_reg_n_0_[7]\,
      I4 => \frame_sample_count_reg_n_0_[6]\,
      I5 => axis_last_fifo_reg_0_15_0_0_i_4_n_0,
      O => axis_last_fifo_reg_0_15_0_0_i_2_n_0
    );
axis_last_fifo_reg_0_15_0_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \frame_sample_count_reg_n_0_[9]\,
      I1 => \frame_sample_count_reg_n_0_[8]\,
      I2 => \frame_sample_count_reg_n_0_[10]\,
      I3 => \frame_sample_count_reg_n_0_[11]\,
      O => axis_last_fifo_reg_0_15_0_0_i_3_n_0
    );
axis_last_fifo_reg_0_15_0_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \frame_sample_count_reg_n_0_[1]\,
      I1 => \frame_sample_count_reg_n_0_[0]\,
      I2 => \frame_sample_count_reg_n_0_[3]\,
      I3 => \frame_sample_count_reg_n_0_[2]\,
      O => axis_last_fifo_reg_0_15_0_0_i_4_n_0
    );
axis_overflow_sticky_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => axis_overflow_sticky,
      I1 => capture_enable_sync,
      I2 => valid_reg,
      I3 => frame_accepting_samples_reg_n_0,
      I4 => axis_data_fifo_reg_0_15_30_31_i_2_n_0,
      O => axis_overflow_sticky_i_1_n_0
    );
axis_overflow_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axis_overflow_sticky_i_1_n_0,
      Q => axis_overflow_sticky,
      R => clear
    );
\axis_read_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axis_read_pointer_reg_n_0_[0]\,
      O => \axis_read_pointer[0]_i_1_n_0\
    );
\axis_read_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axis_read_pointer_reg_n_0_[1]\,
      I1 => \axis_read_pointer_reg_n_0_[0]\,
      O => axis_next_pointer0_return(1)
    );
\axis_read_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \axis_read_pointer_reg_n_0_[1]\,
      I1 => \axis_read_pointer_reg_n_0_[0]\,
      I2 => \axis_read_pointer_reg_n_0_[2]\,
      O => axis_next_pointer0_return(2)
    );
\axis_read_pointer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => axis_fifo_level(4),
      I1 => axis_fifo_level(3),
      I2 => axis_fifo_level(0),
      I3 => axis_fifo_level(2),
      I4 => axis_fifo_level(1),
      I5 => m_axis_tready,
      O => axis_pop
    );
\axis_read_pointer[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \axis_read_pointer_reg_n_0_[1]\,
      I1 => \axis_read_pointer_reg_n_0_[0]\,
      I2 => \axis_read_pointer_reg_n_0_[2]\,
      I3 => \axis_read_pointer_reg_n_0_[3]\,
      O => axis_next_pointer0_return(3)
    );
\axis_read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_pop,
      D => \axis_read_pointer[0]_i_1_n_0\,
      Q => \axis_read_pointer_reg_n_0_[0]\,
      R => pointer0
    );
\axis_read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_pop,
      D => axis_next_pointer0_return(1),
      Q => \axis_read_pointer_reg_n_0_[1]\,
      R => pointer0
    );
\axis_read_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_pop,
      D => axis_next_pointer0_return(2),
      Q => \axis_read_pointer_reg_n_0_[2]\,
      R => pointer0
    );
\axis_read_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_pop,
      D => axis_next_pointer0_return(3),
      Q => \axis_read_pointer_reg_n_0_[3]\,
      R => pointer0
    );
\axis_read_pointer_reg_rep[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_pop,
      D => \axis_read_pointer_rep[1]_i_1_n_0\,
      Q => \axis_read_pointer_reg_rep_n_0_[1]\,
      R => pointer0
    );
\axis_read_pointer_reg_rep[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_pop,
      D => \axis_read_pointer_rep[2]_i_1_n_0\,
      Q => \axis_read_pointer_reg_rep_n_0_[2]\,
      R => pointer0
    );
\axis_read_pointer_reg_rep[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_pop,
      D => \axis_read_pointer_rep[3]_i_1_n_0\,
      Q => \axis_read_pointer_reg_rep_n_0_[3]\,
      R => pointer0
    );
\axis_read_pointer_rep[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axis_read_pointer_reg_n_0_[0]\,
      I1 => \axis_read_pointer_reg_n_0_[1]\,
      O => \axis_read_pointer_rep[1]_i_1_n_0\
    );
\axis_read_pointer_rep[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \axis_read_pointer_reg_n_0_[2]\,
      I1 => \axis_read_pointer_reg_n_0_[0]\,
      I2 => \axis_read_pointer_reg_n_0_[1]\,
      O => \axis_read_pointer_rep[2]_i_1_n_0\
    );
\axis_read_pointer_rep[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \axis_read_pointer_reg_n_0_[3]\,
      I1 => \axis_read_pointer_reg_n_0_[2]\,
      I2 => \axis_read_pointer_reg_n_0_[0]\,
      I3 => \axis_read_pointer_reg_n_0_[1]\,
      O => \axis_read_pointer_rep[3]_i_1_n_0\
    );
\axis_write_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pointer(0),
      O => \axis_write_pointer[0]_i_1_n_0\
    );
\axis_write_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pointer(0),
      I1 => pointer(1),
      O => axis_next_pointer_return(1)
    );
\axis_write_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pointer(2),
      I1 => pointer(0),
      I2 => pointer(1),
      O => axis_next_pointer_return(2)
    );
\axis_write_pointer[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => capture_enable_sync,
      I1 => aresetn,
      O => pointer0
    );
\axis_write_pointer[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axis_data_fifo_reg_0_15_30_31_i_2_n_0,
      I1 => frame_accepting_samples_reg_n_0,
      I2 => valid_reg,
      I3 => capture_enable_sync,
      O => axis_push
    );
\axis_write_pointer[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => pointer(3),
      I1 => pointer(2),
      I2 => pointer(0),
      I3 => pointer(1),
      O => axis_next_pointer_return(3)
    );
\axis_write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => \axis_write_pointer[0]_i_1_n_0\,
      Q => pointer(0),
      R => pointer0
    );
\axis_write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => axis_next_pointer_return(1),
      Q => pointer(1),
      R => pointer0
    );
\axis_write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => axis_next_pointer_return(2),
      Q => pointer(2),
      R => pointer0
    );
\axis_write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => axis_next_pointer_return(3),
      Q => pointer(3),
      R => pointer0
    );
capture_enable_meta_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mux_ctrl(8),
      Q => capture_enable_meta,
      R => clear
    );
capture_enable_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => capture_enable_meta,
      Q => capture_enable_sync,
      R => clear
    );
\dac_iir[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[11]\,
      I1 => \dac_iir_reg_n_0_[5]\,
      O => \dac_iir[0]_i_10_n_0\
    );
\dac_iir[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[10]\,
      I1 => \dac_iir_reg_n_0_[4]\,
      O => \dac_iir[0]_i_11_n_0\
    );
\dac_iir[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[9]\,
      I1 => \dac_iir_reg_n_0_[3]\,
      O => \dac_iir[0]_i_12_n_0\
    );
\dac_iir[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[8]\,
      I1 => \dac_iir_reg_n_0_[2]\,
      O => \dac_iir[0]_i_13_n_0\
    );
\dac_iir[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[7]\,
      I1 => \dac_iir_reg_n_0_[1]\,
      O => \dac_iir[0]_i_14_n_0\
    );
\dac_iir[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[6]\,
      I1 => \dac_iir_reg_n_0_[0]\,
      O => \dac_iir[0]_i_15_n_0\
    );
\dac_iir[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[0]_i_2_n_4\,
      I1 => \dac_iir_reg_n_0_[3]\,
      O => \dac_iir[0]_i_3_n_0\
    );
\dac_iir[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[0]_i_2_n_5\,
      I1 => \dac_iir_reg_n_0_[2]\,
      O => \dac_iir[0]_i_4_n_0\
    );
\dac_iir[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[0]_i_2_n_6\,
      I1 => \dac_iir_reg_n_0_[1]\,
      O => \dac_iir[0]_i_5_n_0\
    );
\dac_iir[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[0]_i_2_n_7\,
      I1 => \dac_iir_reg_n_0_[0]\,
      O => \dac_iir[0]_i_6_n_0\
    );
\dac_iir[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[13]\,
      I1 => \dac_iir_reg_n_0_[7]\,
      O => \dac_iir[0]_i_8_n_0\
    );
\dac_iir[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[12]\,
      I1 => \dac_iir_reg_n_0_[6]\,
      O => \dac_iir[0]_i_9_n_0\
    );
\dac_iir[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[22]\,
      I1 => \dac_iir_reg_n_0_[16]\,
      O => \dac_iir[12]_i_10_n_0\
    );
\dac_iir[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[12]_i_2_n_4\,
      I1 => \dac_iir_reg_n_0_[15]\,
      O => \dac_iir[12]_i_3_n_0\
    );
\dac_iir[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[12]_i_2_n_5\,
      I1 => \dac_iir_reg_n_0_[14]\,
      O => \dac_iir[12]_i_4_n_0\
    );
\dac_iir[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[12]_i_2_n_6\,
      I1 => \dac_iir_reg_n_0_[13]\,
      O => \dac_iir[12]_i_5_n_0\
    );
\dac_iir[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[12]_i_2_n_7\,
      I1 => \dac_iir_reg_n_0_[12]\,
      O => \dac_iir[12]_i_6_n_0\
    );
\dac_iir[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[25]\,
      I1 => \dac_iir_reg_n_0_[19]\,
      O => \dac_iir[12]_i_7_n_0\
    );
\dac_iir[12]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[24]\,
      I1 => \dac_iir_reg_n_0_[18]\,
      O => \dac_iir[12]_i_8_n_0\
    );
\dac_iir[12]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[23]\,
      I1 => \dac_iir_reg_n_0_[17]\,
      O => \dac_iir[12]_i_9_n_0\
    );
\dac_iir[16]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[26]\,
      I1 => \dac_iir_reg_n_0_[20]\,
      O => \dac_iir[16]_i_10_n_0\
    );
\dac_iir[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[16]_i_2_n_4\,
      I1 => \dac_iir_reg_n_0_[19]\,
      O => \dac_iir[16]_i_3_n_0\
    );
\dac_iir[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[16]_i_2_n_5\,
      I1 => \dac_iir_reg_n_0_[18]\,
      O => \dac_iir[16]_i_4_n_0\
    );
\dac_iir[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[16]_i_2_n_6\,
      I1 => \dac_iir_reg_n_0_[17]\,
      O => \dac_iir[16]_i_5_n_0\
    );
\dac_iir[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[16]_i_2_n_7\,
      I1 => \dac_iir_reg_n_0_[16]\,
      O => \dac_iir[16]_i_6_n_0\
    );
\dac_iir[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[23]\,
      I1 => lpf_data_320,
      O => \dac_iir[16]_i_7_n_0\
    );
\dac_iir[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[28]\,
      I1 => \dac_iir_reg_n_0_[22]\,
      O => \dac_iir[16]_i_8_n_0\
    );
\dac_iir[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[27]\,
      I1 => \dac_iir_reg_n_0_[21]\,
      O => \dac_iir[16]_i_9_n_0\
    );
\dac_iir[20]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[23]\,
      O => \dac_iir[20]_i_10_n_0\
    );
\dac_iir[20]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[26]\,
      I1 => \dac_iir_reg_n_0_[27]\,
      O => \dac_iir[20]_i_11_n_0\
    );
\dac_iir[20]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[25]\,
      I1 => \dac_iir_reg_n_0_[26]\,
      O => \dac_iir[20]_i_12_n_0\
    );
\dac_iir[20]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[24]\,
      I1 => \dac_iir_reg_n_0_[25]\,
      O => \dac_iir[20]_i_13_n_0\
    );
\dac_iir[20]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[23]\,
      I1 => \dac_iir_reg_n_0_[24]\,
      O => \dac_iir[20]_i_14_n_0\
    );
\dac_iir[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[20]_i_2_n_4\,
      I1 => \dac_iir_reg_n_0_[23]\,
      O => \dac_iir[20]_i_3_n_0\
    );
\dac_iir[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[20]_i_2_n_5\,
      I1 => \dac_iir_reg_n_0_[22]\,
      O => \dac_iir[20]_i_4_n_0\
    );
\dac_iir[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[20]_i_2_n_6\,
      I1 => \dac_iir_reg_n_0_[21]\,
      O => \dac_iir[20]_i_5_n_0\
    );
\dac_iir[20]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[20]_i_2_n_7\,
      I1 => \dac_iir_reg_n_0_[20]\,
      O => \dac_iir[20]_i_6_n_0\
    );
\dac_iir[20]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[26]\,
      O => \dac_iir[20]_i_7_n_0\
    );
\dac_iir[20]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[25]\,
      O => \dac_iir[20]_i_8_n_0\
    );
\dac_iir[20]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[24]\,
      O => \dac_iir[20]_i_9_n_0\
    );
\dac_iir[24]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in0,
      I1 => \dac_iir_reg_n_0_[30]\,
      O => \dac_iir[24]_i_10_n_0\
    );
\dac_iir[24]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[29]\,
      I1 => \dac_iir_reg_n_0_[30]\,
      O => \dac_iir[24]_i_11_n_0\
    );
\dac_iir[24]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[28]\,
      I1 => \dac_iir_reg_n_0_[29]\,
      O => \dac_iir[24]_i_12_n_0\
    );
\dac_iir[24]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[27]\,
      I1 => \dac_iir_reg_n_0_[28]\,
      O => \dac_iir[24]_i_13_n_0\
    );
\dac_iir[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => \dac_iir_reg_n_0_[27]\,
      O => \dac_iir[24]_i_3_n_0\
    );
\dac_iir[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[24]_i_2_n_5\,
      I1 => \dac_iir_reg_n_0_[26]\,
      O => \dac_iir[24]_i_4_n_0\
    );
\dac_iir[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[24]_i_2_n_6\,
      I1 => \dac_iir_reg_n_0_[25]\,
      O => \dac_iir[24]_i_5_n_0\
    );
\dac_iir[24]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[24]_i_2_n_7\,
      I1 => \dac_iir_reg_n_0_[24]\,
      O => \dac_iir[24]_i_6_n_0\
    );
\dac_iir[24]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[29]\,
      O => \dac_iir[24]_i_7_n_0\
    );
\dac_iir[24]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[28]\,
      O => \dac_iir[24]_i_8_n_0\
    );
\dac_iir[24]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dac_iir_reg_n_0_[27]\,
      O => \dac_iir[24]_i_9_n_0\
    );
\dac_iir[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => p_0_in0,
      O => \dac_iir[28]_i_2_n_0\
    );
\dac_iir[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => \dac_iir_reg_n_0_[30]\,
      O => \dac_iir[28]_i_3_n_0\
    );
\dac_iir[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => \dac_iir_reg_n_0_[29]\,
      O => \dac_iir[28]_i_4_n_0\
    );
\dac_iir[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => \dac_iir_reg_n_0_[28]\,
      O => \dac_iir[28]_i_5_n_0\
    );
\dac_iir[4]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[14]\,
      I1 => \dac_iir_reg_n_0_[8]\,
      O => \dac_iir[4]_i_10_n_0\
    );
\dac_iir[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[4]_i_2_n_4\,
      I1 => \dac_iir_reg_n_0_[7]\,
      O => \dac_iir[4]_i_3_n_0\
    );
\dac_iir[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[4]_i_2_n_5\,
      I1 => \dac_iir_reg_n_0_[6]\,
      O => \dac_iir[4]_i_4_n_0\
    );
\dac_iir[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[4]_i_2_n_6\,
      I1 => \dac_iir_reg_n_0_[5]\,
      O => \dac_iir[4]_i_5_n_0\
    );
\dac_iir[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[4]_i_2_n_7\,
      I1 => \dac_iir_reg_n_0_[4]\,
      O => \dac_iir[4]_i_6_n_0\
    );
\dac_iir[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[17]\,
      I1 => \dac_iir_reg_n_0_[11]\,
      O => \dac_iir[4]_i_7_n_0\
    );
\dac_iir[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[16]\,
      I1 => \dac_iir_reg_n_0_[10]\,
      O => \dac_iir[4]_i_8_n_0\
    );
\dac_iir[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[15]\,
      I1 => \dac_iir_reg_n_0_[9]\,
      O => \dac_iir[4]_i_9_n_0\
    );
\dac_iir[8]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[18]\,
      I1 => \dac_iir_reg_n_0_[12]\,
      O => \dac_iir[8]_i_10_n_0\
    );
\dac_iir[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[8]_i_2_n_4\,
      I1 => \dac_iir_reg_n_0_[11]\,
      O => \dac_iir[8]_i_3_n_0\
    );
\dac_iir[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[8]_i_2_n_5\,
      I1 => \dac_iir_reg_n_0_[10]\,
      O => \dac_iir[8]_i_4_n_0\
    );
\dac_iir[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[8]_i_2_n_6\,
      I1 => \dac_iir_reg_n_0_[9]\,
      O => \dac_iir[8]_i_5_n_0\
    );
\dac_iir[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dac_iir_reg[8]_i_2_n_7\,
      I1 => \dac_iir_reg_n_0_[8]\,
      O => \dac_iir[8]_i_6_n_0\
    );
\dac_iir[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[21]\,
      I1 => \dac_iir_reg_n_0_[15]\,
      O => \dac_iir[8]_i_7_n_0\
    );
\dac_iir[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[20]\,
      I1 => \dac_iir_reg_n_0_[14]\,
      O => \dac_iir[8]_i_8_n_0\
    );
\dac_iir[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[19]\,
      I1 => \dac_iir_reg_n_0_[13]\,
      O => \dac_iir[8]_i_9_n_0\
    );
\dac_iir_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[0]_i_1_n_7\,
      Q => \dac_iir_reg_n_0_[0]\,
      R => clear
    );
\dac_iir_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dac_iir_reg[0]_i_1_n_0\,
      CO(2) => \dac_iir_reg[0]_i_1_n_1\,
      CO(1) => \dac_iir_reg[0]_i_1_n_2\,
      CO(0) => \dac_iir_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \dac_iir_reg[0]_i_2_n_4\,
      DI(2) => \dac_iir_reg[0]_i_2_n_5\,
      DI(1) => \dac_iir_reg[0]_i_2_n_6\,
      DI(0) => \dac_iir_reg[0]_i_2_n_7\,
      O(3) => \dac_iir_reg[0]_i_1_n_4\,
      O(2) => \dac_iir_reg[0]_i_1_n_5\,
      O(1) => \dac_iir_reg[0]_i_1_n_6\,
      O(0) => \dac_iir_reg[0]_i_1_n_7\,
      S(3) => \dac_iir[0]_i_3_n_0\,
      S(2) => \dac_iir[0]_i_4_n_0\,
      S(1) => \dac_iir[0]_i_5_n_0\,
      S(0) => \dac_iir[0]_i_6_n_0\
    );
\dac_iir_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[0]_i_7_n_0\,
      CO(3) => \dac_iir_reg[0]_i_2_n_0\,
      CO(2) => \dac_iir_reg[0]_i_2_n_1\,
      CO(1) => \dac_iir_reg[0]_i_2_n_2\,
      CO(0) => \dac_iir_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_reg_n_0_[13]\,
      DI(2) => \sum_reg_reg_n_0_[12]\,
      DI(1) => \sum_reg_reg_n_0_[11]\,
      DI(0) => \sum_reg_reg_n_0_[10]\,
      O(3) => \dac_iir_reg[0]_i_2_n_4\,
      O(2) => \dac_iir_reg[0]_i_2_n_5\,
      O(1) => \dac_iir_reg[0]_i_2_n_6\,
      O(0) => \dac_iir_reg[0]_i_2_n_7\,
      S(3) => \dac_iir[0]_i_8_n_0\,
      S(2) => \dac_iir[0]_i_9_n_0\,
      S(1) => \dac_iir[0]_i_10_n_0\,
      S(0) => \dac_iir[0]_i_11_n_0\
    );
\dac_iir_reg[0]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dac_iir_reg[0]_i_7_n_0\,
      CO(2) => \dac_iir_reg[0]_i_7_n_1\,
      CO(1) => \dac_iir_reg[0]_i_7_n_2\,
      CO(0) => \dac_iir_reg[0]_i_7_n_3\,
      CYINIT => '1',
      DI(3) => \sum_reg_reg_n_0_[9]\,
      DI(2) => \sum_reg_reg_n_0_[8]\,
      DI(1) => \sum_reg_reg_n_0_[7]\,
      DI(0) => \sum_reg_reg_n_0_[6]\,
      O(3 downto 0) => \NLW_dac_iir_reg[0]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \dac_iir[0]_i_12_n_0\,
      S(2) => \dac_iir[0]_i_13_n_0\,
      S(1) => \dac_iir[0]_i_14_n_0\,
      S(0) => \dac_iir[0]_i_15_n_0\
    );
\dac_iir_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[8]_i_1_n_5\,
      Q => \dac_iir_reg_n_0_[10]\,
      R => clear
    );
\dac_iir_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[8]_i_1_n_4\,
      Q => \dac_iir_reg_n_0_[11]\,
      R => clear
    );
\dac_iir_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[12]_i_1_n_7\,
      Q => \dac_iir_reg_n_0_[12]\,
      R => clear
    );
\dac_iir_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[8]_i_1_n_0\,
      CO(3) => \dac_iir_reg[12]_i_1_n_0\,
      CO(2) => \dac_iir_reg[12]_i_1_n_1\,
      CO(1) => \dac_iir_reg[12]_i_1_n_2\,
      CO(0) => \dac_iir_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \dac_iir_reg[12]_i_2_n_4\,
      DI(2) => \dac_iir_reg[12]_i_2_n_5\,
      DI(1) => \dac_iir_reg[12]_i_2_n_6\,
      DI(0) => \dac_iir_reg[12]_i_2_n_7\,
      O(3) => \dac_iir_reg[12]_i_1_n_4\,
      O(2) => \dac_iir_reg[12]_i_1_n_5\,
      O(1) => \dac_iir_reg[12]_i_1_n_6\,
      O(0) => \dac_iir_reg[12]_i_1_n_7\,
      S(3) => \dac_iir[12]_i_3_n_0\,
      S(2) => \dac_iir[12]_i_4_n_0\,
      S(1) => \dac_iir[12]_i_5_n_0\,
      S(0) => \dac_iir[12]_i_6_n_0\
    );
\dac_iir_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[8]_i_2_n_0\,
      CO(3) => \dac_iir_reg[12]_i_2_n_0\,
      CO(2) => \dac_iir_reg[12]_i_2_n_1\,
      CO(1) => \dac_iir_reg[12]_i_2_n_2\,
      CO(0) => \dac_iir_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_reg_n_0_[25]\,
      DI(2) => \sum_reg_reg_n_0_[24]\,
      DI(1) => \sum_reg_reg_n_0_[23]\,
      DI(0) => \sum_reg_reg_n_0_[22]\,
      O(3) => \dac_iir_reg[12]_i_2_n_4\,
      O(2) => \dac_iir_reg[12]_i_2_n_5\,
      O(1) => \dac_iir_reg[12]_i_2_n_6\,
      O(0) => \dac_iir_reg[12]_i_2_n_7\,
      S(3) => \dac_iir[12]_i_7_n_0\,
      S(2) => \dac_iir[12]_i_8_n_0\,
      S(1) => \dac_iir[12]_i_9_n_0\,
      S(0) => \dac_iir[12]_i_10_n_0\
    );
\dac_iir_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[12]_i_1_n_6\,
      Q => \dac_iir_reg_n_0_[13]\,
      R => clear
    );
\dac_iir_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[12]_i_1_n_5\,
      Q => \dac_iir_reg_n_0_[14]\,
      R => clear
    );
\dac_iir_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[12]_i_1_n_4\,
      Q => \dac_iir_reg_n_0_[15]\,
      R => clear
    );
\dac_iir_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[16]_i_1_n_7\,
      Q => \dac_iir_reg_n_0_[16]\,
      R => clear
    );
\dac_iir_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[12]_i_1_n_0\,
      CO(3) => \dac_iir_reg[16]_i_1_n_0\,
      CO(2) => \dac_iir_reg[16]_i_1_n_1\,
      CO(1) => \dac_iir_reg[16]_i_1_n_2\,
      CO(0) => \dac_iir_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \dac_iir_reg[16]_i_2_n_4\,
      DI(2) => \dac_iir_reg[16]_i_2_n_5\,
      DI(1) => \dac_iir_reg[16]_i_2_n_6\,
      DI(0) => \dac_iir_reg[16]_i_2_n_7\,
      O(3) => \dac_iir_reg[16]_i_1_n_4\,
      O(2) => \dac_iir_reg[16]_i_1_n_5\,
      O(1) => \dac_iir_reg[16]_i_1_n_6\,
      O(0) => \dac_iir_reg[16]_i_1_n_7\,
      S(3) => \dac_iir[16]_i_3_n_0\,
      S(2) => \dac_iir[16]_i_4_n_0\,
      S(1) => \dac_iir[16]_i_5_n_0\,
      S(0) => \dac_iir[16]_i_6_n_0\
    );
\dac_iir_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[12]_i_2_n_0\,
      CO(3) => \dac_iir_reg[16]_i_2_n_0\,
      CO(2) => \dac_iir_reg[16]_i_2_n_1\,
      CO(1) => \dac_iir_reg[16]_i_2_n_2\,
      CO(0) => \dac_iir_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \dac_iir_reg_n_0_[23]\,
      DI(2) => \sum_reg_reg_n_0_[28]\,
      DI(1) => \sum_reg_reg_n_0_[27]\,
      DI(0) => \sum_reg_reg_n_0_[26]\,
      O(3) => \dac_iir_reg[16]_i_2_n_4\,
      O(2) => \dac_iir_reg[16]_i_2_n_5\,
      O(1) => \dac_iir_reg[16]_i_2_n_6\,
      O(0) => \dac_iir_reg[16]_i_2_n_7\,
      S(3) => \dac_iir[16]_i_7_n_0\,
      S(2) => \dac_iir[16]_i_8_n_0\,
      S(1) => \dac_iir[16]_i_9_n_0\,
      S(0) => \dac_iir[16]_i_10_n_0\
    );
\dac_iir_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[16]_i_1_n_6\,
      Q => \dac_iir_reg_n_0_[17]\,
      R => clear
    );
\dac_iir_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[16]_i_1_n_5\,
      Q => \dac_iir_reg_n_0_[18]\,
      R => clear
    );
\dac_iir_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[16]_i_1_n_4\,
      Q => \dac_iir_reg_n_0_[19]\,
      R => clear
    );
\dac_iir_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[0]_i_1_n_6\,
      Q => \dac_iir_reg_n_0_[1]\,
      R => clear
    );
\dac_iir_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[20]_i_1_n_7\,
      Q => \dac_iir_reg_n_0_[20]\,
      R => clear
    );
\dac_iir_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[16]_i_1_n_0\,
      CO(3) => \dac_iir_reg[20]_i_1_n_0\,
      CO(2) => \dac_iir_reg[20]_i_1_n_1\,
      CO(1) => \dac_iir_reg[20]_i_1_n_2\,
      CO(0) => \dac_iir_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \dac_iir_reg[20]_i_2_n_4\,
      DI(2) => \dac_iir_reg[20]_i_2_n_5\,
      DI(1) => \dac_iir_reg[20]_i_2_n_6\,
      DI(0) => \dac_iir_reg[20]_i_2_n_7\,
      O(3) => \dac_iir_reg[20]_i_1_n_4\,
      O(2) => \dac_iir_reg[20]_i_1_n_5\,
      O(1) => \dac_iir_reg[20]_i_1_n_6\,
      O(0) => \dac_iir_reg[20]_i_1_n_7\,
      S(3) => \dac_iir[20]_i_3_n_0\,
      S(2) => \dac_iir[20]_i_4_n_0\,
      S(1) => \dac_iir[20]_i_5_n_0\,
      S(0) => \dac_iir[20]_i_6_n_0\
    );
\dac_iir_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[16]_i_2_n_0\,
      CO(3) => \dac_iir_reg[20]_i_2_n_0\,
      CO(2) => \dac_iir_reg[20]_i_2_n_1\,
      CO(1) => \dac_iir_reg[20]_i_2_n_2\,
      CO(0) => \dac_iir_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \dac_iir[20]_i_7_n_0\,
      DI(2) => \dac_iir[20]_i_8_n_0\,
      DI(1) => \dac_iir[20]_i_9_n_0\,
      DI(0) => \dac_iir[20]_i_10_n_0\,
      O(3) => \dac_iir_reg[20]_i_2_n_4\,
      O(2) => \dac_iir_reg[20]_i_2_n_5\,
      O(1) => \dac_iir_reg[20]_i_2_n_6\,
      O(0) => \dac_iir_reg[20]_i_2_n_7\,
      S(3) => \dac_iir[20]_i_11_n_0\,
      S(2) => \dac_iir[20]_i_12_n_0\,
      S(1) => \dac_iir[20]_i_13_n_0\,
      S(0) => \dac_iir[20]_i_14_n_0\
    );
\dac_iir_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[20]_i_1_n_6\,
      Q => \dac_iir_reg_n_0_[21]\,
      R => clear
    );
\dac_iir_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[20]_i_1_n_5\,
      Q => \dac_iir_reg_n_0_[22]\,
      R => clear
    );
\dac_iir_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[20]_i_1_n_4\,
      Q => \dac_iir_reg_n_0_[23]\,
      R => clear
    );
\dac_iir_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[24]_i_1_n_7\,
      Q => \dac_iir_reg_n_0_[24]\,
      R => clear
    );
\dac_iir_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[20]_i_1_n_0\,
      CO(3) => \dac_iir_reg[24]_i_1_n_0\,
      CO(2) => \dac_iir_reg[24]_i_1_n_1\,
      CO(1) => \dac_iir_reg[24]_i_1_n_2\,
      CO(0) => \dac_iir_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => in0,
      DI(2) => \dac_iir_reg[24]_i_2_n_5\,
      DI(1) => \dac_iir_reg[24]_i_2_n_6\,
      DI(0) => \dac_iir_reg[24]_i_2_n_7\,
      O(3) => \dac_iir_reg[24]_i_1_n_4\,
      O(2) => \dac_iir_reg[24]_i_1_n_5\,
      O(1) => \dac_iir_reg[24]_i_1_n_6\,
      O(0) => \dac_iir_reg[24]_i_1_n_7\,
      S(3) => \dac_iir[24]_i_3_n_0\,
      S(2) => \dac_iir[24]_i_4_n_0\,
      S(1) => \dac_iir[24]_i_5_n_0\,
      S(0) => \dac_iir[24]_i_6_n_0\
    );
\dac_iir_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[20]_i_2_n_0\,
      CO(3) => \NLW_dac_iir_reg[24]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \dac_iir_reg[24]_i_2_n_1\,
      CO(1) => \dac_iir_reg[24]_i_2_n_2\,
      CO(0) => \dac_iir_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \dac_iir[24]_i_7_n_0\,
      DI(1) => \dac_iir[24]_i_8_n_0\,
      DI(0) => \dac_iir[24]_i_9_n_0\,
      O(3) => in0,
      O(2) => \dac_iir_reg[24]_i_2_n_5\,
      O(1) => \dac_iir_reg[24]_i_2_n_6\,
      O(0) => \dac_iir_reg[24]_i_2_n_7\,
      S(3) => \dac_iir[24]_i_10_n_0\,
      S(2) => \dac_iir[24]_i_11_n_0\,
      S(1) => \dac_iir[24]_i_12_n_0\,
      S(0) => \dac_iir[24]_i_13_n_0\
    );
\dac_iir_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[24]_i_1_n_6\,
      Q => \dac_iir_reg_n_0_[25]\,
      R => clear
    );
\dac_iir_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[24]_i_1_n_5\,
      Q => \dac_iir_reg_n_0_[26]\,
      R => clear
    );
\dac_iir_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[24]_i_1_n_4\,
      Q => \dac_iir_reg_n_0_[27]\,
      R => clear
    );
\dac_iir_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[28]_i_1_n_7\,
      Q => \dac_iir_reg_n_0_[28]\,
      R => clear
    );
\dac_iir_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[24]_i_1_n_0\,
      CO(3) => \NLW_dac_iir_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \dac_iir_reg[28]_i_1_n_1\,
      CO(1) => \dac_iir_reg[28]_i_1_n_2\,
      CO(0) => \dac_iir_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => in0,
      DI(1) => in0,
      DI(0) => in0,
      O(3) => \dac_iir_reg[28]_i_1_n_4\,
      O(2) => \dac_iir_reg[28]_i_1_n_5\,
      O(1) => \dac_iir_reg[28]_i_1_n_6\,
      O(0) => \dac_iir_reg[28]_i_1_n_7\,
      S(3) => \dac_iir[28]_i_2_n_0\,
      S(2) => \dac_iir[28]_i_3_n_0\,
      S(1) => \dac_iir[28]_i_4_n_0\,
      S(0) => \dac_iir[28]_i_5_n_0\
    );
\dac_iir_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[28]_i_1_n_6\,
      Q => \dac_iir_reg_n_0_[29]\,
      R => clear
    );
\dac_iir_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[0]_i_1_n_5\,
      Q => \dac_iir_reg_n_0_[2]\,
      R => clear
    );
\dac_iir_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[28]_i_1_n_5\,
      Q => \dac_iir_reg_n_0_[30]\,
      R => clear
    );
\dac_iir_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[28]_i_1_n_4\,
      Q => p_0_in0,
      R => clear
    );
\dac_iir_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[0]_i_1_n_4\,
      Q => \dac_iir_reg_n_0_[3]\,
      R => clear
    );
\dac_iir_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[4]_i_1_n_7\,
      Q => \dac_iir_reg_n_0_[4]\,
      R => clear
    );
\dac_iir_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[0]_i_1_n_0\,
      CO(3) => \dac_iir_reg[4]_i_1_n_0\,
      CO(2) => \dac_iir_reg[4]_i_1_n_1\,
      CO(1) => \dac_iir_reg[4]_i_1_n_2\,
      CO(0) => \dac_iir_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \dac_iir_reg[4]_i_2_n_4\,
      DI(2) => \dac_iir_reg[4]_i_2_n_5\,
      DI(1) => \dac_iir_reg[4]_i_2_n_6\,
      DI(0) => \dac_iir_reg[4]_i_2_n_7\,
      O(3) => \dac_iir_reg[4]_i_1_n_4\,
      O(2) => \dac_iir_reg[4]_i_1_n_5\,
      O(1) => \dac_iir_reg[4]_i_1_n_6\,
      O(0) => \dac_iir_reg[4]_i_1_n_7\,
      S(3) => \dac_iir[4]_i_3_n_0\,
      S(2) => \dac_iir[4]_i_4_n_0\,
      S(1) => \dac_iir[4]_i_5_n_0\,
      S(0) => \dac_iir[4]_i_6_n_0\
    );
\dac_iir_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[0]_i_2_n_0\,
      CO(3) => \dac_iir_reg[4]_i_2_n_0\,
      CO(2) => \dac_iir_reg[4]_i_2_n_1\,
      CO(1) => \dac_iir_reg[4]_i_2_n_2\,
      CO(0) => \dac_iir_reg[4]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_reg_n_0_[17]\,
      DI(2) => \sum_reg_reg_n_0_[16]\,
      DI(1) => \sum_reg_reg_n_0_[15]\,
      DI(0) => \sum_reg_reg_n_0_[14]\,
      O(3) => \dac_iir_reg[4]_i_2_n_4\,
      O(2) => \dac_iir_reg[4]_i_2_n_5\,
      O(1) => \dac_iir_reg[4]_i_2_n_6\,
      O(0) => \dac_iir_reg[4]_i_2_n_7\,
      S(3) => \dac_iir[4]_i_7_n_0\,
      S(2) => \dac_iir[4]_i_8_n_0\,
      S(1) => \dac_iir[4]_i_9_n_0\,
      S(0) => \dac_iir[4]_i_10_n_0\
    );
\dac_iir_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[4]_i_1_n_6\,
      Q => \dac_iir_reg_n_0_[5]\,
      R => clear
    );
\dac_iir_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[4]_i_1_n_5\,
      Q => \dac_iir_reg_n_0_[6]\,
      R => clear
    );
\dac_iir_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[4]_i_1_n_4\,
      Q => \dac_iir_reg_n_0_[7]\,
      R => clear
    );
\dac_iir_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[8]_i_1_n_7\,
      Q => \dac_iir_reg_n_0_[8]\,
      R => clear
    );
\dac_iir_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[4]_i_1_n_0\,
      CO(3) => \dac_iir_reg[8]_i_1_n_0\,
      CO(2) => \dac_iir_reg[8]_i_1_n_1\,
      CO(1) => \dac_iir_reg[8]_i_1_n_2\,
      CO(0) => \dac_iir_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \dac_iir_reg[8]_i_2_n_4\,
      DI(2) => \dac_iir_reg[8]_i_2_n_5\,
      DI(1) => \dac_iir_reg[8]_i_2_n_6\,
      DI(0) => \dac_iir_reg[8]_i_2_n_7\,
      O(3) => \dac_iir_reg[8]_i_1_n_4\,
      O(2) => \dac_iir_reg[8]_i_1_n_5\,
      O(1) => \dac_iir_reg[8]_i_1_n_6\,
      O(0) => \dac_iir_reg[8]_i_1_n_7\,
      S(3) => \dac_iir[8]_i_3_n_0\,
      S(2) => \dac_iir[8]_i_4_n_0\,
      S(1) => \dac_iir[8]_i_5_n_0\,
      S(0) => \dac_iir[8]_i_6_n_0\
    );
\dac_iir_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_iir_reg[4]_i_2_n_0\,
      CO(3) => \dac_iir_reg[8]_i_2_n_0\,
      CO(2) => \dac_iir_reg[8]_i_2_n_1\,
      CO(1) => \dac_iir_reg[8]_i_2_n_2\,
      CO(0) => \dac_iir_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_reg_n_0_[21]\,
      DI(2) => \sum_reg_reg_n_0_[20]\,
      DI(1) => \sum_reg_reg_n_0_[19]\,
      DI(0) => \sum_reg_reg_n_0_[18]\,
      O(3) => \dac_iir_reg[8]_i_2_n_4\,
      O(2) => \dac_iir_reg[8]_i_2_n_5\,
      O(1) => \dac_iir_reg[8]_i_2_n_6\,
      O(0) => \dac_iir_reg[8]_i_2_n_7\,
      S(3) => \dac_iir[8]_i_7_n_0\,
      S(2) => \dac_iir[8]_i_8_n_0\,
      S(1) => \dac_iir[8]_i_9_n_0\,
      S(0) => \dac_iir[8]_i_10_n_0\
    );
\dac_iir_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \dac_iir_reg[8]_i_1_n_6\,
      Q => \dac_iir_reg_n_0_[9]\,
      R => clear
    );
\delay_line_reg[31][0]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(0),
      Q => \NLW_delay_line_reg[31][0]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][0]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][10]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(10),
      Q => \NLW_delay_line_reg[31][10]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][10]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][11]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(11),
      Q => \NLW_delay_line_reg[31][11]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][11]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][12]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(12),
      Q => \NLW_delay_line_reg[31][12]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][12]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][13]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(13),
      Q => \NLW_delay_line_reg[31][13]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][13]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][14]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(14),
      Q => \NLW_delay_line_reg[31][14]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][14]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][15]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(15),
      Q => \NLW_delay_line_reg[31][15]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][15]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][16]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(16),
      Q => \NLW_delay_line_reg[31][16]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][16]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][17]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(17),
      Q => \NLW_delay_line_reg[31][17]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][17]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][18]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(18),
      Q => \NLW_delay_line_reg[31][18]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][18]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][19]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(19),
      Q => \NLW_delay_line_reg[31][19]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][19]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][1]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(1),
      Q => \NLW_delay_line_reg[31][1]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][1]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][20]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(20),
      Q => \NLW_delay_line_reg[31][20]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][20]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][21]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(21),
      Q => \NLW_delay_line_reg[31][21]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][21]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][22]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(22),
      Q => \NLW_delay_line_reg[31][22]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][22]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][23]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(23),
      Q => \NLW_delay_line_reg[31][23]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][23]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][2]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(2),
      Q => \NLW_delay_line_reg[31][2]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][2]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][3]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(3),
      Q => \NLW_delay_line_reg[31][3]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][3]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][4]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(4),
      Q => \NLW_delay_line_reg[31][4]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][4]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][5]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(5),
      Q => \NLW_delay_line_reg[31][5]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][5]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][6]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(6),
      Q => \NLW_delay_line_reg[31][6]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][6]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][7]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(7),
      Q => \NLW_delay_line_reg[31][7]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][7]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][8]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(8),
      Q => \NLW_delay_line_reg[31][8]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][8]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[31][9]_srl32___delay_line_reg_r_30\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => valid_reg,
      CLK => aclk,
      D => selected_data(9),
      Q => \NLW_delay_line_reg[31][9]_srl32___delay_line_reg_r_30_Q_UNCONNECTED\,
      Q31 => \delay_line_reg[31][9]_srl32___delay_line_reg_r_30_n_1\
    );
\delay_line_reg[61][0]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][0]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][0]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][0]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][10]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][10]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][10]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][10]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][11]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][11]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][11]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][11]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][12]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][12]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][12]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][12]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][13]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][13]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][13]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][13]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][14]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][14]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][14]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][14]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][15]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][15]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][15]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][15]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][16]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][16]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][16]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][16]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][17]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][17]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][17]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][17]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][18]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][18]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][18]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][18]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][19]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][19]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][19]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][19]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][1]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][1]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][1]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][1]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][20]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][20]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][20]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][20]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][21]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][21]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][21]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][21]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][22]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][22]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][22]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][22]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][23]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][23]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][23]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][23]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][2]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][2]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][2]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][2]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][3]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][3]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][3]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][3]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][4]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][4]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][4]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][4]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][5]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][5]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][5]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][5]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][6]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][6]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][6]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][6]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][7]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][7]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][7]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][7]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][8]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][8]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][8]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][8]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[61][9]_srl30___delay_line_reg_r_60\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11101",
      CE => valid_reg,
      CLK => aclk,
      D => \delay_line_reg[31][9]_srl32___delay_line_reg_r_30_n_1\,
      Q => \delay_line_reg[61][9]_srl30___delay_line_reg_r_60_n_0\,
      Q31 => \NLW_delay_line_reg[61][9]_srl30___delay_line_reg_r_60_Q31_UNCONNECTED\
    );
\delay_line_reg[62][0]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][0]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][0]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][10]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][10]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][10]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][11]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][11]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][11]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][12]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][12]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][12]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][13]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][13]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][13]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][14]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][14]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][14]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][15]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][15]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][15]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][16]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][16]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][16]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][17]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][17]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][17]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][18]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][18]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][18]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][19]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][19]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][19]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][1]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][1]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][1]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][20]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][20]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][20]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][21]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][21]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][21]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][22]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][22]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][22]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][23]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][23]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][23]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][2]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][2]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][2]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][3]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][3]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][3]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][4]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][4]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][4]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][5]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][5]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][5]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][6]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][6]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][6]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][7]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][7]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][7]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][8]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][8]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][8]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[62][9]_delay_line_reg_r_61\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg[61][9]_srl30___delay_line_reg_r_60_n_0\,
      Q => \delay_line_reg[62][9]_delay_line_reg_r_61_n_0\,
      R => '0'
    );
\delay_line_reg[63][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__22_n_0\,
      Q => \delay_line_reg[63]\(0),
      R => clear
    );
\delay_line_reg[63][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__12_n_0\,
      Q => \delay_line_reg[63]\(10),
      R => clear
    );
\delay_line_reg[63][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__11_n_0\,
      Q => \delay_line_reg[63]\(11),
      R => clear
    );
\delay_line_reg[63][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__10_n_0\,
      Q => \delay_line_reg[63]\(12),
      R => clear
    );
\delay_line_reg[63][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__9_n_0\,
      Q => \delay_line_reg[63]\(13),
      R => clear
    );
\delay_line_reg[63][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__8_n_0\,
      Q => \delay_line_reg[63]\(14),
      R => clear
    );
\delay_line_reg[63][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__7_n_0\,
      Q => \delay_line_reg[63]\(15),
      R => clear
    );
\delay_line_reg[63][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__6_n_0\,
      Q => \delay_line_reg[63]\(16),
      R => clear
    );
\delay_line_reg[63][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__5_n_0\,
      Q => \delay_line_reg[63]\(17),
      R => clear
    );
\delay_line_reg[63][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__4_n_0\,
      Q => \delay_line_reg[63]\(18),
      R => clear
    );
\delay_line_reg[63][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__3_n_0\,
      Q => \delay_line_reg[63]\(19),
      R => clear
    );
\delay_line_reg[63][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__21_n_0\,
      Q => \delay_line_reg[63]\(1),
      R => clear
    );
\delay_line_reg[63][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__2_n_0\,
      Q => \delay_line_reg[63]\(20),
      R => clear
    );
\delay_line_reg[63][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__1_n_0\,
      Q => \delay_line_reg[63]\(21),
      R => clear
    );
\delay_line_reg[63][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__0_n_0\,
      Q => \delay_line_reg[63]\(22),
      R => clear
    );
\delay_line_reg[63][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_gate_n_0,
      Q => \delay_line_reg[63]\(23),
      R => clear
    );
\delay_line_reg[63][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__20_n_0\,
      Q => \delay_line_reg[63]\(2),
      R => clear
    );
\delay_line_reg[63][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__19_n_0\,
      Q => \delay_line_reg[63]\(3),
      R => clear
    );
\delay_line_reg[63][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__18_n_0\,
      Q => \delay_line_reg[63]\(4),
      R => clear
    );
\delay_line_reg[63][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__17_n_0\,
      Q => \delay_line_reg[63]\(5),
      R => clear
    );
\delay_line_reg[63][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__16_n_0\,
      Q => \delay_line_reg[63]\(6),
      R => clear
    );
\delay_line_reg[63][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__15_n_0\,
      Q => \delay_line_reg[63]\(7),
      R => clear
    );
\delay_line_reg[63][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__14_n_0\,
      Q => \delay_line_reg[63]\(8),
      R => clear
    );
\delay_line_reg[63][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \delay_line_reg_gate__13_n_0\,
      Q => \delay_line_reg[63]\(9),
      R => clear
    );
delay_line_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][23]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => delay_line_reg_gate_n_0
    );
\delay_line_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][22]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__0_n_0\
    );
\delay_line_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][21]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__1_n_0\
    );
\delay_line_reg_gate__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][12]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__10_n_0\
    );
\delay_line_reg_gate__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][11]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__11_n_0\
    );
\delay_line_reg_gate__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][10]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__12_n_0\
    );
\delay_line_reg_gate__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][9]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__13_n_0\
    );
\delay_line_reg_gate__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][8]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__14_n_0\
    );
\delay_line_reg_gate__15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][7]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__15_n_0\
    );
\delay_line_reg_gate__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][6]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__16_n_0\
    );
\delay_line_reg_gate__17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][5]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__17_n_0\
    );
\delay_line_reg_gate__18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][4]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__18_n_0\
    );
\delay_line_reg_gate__19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][3]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__19_n_0\
    );
\delay_line_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][20]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__2_n_0\
    );
\delay_line_reg_gate__20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][2]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__20_n_0\
    );
\delay_line_reg_gate__21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][1]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__21_n_0\
    );
\delay_line_reg_gate__22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][0]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__22_n_0\
    );
\delay_line_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][19]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__3_n_0\
    );
\delay_line_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][18]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__4_n_0\
    );
\delay_line_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][17]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__5_n_0\
    );
\delay_line_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][16]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__6_n_0\
    );
\delay_line_reg_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][15]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__7_n_0\
    );
\delay_line_reg_gate__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][14]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__8_n_0\
    );
\delay_line_reg_gate__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_line_reg[62][13]_delay_line_reg_r_61_n_0\,
      I1 => delay_line_reg_r_61_n_0,
      O => \delay_line_reg_gate__9_n_0\
    );
delay_line_reg_r: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => '1',
      Q => delay_line_reg_r_n_0,
      R => clear
    );
delay_line_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_n_0,
      Q => delay_line_reg_r_0_n_0,
      R => clear
    );
delay_line_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_0_n_0,
      Q => delay_line_reg_r_1_n_0,
      R => clear
    );
delay_line_reg_r_10: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_9_n_0,
      Q => delay_line_reg_r_10_n_0,
      R => clear
    );
delay_line_reg_r_11: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_10_n_0,
      Q => delay_line_reg_r_11_n_0,
      R => clear
    );
delay_line_reg_r_12: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_11_n_0,
      Q => delay_line_reg_r_12_n_0,
      R => clear
    );
delay_line_reg_r_13: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_12_n_0,
      Q => delay_line_reg_r_13_n_0,
      R => clear
    );
delay_line_reg_r_14: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_13_n_0,
      Q => delay_line_reg_r_14_n_0,
      R => clear
    );
delay_line_reg_r_15: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_14_n_0,
      Q => delay_line_reg_r_15_n_0,
      R => clear
    );
delay_line_reg_r_16: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_15_n_0,
      Q => delay_line_reg_r_16_n_0,
      R => clear
    );
delay_line_reg_r_17: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_16_n_0,
      Q => delay_line_reg_r_17_n_0,
      R => clear
    );
delay_line_reg_r_18: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_17_n_0,
      Q => delay_line_reg_r_18_n_0,
      R => clear
    );
delay_line_reg_r_19: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_18_n_0,
      Q => delay_line_reg_r_19_n_0,
      R => clear
    );
delay_line_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_1_n_0,
      Q => delay_line_reg_r_2_n_0,
      R => clear
    );
delay_line_reg_r_20: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_19_n_0,
      Q => delay_line_reg_r_20_n_0,
      R => clear
    );
delay_line_reg_r_21: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_20_n_0,
      Q => delay_line_reg_r_21_n_0,
      R => clear
    );
delay_line_reg_r_22: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_21_n_0,
      Q => delay_line_reg_r_22_n_0,
      R => clear
    );
delay_line_reg_r_23: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_22_n_0,
      Q => delay_line_reg_r_23_n_0,
      R => clear
    );
delay_line_reg_r_24: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_23_n_0,
      Q => delay_line_reg_r_24_n_0,
      R => clear
    );
delay_line_reg_r_25: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_24_n_0,
      Q => delay_line_reg_r_25_n_0,
      R => clear
    );
delay_line_reg_r_26: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_25_n_0,
      Q => delay_line_reg_r_26_n_0,
      R => clear
    );
delay_line_reg_r_27: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_26_n_0,
      Q => delay_line_reg_r_27_n_0,
      R => clear
    );
delay_line_reg_r_28: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_27_n_0,
      Q => delay_line_reg_r_28_n_0,
      R => clear
    );
delay_line_reg_r_29: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_28_n_0,
      Q => delay_line_reg_r_29_n_0,
      R => clear
    );
delay_line_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_2_n_0,
      Q => delay_line_reg_r_3_n_0,
      R => clear
    );
delay_line_reg_r_30: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_29_n_0,
      Q => delay_line_reg_r_30_n_0,
      R => clear
    );
delay_line_reg_r_31: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_30_n_0,
      Q => delay_line_reg_r_31_n_0,
      R => clear
    );
delay_line_reg_r_32: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_31_n_0,
      Q => delay_line_reg_r_32_n_0,
      R => clear
    );
delay_line_reg_r_33: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_32_n_0,
      Q => delay_line_reg_r_33_n_0,
      R => clear
    );
delay_line_reg_r_34: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_33_n_0,
      Q => delay_line_reg_r_34_n_0,
      R => clear
    );
delay_line_reg_r_35: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_34_n_0,
      Q => delay_line_reg_r_35_n_0,
      R => clear
    );
delay_line_reg_r_36: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_35_n_0,
      Q => delay_line_reg_r_36_n_0,
      R => clear
    );
delay_line_reg_r_37: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_36_n_0,
      Q => delay_line_reg_r_37_n_0,
      R => clear
    );
delay_line_reg_r_38: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_37_n_0,
      Q => delay_line_reg_r_38_n_0,
      R => clear
    );
delay_line_reg_r_39: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_38_n_0,
      Q => delay_line_reg_r_39_n_0,
      R => clear
    );
delay_line_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_3_n_0,
      Q => delay_line_reg_r_4_n_0,
      R => clear
    );
delay_line_reg_r_40: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_39_n_0,
      Q => delay_line_reg_r_40_n_0,
      R => clear
    );
delay_line_reg_r_41: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_40_n_0,
      Q => delay_line_reg_r_41_n_0,
      R => clear
    );
delay_line_reg_r_42: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_41_n_0,
      Q => delay_line_reg_r_42_n_0,
      R => clear
    );
delay_line_reg_r_43: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_42_n_0,
      Q => delay_line_reg_r_43_n_0,
      R => clear
    );
delay_line_reg_r_44: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_43_n_0,
      Q => delay_line_reg_r_44_n_0,
      R => clear
    );
delay_line_reg_r_45: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_44_n_0,
      Q => delay_line_reg_r_45_n_0,
      R => clear
    );
delay_line_reg_r_46: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_45_n_0,
      Q => delay_line_reg_r_46_n_0,
      R => clear
    );
delay_line_reg_r_47: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_46_n_0,
      Q => delay_line_reg_r_47_n_0,
      R => clear
    );
delay_line_reg_r_48: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_47_n_0,
      Q => delay_line_reg_r_48_n_0,
      R => clear
    );
delay_line_reg_r_49: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_48_n_0,
      Q => delay_line_reg_r_49_n_0,
      R => clear
    );
delay_line_reg_r_5: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_4_n_0,
      Q => delay_line_reg_r_5_n_0,
      R => clear
    );
delay_line_reg_r_50: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_49_n_0,
      Q => delay_line_reg_r_50_n_0,
      R => clear
    );
delay_line_reg_r_51: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_50_n_0,
      Q => delay_line_reg_r_51_n_0,
      R => clear
    );
delay_line_reg_r_52: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_51_n_0,
      Q => delay_line_reg_r_52_n_0,
      R => clear
    );
delay_line_reg_r_53: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_52_n_0,
      Q => delay_line_reg_r_53_n_0,
      R => clear
    );
delay_line_reg_r_54: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_53_n_0,
      Q => delay_line_reg_r_54_n_0,
      R => clear
    );
delay_line_reg_r_55: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_54_n_0,
      Q => delay_line_reg_r_55_n_0,
      R => clear
    );
delay_line_reg_r_56: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_55_n_0,
      Q => delay_line_reg_r_56_n_0,
      R => clear
    );
delay_line_reg_r_57: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_56_n_0,
      Q => delay_line_reg_r_57_n_0,
      R => clear
    );
delay_line_reg_r_58: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_57_n_0,
      Q => delay_line_reg_r_58_n_0,
      R => clear
    );
delay_line_reg_r_59: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_58_n_0,
      Q => delay_line_reg_r_59_n_0,
      R => clear
    );
delay_line_reg_r_6: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_5_n_0,
      Q => delay_line_reg_r_6_n_0,
      R => clear
    );
delay_line_reg_r_60: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_59_n_0,
      Q => delay_line_reg_r_60_n_0,
      R => clear
    );
delay_line_reg_r_61: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_60_n_0,
      Q => delay_line_reg_r_61_n_0,
      R => clear
    );
delay_line_reg_r_7: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_6_n_0,
      Q => delay_line_reg_r_7_n_0,
      R => clear
    );
delay_line_reg_r_8: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_7_n_0,
      Q => delay_line_reg_r_8_n_0,
      R => clear
    );
delay_line_reg_r_9: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => delay_line_reg_r_8_n_0,
      Q => delay_line_reg_r_9_n_0,
      R => clear
    );
frame_accepting_samples_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B030FFFFFFFFFFFF"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => valid_reg,
      I2 => frame_accepting_samples_reg_n_0,
      I3 => axis_data_fifo_reg_0_15_30_31_i_2_n_0,
      I4 => aresetn,
      I5 => capture_enable_sync,
      O => frame_accepting_samples_i_1_n_0
    );
frame_accepting_samples_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => frame_accepting_samples_i_1_n_0,
      Q => frame_accepting_samples_reg_n_0,
      R => '0'
    );
\frame_sample_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => \frame_sample_count_reg_n_0_[0]\,
      O => \frame_sample_count[0]_i_1_n_0\
    );
\frame_sample_count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(10),
      O => frame_sample_count(10)
    );
\frame_sample_count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(11),
      O => frame_sample_count(11)
    );
\frame_sample_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(1),
      O => frame_sample_count(1)
    );
\frame_sample_count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(2),
      O => frame_sample_count(2)
    );
\frame_sample_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(3),
      O => frame_sample_count(3)
    );
\frame_sample_count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(4),
      O => frame_sample_count(4)
    );
\frame_sample_count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(5),
      O => frame_sample_count(5)
    );
\frame_sample_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(6),
      O => frame_sample_count(6)
    );
\frame_sample_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(7),
      O => frame_sample_count(7)
    );
\frame_sample_count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(8),
      O => frame_sample_count(8)
    );
\frame_sample_count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_last_fifo_reg_0_15_0_0_i_2_n_0,
      I1 => data0(9),
      O => frame_sample_count(9)
    );
\frame_sample_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => \frame_sample_count[0]_i_1_n_0\,
      Q => \frame_sample_count_reg_n_0_[0]\,
      R => pointer0
    );
\frame_sample_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(10),
      Q => \frame_sample_count_reg_n_0_[10]\,
      R => pointer0
    );
\frame_sample_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(11),
      Q => \frame_sample_count_reg_n_0_[11]\,
      R => pointer0
    );
\frame_sample_count_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_sample_count_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_frame_sample_count_reg[11]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \frame_sample_count_reg[11]_i_2_n_2\,
      CO(0) => \frame_sample_count_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_frame_sample_count_reg[11]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2) => \frame_sample_count_reg_n_0_[11]\,
      S(1) => \frame_sample_count_reg_n_0_[10]\,
      S(0) => \frame_sample_count_reg_n_0_[9]\
    );
\frame_sample_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(1),
      Q => \frame_sample_count_reg_n_0_[1]\,
      R => pointer0
    );
\frame_sample_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(2),
      Q => \frame_sample_count_reg_n_0_[2]\,
      R => pointer0
    );
\frame_sample_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(3),
      Q => \frame_sample_count_reg_n_0_[3]\,
      R => pointer0
    );
\frame_sample_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(4),
      Q => \frame_sample_count_reg_n_0_[4]\,
      R => pointer0
    );
\frame_sample_count_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame_sample_count_reg[4]_i_2_n_0\,
      CO(2) => \frame_sample_count_reg[4]_i_2_n_1\,
      CO(1) => \frame_sample_count_reg[4]_i_2_n_2\,
      CO(0) => \frame_sample_count_reg[4]_i_2_n_3\,
      CYINIT => \frame_sample_count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \frame_sample_count_reg_n_0_[4]\,
      S(2) => \frame_sample_count_reg_n_0_[3]\,
      S(1) => \frame_sample_count_reg_n_0_[2]\,
      S(0) => \frame_sample_count_reg_n_0_[1]\
    );
\frame_sample_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(5),
      Q => \frame_sample_count_reg_n_0_[5]\,
      R => pointer0
    );
\frame_sample_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(6),
      Q => \frame_sample_count_reg_n_0_[6]\,
      R => pointer0
    );
\frame_sample_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(7),
      Q => \frame_sample_count_reg_n_0_[7]\,
      R => pointer0
    );
\frame_sample_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(8),
      Q => \frame_sample_count_reg_n_0_[8]\,
      R => pointer0
    );
\frame_sample_count_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_sample_count_reg[4]_i_2_n_0\,
      CO(3) => \frame_sample_count_reg[8]_i_2_n_0\,
      CO(2) => \frame_sample_count_reg[8]_i_2_n_1\,
      CO(1) => \frame_sample_count_reg[8]_i_2_n_2\,
      CO(0) => \frame_sample_count_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \frame_sample_count_reg_n_0_[8]\,
      S(2) => \frame_sample_count_reg_n_0_[7]\,
      S(1) => \frame_sample_count_reg_n_0_[6]\,
      S(0) => \frame_sample_count_reg_n_0_[5]\
    );
\frame_sample_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_push,
      D => frame_sample_count(9),
      Q => \frame_sample_count_reg_n_0_[9]\,
      R => pointer0
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => axis_fifo_level(1),
      I1 => axis_fifo_level(2),
      I2 => axis_fifo_level(0),
      I3 => axis_fifo_level(3),
      I4 => axis_fifo_level(4),
      O => m_axis_tvalid
    );
\mux_meta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mux_ctrl(0),
      Q => mux_meta(0),
      R => clear
    );
\mux_meta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mux_ctrl(1),
      Q => mux_meta(1),
      R => clear
    );
\mux_meta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mux_ctrl(2),
      Q => mux_meta(2),
      R => clear
    );
\mux_sel[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mux_sync(0),
      I1 => p_1_in,
      I2 => mux_sel(0),
      O => \mux_sel[0]_i_1_n_0\
    );
\mux_sel[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mux_sync(1),
      I1 => p_1_in,
      I2 => mux_sel(1),
      O => \mux_sel[1]_i_1_n_0\
    );
\mux_sel[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mux_sync(2),
      I1 => p_1_in,
      I2 => mux_sel(2),
      O => \mux_sel[2]_i_1_n_0\
    );
\mux_sel[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => mux_sync(0),
      I1 => mux_sync_d(0),
      I2 => mux_sync_d(2),
      I3 => mux_sync(2),
      I4 => mux_sync_d(1),
      I5 => mux_sync(1),
      O => p_1_in
    );
\mux_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \mux_sel[0]_i_1_n_0\,
      Q => mux_sel(0),
      R => clear
    );
\mux_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \mux_sel[1]_i_1_n_0\,
      Q => mux_sel(1),
      R => clear
    );
\mux_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \mux_sel[2]_i_1_n_0\,
      Q => mux_sel(2),
      R => clear
    );
\mux_sync_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mux_sync(0),
      Q => mux_sync_d(0),
      R => clear
    );
\mux_sync_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mux_sync(1),
      Q => mux_sync_d(1),
      R => clear
    );
\mux_sync_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mux_sync(2),
      Q => mux_sync_d(2),
      R => clear
    );
\mux_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mux_meta(0),
      Q => mux_sync(0),
      R => clear
    );
\mux_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mux_meta(1),
      Q => mux_sync(1),
      R => clear
    );
\mux_sync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mux_meta(2),
      Q => mux_sync(2),
      R => clear
    );
\selected_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(0),
      I1 => mag_out(0),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[0]_i_1_n_0\
    );
\selected_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(10),
      I1 => mag_out(10),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[10]_i_1_n_0\
    );
\selected_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(11),
      I1 => mag_out(11),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[11]_i_1_n_0\
    );
\selected_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(12),
      I1 => mag_out(12),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[12]_i_1_n_0\
    );
\selected_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(13),
      I1 => mag_out(13),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[13]_i_1_n_0\
    );
\selected_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(14),
      I1 => mag_out(14),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[14]_i_1_n_0\
    );
\selected_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(15),
      I1 => mag_out(15),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[15]_i_1_n_0\
    );
\selected_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(16),
      I1 => mag_out(16),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[16]_i_1_n_0\
    );
\selected_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(17),
      I1 => mag_out(17),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[17]_i_1_n_0\
    );
\selected_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(18),
      I1 => mag_out(18),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[18]_i_1_n_0\
    );
\selected_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(19),
      I1 => mag_out(19),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[19]_i_1_n_0\
    );
\selected_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(1),
      I1 => mag_out(1),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[1]_i_1_n_0\
    );
\selected_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(20),
      I1 => mag_out(20),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[20]_i_1_n_0\
    );
\selected_data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(21),
      I1 => mag_out(21),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[21]_i_1_n_0\
    );
\selected_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(22),
      I1 => mag_out(22),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[22]_i_1_n_0\
    );
\selected_data[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6200"
    )
        port map (
      I0 => mux_sel(1),
      I1 => mux_sel(0),
      I2 => mux_sel(2),
      I3 => dphi_out(23),
      O => \selected_data[23]_i_1_n_0\
    );
\selected_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(2),
      I1 => mag_out(2),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[2]_i_1_n_0\
    );
\selected_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(3),
      I1 => mag_out(3),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[3]_i_1_n_0\
    );
\selected_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(4),
      I1 => mag_out(4),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[4]_i_1_n_0\
    );
\selected_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(5),
      I1 => mag_out(5),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[5]_i_1_n_0\
    );
\selected_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(6),
      I1 => mag_out(6),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[6]_i_1_n_0\
    );
\selected_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(7),
      I1 => mag_out(7),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[7]_i_1_n_0\
    );
\selected_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(8),
      I1 => mag_out(8),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[8]_i_1_n_0\
    );
\selected_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAACC0"
    )
        port map (
      I0 => dphi_out(9),
      I1 => mag_out(9),
      I2 => mux_sel(2),
      I3 => mux_sel(0),
      I4 => mux_sel(1),
      O => \selected_data[9]_i_1_n_0\
    );
\selected_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[0]_i_1_n_0\,
      Q => selected_data(0),
      R => clear
    );
\selected_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[10]_i_1_n_0\,
      Q => selected_data(10),
      R => clear
    );
\selected_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[11]_i_1_n_0\,
      Q => selected_data(11),
      R => clear
    );
\selected_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[12]_i_1_n_0\,
      Q => selected_data(12),
      R => clear
    );
\selected_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[13]_i_1_n_0\,
      Q => selected_data(13),
      R => clear
    );
\selected_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[14]_i_1_n_0\,
      Q => selected_data(14),
      R => clear
    );
\selected_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[15]_i_1_n_0\,
      Q => selected_data(15),
      R => clear
    );
\selected_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[16]_i_1_n_0\,
      Q => selected_data(16),
      R => clear
    );
\selected_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[17]_i_1_n_0\,
      Q => selected_data(17),
      R => clear
    );
\selected_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[18]_i_1_n_0\,
      Q => selected_data(18),
      R => clear
    );
\selected_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[19]_i_1_n_0\,
      Q => selected_data(19),
      R => clear
    );
\selected_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[1]_i_1_n_0\,
      Q => selected_data(1),
      R => clear
    );
\selected_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[20]_i_1_n_0\,
      Q => selected_data(20),
      R => clear
    );
\selected_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[21]_i_1_n_0\,
      Q => selected_data(21),
      R => clear
    );
\selected_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[22]_i_1_n_0\,
      Q => selected_data(22),
      R => clear
    );
\selected_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[23]_i_1_n_0\,
      Q => selected_data(23),
      R => clear
    );
\selected_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[2]_i_1_n_0\,
      Q => selected_data(2),
      R => clear
    );
\selected_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[3]_i_1_n_0\,
      Q => selected_data(3),
      R => clear
    );
\selected_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[4]_i_1_n_0\,
      Q => selected_data(4),
      R => clear
    );
\selected_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[5]_i_1_n_0\,
      Q => selected_data(5),
      R => clear
    );
\selected_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[6]_i_1_n_0\,
      Q => selected_data(6),
      R => clear
    );
\selected_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[7]_i_1_n_0\,
      Q => selected_data(7),
      R => clear
    );
\selected_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[8]_i_1_n_0\,
      Q => selected_data(8),
      R => clear
    );
\selected_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \selected_data[9]_i_1_n_0\,
      Q => selected_data(9),
      R => clear
    );
\sum_reg[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(10),
      I1 => \sum_reg_reg_n_0_[10]\,
      I2 => selected_data(10),
      O => \sum_reg[11]_i_2_n_0\
    );
\sum_reg[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(9),
      I1 => \sum_reg_reg_n_0_[9]\,
      I2 => selected_data(9),
      O => \sum_reg[11]_i_3_n_0\
    );
\sum_reg[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(8),
      I1 => \sum_reg_reg_n_0_[8]\,
      I2 => selected_data(8),
      O => \sum_reg[11]_i_4_n_0\
    );
\sum_reg[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(7),
      I1 => \sum_reg_reg_n_0_[7]\,
      I2 => selected_data(7),
      O => \sum_reg[11]_i_5_n_0\
    );
\sum_reg[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(10),
      I1 => \sum_reg_reg_n_0_[10]\,
      I2 => \delay_line_reg[63]\(10),
      I3 => \delay_line_reg[63]\(11),
      I4 => selected_data(11),
      I5 => \sum_reg_reg_n_0_[11]\,
      O => \sum_reg[11]_i_6_n_0\
    );
\sum_reg[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(9),
      I1 => \sum_reg_reg_n_0_[9]\,
      I2 => \delay_line_reg[63]\(9),
      I3 => \delay_line_reg[63]\(10),
      I4 => selected_data(10),
      I5 => \sum_reg_reg_n_0_[10]\,
      O => \sum_reg[11]_i_7_n_0\
    );
\sum_reg[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(8),
      I1 => \sum_reg_reg_n_0_[8]\,
      I2 => \delay_line_reg[63]\(8),
      I3 => \delay_line_reg[63]\(9),
      I4 => selected_data(9),
      I5 => \sum_reg_reg_n_0_[9]\,
      O => \sum_reg[11]_i_8_n_0\
    );
\sum_reg[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(7),
      I1 => \sum_reg_reg_n_0_[7]\,
      I2 => \delay_line_reg[63]\(7),
      I3 => \delay_line_reg[63]\(8),
      I4 => selected_data(8),
      I5 => \sum_reg_reg_n_0_[8]\,
      O => \sum_reg[11]_i_9_n_0\
    );
\sum_reg[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(14),
      I1 => \sum_reg_reg_n_0_[14]\,
      I2 => selected_data(14),
      O => \sum_reg[15]_i_2_n_0\
    );
\sum_reg[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(13),
      I1 => \sum_reg_reg_n_0_[13]\,
      I2 => selected_data(13),
      O => \sum_reg[15]_i_3_n_0\
    );
\sum_reg[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(12),
      I1 => \sum_reg_reg_n_0_[12]\,
      I2 => selected_data(12),
      O => \sum_reg[15]_i_4_n_0\
    );
\sum_reg[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(11),
      I1 => \sum_reg_reg_n_0_[11]\,
      I2 => selected_data(11),
      O => \sum_reg[15]_i_5_n_0\
    );
\sum_reg[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(14),
      I1 => \sum_reg_reg_n_0_[14]\,
      I2 => \delay_line_reg[63]\(14),
      I3 => \delay_line_reg[63]\(15),
      I4 => selected_data(15),
      I5 => \sum_reg_reg_n_0_[15]\,
      O => \sum_reg[15]_i_6_n_0\
    );
\sum_reg[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(13),
      I1 => \sum_reg_reg_n_0_[13]\,
      I2 => \delay_line_reg[63]\(13),
      I3 => \delay_line_reg[63]\(14),
      I4 => selected_data(14),
      I5 => \sum_reg_reg_n_0_[14]\,
      O => \sum_reg[15]_i_7_n_0\
    );
\sum_reg[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(12),
      I1 => \sum_reg_reg_n_0_[12]\,
      I2 => \delay_line_reg[63]\(12),
      I3 => \delay_line_reg[63]\(13),
      I4 => selected_data(13),
      I5 => \sum_reg_reg_n_0_[13]\,
      O => \sum_reg[15]_i_8_n_0\
    );
\sum_reg[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(11),
      I1 => \sum_reg_reg_n_0_[11]\,
      I2 => \delay_line_reg[63]\(11),
      I3 => \delay_line_reg[63]\(12),
      I4 => selected_data(12),
      I5 => \sum_reg_reg_n_0_[12]\,
      O => \sum_reg[15]_i_9_n_0\
    );
\sum_reg[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(18),
      I1 => \sum_reg_reg_n_0_[18]\,
      I2 => selected_data(18),
      O => \sum_reg[19]_i_2_n_0\
    );
\sum_reg[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(17),
      I1 => \sum_reg_reg_n_0_[17]\,
      I2 => selected_data(17),
      O => \sum_reg[19]_i_3_n_0\
    );
\sum_reg[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(16),
      I1 => \sum_reg_reg_n_0_[16]\,
      I2 => selected_data(16),
      O => \sum_reg[19]_i_4_n_0\
    );
\sum_reg[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(15),
      I1 => \sum_reg_reg_n_0_[15]\,
      I2 => selected_data(15),
      O => \sum_reg[19]_i_5_n_0\
    );
\sum_reg[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(18),
      I1 => \sum_reg_reg_n_0_[18]\,
      I2 => \delay_line_reg[63]\(18),
      I3 => \delay_line_reg[63]\(19),
      I4 => selected_data(19),
      I5 => \sum_reg_reg_n_0_[19]\,
      O => \sum_reg[19]_i_6_n_0\
    );
\sum_reg[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(17),
      I1 => \sum_reg_reg_n_0_[17]\,
      I2 => \delay_line_reg[63]\(17),
      I3 => \delay_line_reg[63]\(18),
      I4 => selected_data(18),
      I5 => \sum_reg_reg_n_0_[18]\,
      O => \sum_reg[19]_i_7_n_0\
    );
\sum_reg[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(16),
      I1 => \sum_reg_reg_n_0_[16]\,
      I2 => \delay_line_reg[63]\(16),
      I3 => \delay_line_reg[63]\(17),
      I4 => selected_data(17),
      I5 => \sum_reg_reg_n_0_[17]\,
      O => \sum_reg[19]_i_8_n_0\
    );
\sum_reg[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(15),
      I1 => \sum_reg_reg_n_0_[15]\,
      I2 => \delay_line_reg[63]\(15),
      I3 => \delay_line_reg[63]\(16),
      I4 => selected_data(16),
      I5 => \sum_reg_reg_n_0_[16]\,
      O => \sum_reg[19]_i_9_n_0\
    );
\sum_reg[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(22),
      I1 => \sum_reg_reg_n_0_[22]\,
      I2 => selected_data(22),
      O => \sum_reg[23]_i_2_n_0\
    );
\sum_reg[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(21),
      I1 => \sum_reg_reg_n_0_[21]\,
      I2 => selected_data(21),
      O => \sum_reg[23]_i_3_n_0\
    );
\sum_reg[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(20),
      I1 => \sum_reg_reg_n_0_[20]\,
      I2 => selected_data(20),
      O => \sum_reg[23]_i_4_n_0\
    );
\sum_reg[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(19),
      I1 => \sum_reg_reg_n_0_[19]\,
      I2 => selected_data(19),
      O => \sum_reg[23]_i_5_n_0\
    );
\sum_reg[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(22),
      I1 => \sum_reg_reg_n_0_[22]\,
      I2 => \delay_line_reg[63]\(22),
      I3 => \delay_line_reg[63]\(23),
      I4 => selected_data(23),
      I5 => \sum_reg_reg_n_0_[23]\,
      O => \sum_reg[23]_i_6_n_0\
    );
\sum_reg[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(21),
      I1 => \sum_reg_reg_n_0_[21]\,
      I2 => \delay_line_reg[63]\(21),
      I3 => \delay_line_reg[63]\(22),
      I4 => selected_data(22),
      I5 => \sum_reg_reg_n_0_[22]\,
      O => \sum_reg[23]_i_7_n_0\
    );
\sum_reg[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(20),
      I1 => \sum_reg_reg_n_0_[20]\,
      I2 => \delay_line_reg[63]\(20),
      I3 => \delay_line_reg[63]\(21),
      I4 => selected_data(21),
      I5 => \sum_reg_reg_n_0_[21]\,
      O => \sum_reg[23]_i_8_n_0\
    );
\sum_reg[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(19),
      I1 => \sum_reg_reg_n_0_[19]\,
      I2 => \delay_line_reg[63]\(19),
      I3 => \delay_line_reg[63]\(20),
      I4 => selected_data(20),
      I5 => \sum_reg_reg_n_0_[20]\,
      O => \sum_reg[23]_i_9_n_0\
    );
\sum_reg[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \delay_line_reg[63]\(23),
      I1 => selected_data(23),
      I2 => \sum_reg_reg_n_0_[23]\,
      O => \sum_reg[27]_i_2_n_0\
    );
\sum_reg[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[26]\,
      I1 => \sum_reg_reg_n_0_[27]\,
      O => \sum_reg[27]_i_3_n_0\
    );
\sum_reg[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[25]\,
      I1 => \sum_reg_reg_n_0_[26]\,
      O => \sum_reg[27]_i_4_n_0\
    );
\sum_reg[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[24]\,
      I1 => \sum_reg_reg_n_0_[25]\,
      O => \sum_reg[27]_i_5_n_0\
    );
\sum_reg[27]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B24D"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[23]\,
      I1 => selected_data(23),
      I2 => \delay_line_reg[63]\(23),
      I3 => \sum_reg_reg_n_0_[24]\,
      O => \sum_reg[27]_i_6_n_0\
    );
\sum_reg[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[28]\,
      I1 => lpf_data_320,
      O => \sum_reg[29]_i_2_n_0\
    );
\sum_reg[29]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[27]\,
      I1 => \sum_reg_reg_n_0_[28]\,
      O => \sum_reg[29]_i_3_n_0\
    );
\sum_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(2),
      I1 => \sum_reg_reg_n_0_[2]\,
      I2 => selected_data(2),
      O => \sum_reg[3]_i_2_n_0\
    );
\sum_reg[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(1),
      I1 => \sum_reg_reg_n_0_[1]\,
      I2 => selected_data(1),
      O => \sum_reg[3]_i_3_n_0\
    );
\sum_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => selected_data(0),
      I1 => \sum_reg_reg_n_0_[0]\,
      O => \sum_reg[3]_i_4_n_0\
    );
\sum_reg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => selected_data(0),
      I1 => \sum_reg_reg_n_0_[0]\,
      O => \sum_reg[3]_i_5_n_0\
    );
\sum_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(2),
      I1 => \sum_reg_reg_n_0_[2]\,
      I2 => \delay_line_reg[63]\(2),
      I3 => \delay_line_reg[63]\(3),
      I4 => selected_data(3),
      I5 => \sum_reg_reg_n_0_[3]\,
      O => \sum_reg[3]_i_6_n_0\
    );
\sum_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(1),
      I1 => \sum_reg_reg_n_0_[1]\,
      I2 => \delay_line_reg[63]\(1),
      I3 => \delay_line_reg[63]\(2),
      I4 => selected_data(2),
      I5 => \sum_reg_reg_n_0_[2]\,
      O => \sum_reg[3]_i_7_n_0\
    );
\sum_reg[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E11E1EE1"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[0]\,
      I1 => selected_data(0),
      I2 => \delay_line_reg[63]\(1),
      I3 => selected_data(1),
      I4 => \sum_reg_reg_n_0_[1]\,
      O => \sum_reg[3]_i_8_n_0\
    );
\sum_reg[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \sum_reg_reg_n_0_[0]\,
      I1 => selected_data(0),
      I2 => \delay_line_reg[63]\(0),
      O => \sum_reg[3]_i_9_n_0\
    );
\sum_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(6),
      I1 => \sum_reg_reg_n_0_[6]\,
      I2 => selected_data(6),
      O => \sum_reg[7]_i_2_n_0\
    );
\sum_reg[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(5),
      I1 => \sum_reg_reg_n_0_[5]\,
      I2 => selected_data(5),
      O => \sum_reg[7]_i_3_n_0\
    );
\sum_reg[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(4),
      I1 => \sum_reg_reg_n_0_[4]\,
      I2 => selected_data(4),
      O => \sum_reg[7]_i_4_n_0\
    );
\sum_reg[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \delay_line_reg[63]\(3),
      I1 => \sum_reg_reg_n_0_[3]\,
      I2 => selected_data(3),
      O => \sum_reg[7]_i_5_n_0\
    );
\sum_reg[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(6),
      I1 => \sum_reg_reg_n_0_[6]\,
      I2 => \delay_line_reg[63]\(6),
      I3 => \delay_line_reg[63]\(7),
      I4 => selected_data(7),
      I5 => \sum_reg_reg_n_0_[7]\,
      O => \sum_reg[7]_i_6_n_0\
    );
\sum_reg[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(5),
      I1 => \sum_reg_reg_n_0_[5]\,
      I2 => \delay_line_reg[63]\(5),
      I3 => \delay_line_reg[63]\(6),
      I4 => selected_data(6),
      I5 => \sum_reg_reg_n_0_[6]\,
      O => \sum_reg[7]_i_7_n_0\
    );
\sum_reg[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(4),
      I1 => \sum_reg_reg_n_0_[4]\,
      I2 => \delay_line_reg[63]\(4),
      I3 => \delay_line_reg[63]\(5),
      I4 => selected_data(5),
      I5 => \sum_reg_reg_n_0_[5]\,
      O => \sum_reg[7]_i_8_n_0\
    );
\sum_reg[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => selected_data(3),
      I1 => \sum_reg_reg_n_0_[3]\,
      I2 => \delay_line_reg[63]\(3),
      I3 => \delay_line_reg[63]\(4),
      I4 => selected_data(4),
      I5 => \sum_reg_reg_n_0_[4]\,
      O => \sum_reg[7]_i_9_n_0\
    );
\sum_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[3]_i_1_n_7\,
      Q => \sum_reg_reg_n_0_[0]\,
      R => clear
    );
\sum_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[11]_i_1_n_5\,
      Q => \sum_reg_reg_n_0_[10]\,
      R => clear
    );
\sum_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[11]_i_1_n_4\,
      Q => \sum_reg_reg_n_0_[11]\,
      R => clear
    );
\sum_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_reg[7]_i_1_n_0\,
      CO(3) => \sum_reg_reg[11]_i_1_n_0\,
      CO(2) => \sum_reg_reg[11]_i_1_n_1\,
      CO(1) => \sum_reg_reg[11]_i_1_n_2\,
      CO(0) => \sum_reg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg[11]_i_2_n_0\,
      DI(2) => \sum_reg[11]_i_3_n_0\,
      DI(1) => \sum_reg[11]_i_4_n_0\,
      DI(0) => \sum_reg[11]_i_5_n_0\,
      O(3) => \sum_reg_reg[11]_i_1_n_4\,
      O(2) => \sum_reg_reg[11]_i_1_n_5\,
      O(1) => \sum_reg_reg[11]_i_1_n_6\,
      O(0) => \sum_reg_reg[11]_i_1_n_7\,
      S(3) => \sum_reg[11]_i_6_n_0\,
      S(2) => \sum_reg[11]_i_7_n_0\,
      S(1) => \sum_reg[11]_i_8_n_0\,
      S(0) => \sum_reg[11]_i_9_n_0\
    );
\sum_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[15]_i_1_n_7\,
      Q => \sum_reg_reg_n_0_[12]\,
      R => clear
    );
\sum_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[15]_i_1_n_6\,
      Q => \sum_reg_reg_n_0_[13]\,
      R => clear
    );
\sum_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[15]_i_1_n_5\,
      Q => \sum_reg_reg_n_0_[14]\,
      R => clear
    );
\sum_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[15]_i_1_n_4\,
      Q => \sum_reg_reg_n_0_[15]\,
      R => clear
    );
\sum_reg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_reg[11]_i_1_n_0\,
      CO(3) => \sum_reg_reg[15]_i_1_n_0\,
      CO(2) => \sum_reg_reg[15]_i_1_n_1\,
      CO(1) => \sum_reg_reg[15]_i_1_n_2\,
      CO(0) => \sum_reg_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg[15]_i_2_n_0\,
      DI(2) => \sum_reg[15]_i_3_n_0\,
      DI(1) => \sum_reg[15]_i_4_n_0\,
      DI(0) => \sum_reg[15]_i_5_n_0\,
      O(3) => \sum_reg_reg[15]_i_1_n_4\,
      O(2) => \sum_reg_reg[15]_i_1_n_5\,
      O(1) => \sum_reg_reg[15]_i_1_n_6\,
      O(0) => \sum_reg_reg[15]_i_1_n_7\,
      S(3) => \sum_reg[15]_i_6_n_0\,
      S(2) => \sum_reg[15]_i_7_n_0\,
      S(1) => \sum_reg[15]_i_8_n_0\,
      S(0) => \sum_reg[15]_i_9_n_0\
    );
\sum_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[19]_i_1_n_7\,
      Q => \sum_reg_reg_n_0_[16]\,
      R => clear
    );
\sum_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[19]_i_1_n_6\,
      Q => \sum_reg_reg_n_0_[17]\,
      R => clear
    );
\sum_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[19]_i_1_n_5\,
      Q => \sum_reg_reg_n_0_[18]\,
      R => clear
    );
\sum_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[19]_i_1_n_4\,
      Q => \sum_reg_reg_n_0_[19]\,
      R => clear
    );
\sum_reg_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_reg[15]_i_1_n_0\,
      CO(3) => \sum_reg_reg[19]_i_1_n_0\,
      CO(2) => \sum_reg_reg[19]_i_1_n_1\,
      CO(1) => \sum_reg_reg[19]_i_1_n_2\,
      CO(0) => \sum_reg_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg[19]_i_2_n_0\,
      DI(2) => \sum_reg[19]_i_3_n_0\,
      DI(1) => \sum_reg[19]_i_4_n_0\,
      DI(0) => \sum_reg[19]_i_5_n_0\,
      O(3) => \sum_reg_reg[19]_i_1_n_4\,
      O(2) => \sum_reg_reg[19]_i_1_n_5\,
      O(1) => \sum_reg_reg[19]_i_1_n_6\,
      O(0) => \sum_reg_reg[19]_i_1_n_7\,
      S(3) => \sum_reg[19]_i_6_n_0\,
      S(2) => \sum_reg[19]_i_7_n_0\,
      S(1) => \sum_reg[19]_i_8_n_0\,
      S(0) => \sum_reg[19]_i_9_n_0\
    );
\sum_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[3]_i_1_n_6\,
      Q => \sum_reg_reg_n_0_[1]\,
      R => clear
    );
\sum_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[23]_i_1_n_7\,
      Q => \sum_reg_reg_n_0_[20]\,
      R => clear
    );
\sum_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[23]_i_1_n_6\,
      Q => \sum_reg_reg_n_0_[21]\,
      R => clear
    );
\sum_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[23]_i_1_n_5\,
      Q => \sum_reg_reg_n_0_[22]\,
      R => clear
    );
\sum_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[23]_i_1_n_4\,
      Q => \sum_reg_reg_n_0_[23]\,
      R => clear
    );
\sum_reg_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_reg[19]_i_1_n_0\,
      CO(3) => \sum_reg_reg[23]_i_1_n_0\,
      CO(2) => \sum_reg_reg[23]_i_1_n_1\,
      CO(1) => \sum_reg_reg[23]_i_1_n_2\,
      CO(0) => \sum_reg_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg[23]_i_2_n_0\,
      DI(2) => \sum_reg[23]_i_3_n_0\,
      DI(1) => \sum_reg[23]_i_4_n_0\,
      DI(0) => \sum_reg[23]_i_5_n_0\,
      O(3) => \sum_reg_reg[23]_i_1_n_4\,
      O(2) => \sum_reg_reg[23]_i_1_n_5\,
      O(1) => \sum_reg_reg[23]_i_1_n_6\,
      O(0) => \sum_reg_reg[23]_i_1_n_7\,
      S(3) => \sum_reg[23]_i_6_n_0\,
      S(2) => \sum_reg[23]_i_7_n_0\,
      S(1) => \sum_reg[23]_i_8_n_0\,
      S(0) => \sum_reg[23]_i_9_n_0\
    );
\sum_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[27]_i_1_n_7\,
      Q => \sum_reg_reg_n_0_[24]\,
      R => clear
    );
\sum_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[27]_i_1_n_6\,
      Q => \sum_reg_reg_n_0_[25]\,
      R => clear
    );
\sum_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[27]_i_1_n_5\,
      Q => \sum_reg_reg_n_0_[26]\,
      R => clear
    );
\sum_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[27]_i_1_n_4\,
      Q => \sum_reg_reg_n_0_[27]\,
      R => clear
    );
\sum_reg_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_reg[23]_i_1_n_0\,
      CO(3) => \sum_reg_reg[27]_i_1_n_0\,
      CO(2) => \sum_reg_reg[27]_i_1_n_1\,
      CO(1) => \sum_reg_reg[27]_i_1_n_2\,
      CO(0) => \sum_reg_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_reg_n_0_[26]\,
      DI(2) => \sum_reg_reg_n_0_[25]\,
      DI(1) => \sum_reg_reg_n_0_[24]\,
      DI(0) => \sum_reg[27]_i_2_n_0\,
      O(3) => \sum_reg_reg[27]_i_1_n_4\,
      O(2) => \sum_reg_reg[27]_i_1_n_5\,
      O(1) => \sum_reg_reg[27]_i_1_n_6\,
      O(0) => \sum_reg_reg[27]_i_1_n_7\,
      S(3) => \sum_reg[27]_i_3_n_0\,
      S(2) => \sum_reg[27]_i_4_n_0\,
      S(1) => \sum_reg[27]_i_5_n_0\,
      S(0) => \sum_reg[27]_i_6_n_0\
    );
\sum_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[29]_i_1_n_7\,
      Q => \sum_reg_reg_n_0_[28]\,
      R => clear
    );
\sum_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[29]_i_1_n_6\,
      Q => lpf_data_320,
      R => clear
    );
\sum_reg_reg[29]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_reg[27]_i_1_n_0\,
      CO(3 downto 1) => \NLW_sum_reg_reg[29]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sum_reg_reg[29]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sum_reg_reg_n_0_[27]\,
      O(3 downto 2) => \NLW_sum_reg_reg[29]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \sum_reg_reg[29]_i_1_n_6\,
      O(0) => \sum_reg_reg[29]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \sum_reg[29]_i_2_n_0\,
      S(0) => \sum_reg[29]_i_3_n_0\
    );
\sum_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[3]_i_1_n_5\,
      Q => \sum_reg_reg_n_0_[2]\,
      R => clear
    );
\sum_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[3]_i_1_n_4\,
      Q => \sum_reg_reg_n_0_[3]\,
      R => clear
    );
\sum_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_reg_reg[3]_i_1_n_0\,
      CO(2) => \sum_reg_reg[3]_i_1_n_1\,
      CO(1) => \sum_reg_reg[3]_i_1_n_2\,
      CO(0) => \sum_reg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg[3]_i_2_n_0\,
      DI(2) => \sum_reg[3]_i_3_n_0\,
      DI(1) => \sum_reg[3]_i_4_n_0\,
      DI(0) => \sum_reg[3]_i_5_n_0\,
      O(3) => \sum_reg_reg[3]_i_1_n_4\,
      O(2) => \sum_reg_reg[3]_i_1_n_5\,
      O(1) => \sum_reg_reg[3]_i_1_n_6\,
      O(0) => \sum_reg_reg[3]_i_1_n_7\,
      S(3) => \sum_reg[3]_i_6_n_0\,
      S(2) => \sum_reg[3]_i_7_n_0\,
      S(1) => \sum_reg[3]_i_8_n_0\,
      S(0) => \sum_reg[3]_i_9_n_0\
    );
\sum_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[7]_i_1_n_7\,
      Q => \sum_reg_reg_n_0_[4]\,
      R => clear
    );
\sum_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[7]_i_1_n_6\,
      Q => \sum_reg_reg_n_0_[5]\,
      R => clear
    );
\sum_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[7]_i_1_n_5\,
      Q => \sum_reg_reg_n_0_[6]\,
      R => clear
    );
\sum_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[7]_i_1_n_4\,
      Q => \sum_reg_reg_n_0_[7]\,
      R => clear
    );
\sum_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_reg[3]_i_1_n_0\,
      CO(3) => \sum_reg_reg[7]_i_1_n_0\,
      CO(2) => \sum_reg_reg[7]_i_1_n_1\,
      CO(1) => \sum_reg_reg[7]_i_1_n_2\,
      CO(0) => \sum_reg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg[7]_i_2_n_0\,
      DI(2) => \sum_reg[7]_i_3_n_0\,
      DI(1) => \sum_reg[7]_i_4_n_0\,
      DI(0) => \sum_reg[7]_i_5_n_0\,
      O(3) => \sum_reg_reg[7]_i_1_n_4\,
      O(2) => \sum_reg_reg[7]_i_1_n_5\,
      O(1) => \sum_reg_reg[7]_i_1_n_6\,
      O(0) => \sum_reg_reg[7]_i_1_n_7\,
      S(3) => \sum_reg[7]_i_6_n_0\,
      S(2) => \sum_reg[7]_i_7_n_0\,
      S(1) => \sum_reg[7]_i_8_n_0\,
      S(0) => \sum_reg[7]_i_9_n_0\
    );
\sum_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[11]_i_1_n_7\,
      Q => \sum_reg_reg_n_0_[8]\,
      R => clear
    );
\sum_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => valid_reg,
      D => \sum_reg_reg[11]_i_1_n_6\,
      Q => \sum_reg_reg_n_0_[9]\,
      R => clear
    );
valid_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => clear
    );
valid_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_valid,
      Q => valid_reg,
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_smart_mux_stream_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    mux_ctrl : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mag_out : in STD_LOGIC_VECTOR ( 23 downto 0 );
    dphi_out : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_valid : in STD_LOGIC;
    bpsk_nrz_out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bpsk_sample_valid : in STD_LOGIC;
    audio_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    audio_valid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_smart_mux_stream_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_smart_mux_stream_0_0 : entity is "design_1_smart_mux_stream_0_0,smart_mux_stream,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_smart_mux_stream_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_smart_mux_stream_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_smart_mux_stream_0_0 : entity is "smart_mux_stream,Vivado 2018.3";
end design_1_smart_mux_stream_0_0;

architecture STRUCTURE of design_1_smart_mux_stream_0_0 is
  attribute AXIS_COUNT_WIDTH : integer;
  attribute AXIS_COUNT_WIDTH of inst : label is 5;
  attribute AXIS_FIFO_DEPTH : integer;
  attribute AXIS_FIFO_DEPTH of inst : label is 16;
  attribute AXIS_PTR_WIDTH : integer;
  attribute AXIS_PTR_WIDTH of inst : label is 4;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
begin
inst: entity work.design_1_smart_mux_stream_0_0_smart_mux_stream
     port map (
      aclk => aclk,
      aresetn => aresetn,
      audio_out(15 downto 0) => audio_out(15 downto 0),
      audio_valid => audio_valid,
      bpsk_nrz_out(15 downto 0) => bpsk_nrz_out(15 downto 0),
      bpsk_sample_valid => bpsk_sample_valid,
      data_valid => data_valid,
      dphi_out(23 downto 0) => dphi_out(23 downto 0),
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      mag_out(23 downto 0) => mag_out(23 downto 0),
      mux_ctrl(31 downto 0) => mux_ctrl(31 downto 0)
    );
end STRUCTURE;
