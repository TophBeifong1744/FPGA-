
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# ad9226_stage1_driver, dac904_driver, ddc_stage1_pl2_top, demod_pool_core_bpsk, feature_bram_writer, smart_mux_stream

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set ad_clk_0 [ create_bd_port -dir O -type clk ad_clk_0 ]
  set adc_db_0 [ create_bd_port -dir I -from 11 -to 0 adc_db_0 ]
  set adc_otr_0 [ create_bd_port -dir I adc_otr_0 ]
  set lcd_bl [ create_bd_port -dir O -from 0 -to 0 lcd_bl ]
  set lcd_clk [ create_bd_port -dir O -type clk lcd_clk ]
  set lcd_de [ create_bd_port -dir O lcd_de ]
  set lcd_hs [ create_bd_port -dir O lcd_hs ]
  set lcd_rgb [ create_bd_port -dir O -from 23 -to 0 lcd_rgb ]
  set lcd_vs [ create_bd_port -dir O lcd_vs ]

  # Create instance: ad9226_stage1_driver_0, and set properties
  set block_name ad9226_stage1_driver
  set block_cell_name ad9226_stage1_driver_0
  if { [catch {set ad9226_stage1_driver_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ad9226_stage1_driver_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_gpio_mux, and set properties
  set axi_gpio_mux [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_mux ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
 ] $axi_gpio_mux

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {1} \
 ] $axi_smc

  # Create instance: axi_smc_vdma_hp0, and set properties
  set axi_smc_vdma_hp0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc_vdma_hp0 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $axi_smc_vdma_hp0

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_s2mm {0} \
   CONFIG.c_m_axis_mm2s_tdata_width {24} \
   CONFIG.c_mm2s_linebuffer_depth {1024} \
   CONFIG.c_mm2s_max_burst_length {64} \
   CONFIG.c_num_fstores {1} \
   CONFIG.c_s2mm_genlock_mode {0} \
 ] $axi_vdma_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_A_Write_Rate {50} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {166.66} \
   CONFIG.CLKOUT1_JITTER {163.829} \
   CONFIG.CLKOUT1_PHASE_ERROR {130.371} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {60} \
   CONFIG.CLKOUT2_JITTER {163.829} \
   CONFIG.CLKOUT2_PHASE_ERROR {130.371} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {60} \
   CONFIG.CLKOUT2_REQUESTED_PHASE {180} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {17.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {16.667} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {17.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {17} \
   CONFIG.MMCM_CLKOUT1_PHASE {180.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_IN_FREQ {60.000} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_lcd, and set properties
  set clk_wiz_lcd [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_lcd ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {166.66} \
   CONFIG.CLKOUT1_JITTER {214.781} \
   CONFIG.CLKOUT1_PHASE_ERROR {119.261} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {33.3} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {13.875} \
   CONFIG.MMCM_CLKIN1_PERIOD {16.667} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {25.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.PRIM_IN_FREQ {60} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_lcd

  # Create instance: dac904_driver_0, and set properties
  set block_name dac904_driver
  set block_cell_name dac904_driver_0
  if { [catch {set dac904_driver_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $dac904_driver_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ddc_stage1_pl2_top_0, and set properties
  set block_name ddc_stage1_pl2_top
  set block_cell_name ddc_stage1_pl2_top_0
  if { [catch {set ddc_stage1_pl2_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ddc_stage1_pl2_top_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {/clk_wiz_0_clk_out1} \
 ] [get_bd_pins /ddc_stage1_pl2_top_0/aclk]

  # Create instance: demod_pool_core_bpsk_0, and set properties
  set block_name demod_pool_core_bpsk
  set block_cell_name demod_pool_core_bpsk_0
  if { [catch {set demod_pool_core_bpsk_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $demod_pool_core_bpsk_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: feature_bram_writer_0, and set properties
  set block_name feature_bram_writer
  set block_cell_name feature_bram_writer_0
  if { [catch {set feature_bram_writer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $feature_bram_writer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {/clk_wiz_0_clk_out1} \
 ] [get_bd_pins /feature_bram_writer_0/aclk]

  # Create instance: ila_bpsk_0, and set properties
  set ila_bpsk_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_bpsk_0 ]
  set_property -dict [ list \
   CONFIG.C_ADV_TRIGGER {false} \
   CONFIG.C_DATA_DEPTH {8192} \
   CONFIG.C_INPUT_PIPE_STAGES {0} \
   CONFIG.C_NUM_OF_PROBES {8} \
   CONFIG.C_PROBE0_WIDTH {1} \
   CONFIG.C_PROBE1_WIDTH {1} \
   CONFIG.C_PROBE2_WIDTH {2} \
   CONFIG.C_PROBE3_WIDTH {1} \
   CONFIG.C_PROBE4_WIDTH {1} \
   CONFIG.C_PROBE5_WIDTH {1} \
   CONFIG.C_PROBE6_WIDTH {16} \
   CONFIG.C_PROBE7_WIDTH {1} \
 ] $ila_bpsk_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {60.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {60000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_UART0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {6} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {5} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {54} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1800.000} \
   CONFIG.PCW_MIO_14_DIRECTION {in} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {out} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#UART 0#UART 0#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned} \
   CONFIG.PCW_MIO_TREE_SIGNALS {unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#rx#tx#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {9} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {18} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
 ] $processing_system7_0

  # Create instance: rst_ps7_0_60M, and set properties
  set rst_ps7_0_60M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_60M ]

  # Create instance: rst_sample_60M, and set properties
  set rst_sample_60M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_sample_60M ]

  # Create instance: smart_mux_stream_0, and set properties
  set block_name smart_mux_stream
  set block_cell_name smart_mux_stream_0
  if { [catch {set smart_mux_stream_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $smart_mux_stream_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
   CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.GEN_F0_VBLANK_HEND {800} \
   CONFIG.GEN_F0_VBLANK_HSTART {800} \
   CONFIG.GEN_F0_VFRAME_SIZE {525} \
   CONFIG.GEN_F0_VSYNC_HEND {800} \
   CONFIG.GEN_F0_VSYNC_HSTART {800} \
   CONFIG.GEN_F0_VSYNC_VEND {492} \
   CONFIG.GEN_F0_VSYNC_VSTART {490} \
   CONFIG.GEN_HACTIVE_SIZE {800} \
   CONFIG.GEN_HFRAME_SIZE {1056} \
   CONFIG.GEN_HSYNC_END {968} \
   CONFIG.GEN_HSYNC_START {840} \
   CONFIG.GEN_VACTIVE_SIZE {480} \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.VIDEO_MODE {Custom} \
   CONFIG.enable_detection {false} \
 ] $v_tc_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_smc_1_M00_AXI [get_bd_intf_pins axi_smc_vdma_hp0/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_smc/M00_AXI]
  connect_bd_intf_net -intf_net axi_smc_M01_AXI [get_bd_intf_pins axi_gpio_mux/S_AXI] [get_bd_intf_pins axi_smc/M01_AXI]
  connect_bd_intf_net -intf_net axi_smc_M02_AXI [get_bd_intf_pins axi_smc/M02_AXI] [get_bd_intf_pins axi_vdma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_smc_vdma_hp0/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_mux/s_axi_aclk] [get_bd_pins axi_smc/aclk] [get_bd_pins axi_smc_vdma_hp0/aclk] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins clk_wiz_lcd/clk_in1] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins rst_ps7_0_60M/slowest_sync_clk] [get_bd_pins v_axi4s_vid_out_0/aclk]
  connect_bd_net -net ad9226_stage1_driver_0_ad_clk [get_bd_ports ad_clk_0] [get_bd_pins ad9226_stage1_driver_0/ad_clk]
  connect_bd_net -net ad9226_stage1_driver_0_adc_data [get_bd_pins ad9226_stage1_driver_0/adc_data] [get_bd_pins ddc_stage1_pl2_top_0/adc_data]
  connect_bd_net -net ad9226_stage1_driver_0_adc_valid [get_bd_pins ad9226_stage1_driver_0/adc_valid] [get_bd_pins ddc_stage1_pl2_top_0/adc_valid]
  connect_bd_net -net ad_data_in_0_1 [get_bd_ports adc_db_0] [get_bd_pins ad9226_stage1_driver_0/ad_data_in]
  connect_bd_net -net ad_otr_in_0_1 [get_bd_ports adc_otr_0] [get_bd_pins ad9226_stage1_driver_0/ad_otr_in]
  connect_bd_net -net axi_gpio_mux_gpio_io_o [get_bd_pins axi_gpio_mux/gpio_io_o] [get_bd_pins smart_mux_stream_0/mux_ctrl]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins ad9226_stage1_driver_0/clk_60m_adc] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins ad9226_stage1_driver_0/clk_60m_sample] [get_bd_pins blk_mem_gen_0/clkb] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins dac904_driver_0/aclk] [get_bd_pins ddc_stage1_pl2_top_0/aclk] [get_bd_pins demod_pool_core_bpsk_0/aclk] [get_bd_pins feature_bram_writer_0/aclk] [get_bd_pins ila_bpsk_0/clk] [get_bd_pins rst_sample_60M/slowest_sync_clk] [get_bd_pins smart_mux_stream_0/aclk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins ad9226_stage1_driver_0/clk_locked] [get_bd_pins clk_wiz_0/locked] [get_bd_pins rst_sample_60M/dcm_locked]
  connect_bd_net -net clk_wiz_lcd_clk_out1 [get_bd_ports lcd_clk] [get_bd_pins clk_wiz_lcd/clk_out1] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net ddc_stage1_pl2_top_0_m_i [get_bd_pins ddc_stage1_pl2_top_0/m_i] [get_bd_pins demod_pool_core_bpsk_0/s_i]
  connect_bd_net -net ddc_stage1_pl2_top_0_m_q [get_bd_pins ddc_stage1_pl2_top_0/m_q] [get_bd_pins demod_pool_core_bpsk_0/s_q]
  connect_bd_net -net ddc_stage1_pl2_top_0_m_valid [get_bd_pins ddc_stage1_pl2_top_0/m_valid] [get_bd_pins demod_pool_core_bpsk_0/s_valid]
  connect_bd_net -net demod_pool_core_bpsk_0_bpsk_bit_data [get_bd_pins demod_pool_core_bpsk_0/bpsk_bit_data] [get_bd_pins ila_bpsk_0/probe3]
  connect_bd_net -net demod_pool_core_bpsk_0_bpsk_bit_valid [get_bd_pins demod_pool_core_bpsk_0/bpsk_bit_valid] [get_bd_pins ila_bpsk_0/probe4]
  connect_bd_net -net demod_pool_core_bpsk_0_bpsk_carrier_locked [get_bd_pins demod_pool_core_bpsk_0/bpsk_carrier_locked] [get_bd_pins ila_bpsk_0/probe0]
  connect_bd_net -net demod_pool_core_bpsk_0_bpsk_nrz_out [get_bd_pins demod_pool_core_bpsk_0/bpsk_nrz_out] [get_bd_pins ila_bpsk_0/probe6] [get_bd_pins smart_mux_stream_0/bpsk_nrz_out]
  connect_bd_net -net demod_pool_core_bpsk_0_bpsk_rate_code [get_bd_pins demod_pool_core_bpsk_0/bpsk_rate_code] [get_bd_pins ila_bpsk_0/probe2]
  connect_bd_net -net demod_pool_core_bpsk_0_bpsk_sample_valid [get_bd_pins demod_pool_core_bpsk_0/bpsk_sample_valid] [get_bd_pins ila_bpsk_0/probe7] [get_bd_pins smart_mux_stream_0/bpsk_sample_valid]
  connect_bd_net -net demod_pool_core_bpsk_0_bpsk_symbol_strobe [get_bd_pins demod_pool_core_bpsk_0/bpsk_symbol_strobe] [get_bd_pins ila_bpsk_0/probe5]
  connect_bd_net -net demod_pool_core_bpsk_0_bpsk_timing_locked [get_bd_pins demod_pool_core_bpsk_0/bpsk_timing_locked] [get_bd_pins ila_bpsk_0/probe1]
  connect_bd_net -net demod_pool_core_bpsk_0_dphi_out [get_bd_pins demod_pool_core_bpsk_0/dphi_out] [get_bd_pins smart_mux_stream_0/dphi_out]
  connect_bd_net -net demod_pool_core_bpsk_0_feature_valid [get_bd_pins demod_pool_core_bpsk_0/feature_valid] [get_bd_pins smart_mux_stream_0/data_valid]
  connect_bd_net -net demod_pool_core_bpsk_0_frame_done [get_bd_pins demod_pool_core_bpsk_0/frame_done] [get_bd_pins feature_bram_writer_0/frame_done]
  connect_bd_net -net demod_pool_core_bpsk_0_hist_freq_rd_data [get_bd_pins demod_pool_core_bpsk_0/hist_freq_rd_data] [get_bd_pins feature_bram_writer_0/hist_freq_rd_data]
  connect_bd_net -net demod_pool_core_bpsk_0_hist_mag_rd_data [get_bd_pins demod_pool_core_bpsk_0/hist_mag_rd_data] [get_bd_pins feature_bram_writer_0/hist_mag_rd_data]
  connect_bd_net -net demod_pool_core_bpsk_0_mag_out [get_bd_pins demod_pool_core_bpsk_0/mag_out] [get_bd_pins smart_mux_stream_0/mag_out]
  connect_bd_net -net demod_pool_core_bpsk_0_mean_freq_num [get_bd_pins demod_pool_core_bpsk_0/mean_freq_num] [get_bd_pins feature_bram_writer_0/mean_freq_num]
  connect_bd_net -net demod_pool_core_bpsk_0_mean_mag_num [get_bd_pins demod_pool_core_bpsk_0/mean_mag_num] [get_bd_pins feature_bram_writer_0/mean_mag_num]
  connect_bd_net -net demod_pool_core_bpsk_0_psk_flag [get_bd_pins demod_pool_core_bpsk_0/psk_flag] [get_bd_pins feature_bram_writer_0/psk_flag]
  connect_bd_net -net demod_pool_core_bpsk_0_psk_spike_count [get_bd_pins demod_pool_core_bpsk_0/psk_spike_count] [get_bd_pins feature_bram_writer_0/psk_spike_count]
  connect_bd_net -net demod_pool_core_bpsk_0_s_ready [get_bd_pins ddc_stage1_pl2_top_0/m_ready] [get_bd_pins demod_pool_core_bpsk_0/s_ready]
  connect_bd_net -net demod_pool_core_bpsk_0_var_freq_num [get_bd_pins demod_pool_core_bpsk_0/var_freq_num] [get_bd_pins feature_bram_writer_0/var_freq_num]
  connect_bd_net -net demod_pool_core_bpsk_0_var_mag_num [get_bd_pins demod_pool_core_bpsk_0/var_mag_num] [get_bd_pins feature_bram_writer_0/var_mag_num]
  connect_bd_net -net feature_bram_writer_0_bram_addr [get_bd_pins blk_mem_gen_0/addrb] [get_bd_pins feature_bram_writer_0/bram_addr]
  connect_bd_net -net feature_bram_writer_0_bram_en [get_bd_pins blk_mem_gen_0/enb] [get_bd_pins feature_bram_writer_0/bram_en]
  connect_bd_net -net feature_bram_writer_0_bram_wdata [get_bd_pins blk_mem_gen_0/dinb] [get_bd_pins feature_bram_writer_0/bram_wdata]
  connect_bd_net -net feature_bram_writer_0_bram_we [get_bd_pins blk_mem_gen_0/web] [get_bd_pins feature_bram_writer_0/bram_we]
  connect_bd_net -net feature_bram_writer_0_hist_freq_rd_addr [get_bd_pins demod_pool_core_bpsk_0/hist_freq_rd_addr] [get_bd_pins feature_bram_writer_0/hist_freq_rd_addr]
  connect_bd_net -net feature_bram_writer_0_hist_mag_rd_addr [get_bd_pins demod_pool_core_bpsk_0/hist_mag_rd_addr] [get_bd_pins feature_bram_writer_0/hist_mag_rd_addr]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_60M/ext_reset_in] [get_bd_pins rst_sample_60M/ext_reset_in] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net rst_ps7_0_100M_interconnect_aresetn [get_bd_pins axi_smc/aresetn] [get_bd_pins axi_smc_vdma_hp0/aresetn] [get_bd_pins rst_ps7_0_60M/interconnect_aresetn]
  connect_bd_net -net rst_ps7_0_60M_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_mux/s_axi_aresetn] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins rst_ps7_0_60M/peripheral_aresetn]
  connect_bd_net -net rst_sample_60M_peripheral_aresetn [get_bd_pins ad9226_stage1_driver_0/resetn] [get_bd_pins dac904_driver_0/aresetn] [get_bd_pins ddc_stage1_pl2_top_0/aresetn] [get_bd_pins demod_pool_core_bpsk_0/aresetn] [get_bd_pins feature_bram_writer_0/aresetn] [get_bd_pins rst_sample_60M/peripheral_aresetn] [get_bd_pins smart_mux_stream_0/aresetn] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net smart_mux_stream_0_audio_out [get_bd_pins dac904_driver_0/sample_in] [get_bd_pins smart_mux_stream_0/audio_out]
  connect_bd_net -net smart_mux_stream_0_audio_valid [get_bd_pins dac904_driver_0/sample_valid] [get_bd_pins smart_mux_stream_0/audio_valid]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins clk_wiz_0/reset] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins blk_mem_gen_0/rstb] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net v_axi4s_vid_out_0_vid_active_video [get_bd_ports lcd_de] [get_bd_pins v_axi4s_vid_out_0/vid_active_video]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_ports lcd_rgb] [get_bd_pins v_axi4s_vid_out_0/vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_ports lcd_hs] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_ports lcd_vs] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins rst_ps7_0_60M/mb_debug_sys_rst] [get_bd_pins rst_sample_60M/aux_reset_in] [get_bd_pins rst_sample_60M/mb_debug_sys_rst] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_ports lcd_bl] [get_bd_pins rst_ps7_0_60M/aux_reset_in] [get_bd_pins rst_ps7_0_60M/dcm_locked] [get_bd_pins smart_mux_stream_0/m_axis_tready] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x00002000 -offset 0x40000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_mux/S_AXI/Reg] SEG_axi_gpio_mux_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


