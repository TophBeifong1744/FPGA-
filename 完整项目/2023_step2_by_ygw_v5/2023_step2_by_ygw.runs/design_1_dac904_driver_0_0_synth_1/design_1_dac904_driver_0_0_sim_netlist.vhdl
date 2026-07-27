-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 27 03:41:57 2026
-- Host        : Toph running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dac904_driver_0_0_sim_netlist.vhdl
-- Design      : design_1_dac904_driver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac904_data_path is
  port (
    dac_data : out STD_LOGIC_VECTOR ( 13 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sample_valid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    sample_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac904_data_path;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac904_data_path is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sample_14bit_binary : STD_LOGIC_VECTOR ( 13 to 13 );
  attribute IOB : string;
  attribute IOB of \dac_data_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[10]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[11]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[12]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[13]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[1]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[2]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[3]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[4]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[5]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[6]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[7]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[8]\ : label is "TRUE";
  attribute IOB of \dac_data_reg_reg[9]\ : label is "TRUE";
begin
  SR(0) <= \^sr\(0);
\dac_data_reg[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_in(13),
      O => sample_14bit_binary(13)
    );
\dac_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(0),
      Q => dac_data(0),
      R => \^sr\(0)
    );
\dac_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(10),
      Q => dac_data(10),
      R => \^sr\(0)
    );
\dac_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(11),
      Q => dac_data(11),
      R => \^sr\(0)
    );
\dac_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(12),
      Q => dac_data(12),
      R => \^sr\(0)
    );
\dac_data_reg_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_14bit_binary(13),
      Q => dac_data(13),
      S => \^sr\(0)
    );
\dac_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(1),
      Q => dac_data(1),
      R => \^sr\(0)
    );
\dac_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(2),
      Q => dac_data(2),
      R => \^sr\(0)
    );
\dac_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(3),
      Q => dac_data(3),
      R => \^sr\(0)
    );
\dac_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(4),
      Q => dac_data(4),
      R => \^sr\(0)
    );
\dac_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(5),
      Q => dac_data(5),
      R => \^sr\(0)
    );
\dac_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(6),
      Q => dac_data(6),
      R => \^sr\(0)
    );
\dac_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(7),
      Q => dac_data(7),
      R => \^sr\(0)
    );
\dac_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(8),
      Q => dac_data(8),
      R => \^sr\(0)
    );
\dac_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sample_valid,
      D => sample_in(9),
      Q => dac_data(9),
      R => \^sr\(0)
    );
u_oddr_dac_clk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac904_driver is
  port (
    dac_clk : out STD_LOGIC;
    dac_data : out STD_LOGIC_VECTOR ( 13 downto 0 );
    aclk : in STD_LOGIC;
    sample_valid : in STD_LOGIC;
    sample_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac904_driver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac904_driver is
  signal R0 : STD_LOGIC;
  signal NLW_u_oddr_dac_clk_S_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_oddr_dac_clk : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of u_oddr_dac_clk : label is "MLO ";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of u_oddr_dac_clk : label is "FALSE";
begin
u_dac904_data_path: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac904_data_path
     port map (
      SR(0) => R0,
      aclk => aclk,
      aresetn => aresetn,
      dac_data(13 downto 0) => dac_data(13 downto 0),
      sample_in(13 downto 0) => sample_in(13 downto 0),
      sample_valid => sample_valid
    );
u_oddr_dac_clk: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => aclk,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => dac_clk,
      R => R0,
      S => NLW_u_oddr_dac_clk_S_UNCONNECTED
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
    sample_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sample_valid : in STD_LOGIC;
    dac_clk : out STD_LOGIC;
    dac_data : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_dac904_driver_0_0,dac904_driver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dac904_driver,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK_DAC_CORE CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK_DAC_CORE, ASSOCIATED_RESET aresetn, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RESETN RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dac_clk : signal is "xilinx.com:signal:clock:1.0 DAC_CLK CLK";
  attribute X_INTERFACE_PARAMETER of dac_clk : signal is "XIL_INTERFACENAME DAC_CLK, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_dac904_driver_0_0_dac_clk, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac904_driver
     port map (
      aclk => aclk,
      aresetn => aresetn,
      dac_clk => dac_clk,
      dac_data(13 downto 0) => dac_data(13 downto 0),
      sample_in(13 downto 0) => sample_in(15 downto 2),
      sample_valid => sample_valid
    );
end STRUCTURE;
