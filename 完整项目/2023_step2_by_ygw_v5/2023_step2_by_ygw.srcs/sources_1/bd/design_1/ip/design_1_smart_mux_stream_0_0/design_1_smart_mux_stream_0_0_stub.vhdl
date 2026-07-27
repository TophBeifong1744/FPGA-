-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 27 03:42:00 2026
-- Host        : Toph running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/College/verilog_digital_system/Xilinx/2023_step2_by_ygw_v5/2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_smart_mux_stream_0_0/design_1_smart_mux_stream_0_0_stub.vhdl
-- Design      : design_1_smart_mux_stream_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_smart_mux_stream_0_0 is
  Port ( 
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

end design_1_smart_mux_stream_0_0;

architecture stub of design_1_smart_mux_stream_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,mux_ctrl[31:0],mag_out[23:0],dphi_out[23:0],data_valid,bpsk_nrz_out[15:0],bpsk_sample_valid,audio_out[15:0],audio_valid,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tlast,m_axis_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "smart_mux_stream,Vivado 2018.3";
begin
end;
