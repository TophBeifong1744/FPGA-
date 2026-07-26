vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_4
vlib activehdl/processing_system7_vip_v1_0_6
vlib activehdl/blk_mem_gen_v8_3_6
vlib activehdl/axi_bram_ctrl_v4_1_0
vlib activehdl/blk_mem_gen_v8_4_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/smartconnect_v1_0
vlib activehdl/util_vector_logic_v2_0_1
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_20
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_3
vlib activehdl/lib_fifo_v1_0_12
vlib activehdl/lib_bmg_v1_0_11
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_datamover_v5_1_20
vlib activehdl/axi_vdma_v6_3_6
vlib activehdl/v_tc_v6_1_13
vlib activehdl/v_vid_in_axi4s_v4_0_9
vlib activehdl/v_axi4s_vid_out_v4_0_10

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 activehdl/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 activehdl/processing_system7_vip_v1_0_6
vmap blk_mem_gen_v8_3_6 activehdl/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_1_0 activehdl/axi_bram_ctrl_v4_1_0
vmap blk_mem_gen_v8_4_2 activehdl/blk_mem_gen_v8_4_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 activehdl/axi_gpio_v2_0_20
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_3 activehdl/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 activehdl/lib_fifo_v1_0_12
vmap lib_bmg_v1_0_11 activehdl/lib_bmg_v1_0_11
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_20 activehdl/axi_datamover_v5_1_20
vmap axi_vdma_v6_3_6 activehdl/axi_vdma_v6_3_6
vmap v_tc_v6_1_13 activehdl/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 activehdl/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 activehdl/v_axi4s_vid_out_v4_0_10

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"D:/xlinks/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/xlinks/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/xlinks/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/xlinks/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/xlinks/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/xlinks/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/xlinks/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/xlinks/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/xlinks/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"D:/xlinks/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/xlinks/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/xlinks/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/xlinks/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_feature_bram_writer_0_0/sim/design_1_feature_bram_writer_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_1_0 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_1/sim/design_1_rst_ps7_0_100M_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/sim/bd_6f02.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_0/sim/bd_6f02_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/sim/bd_6f02_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_2/sim/bd_6f02_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_3/sim/bd_6f02_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_4/sim/bd_6f02_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_5/sim/bd_6f02_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_6/sim/bd_6f02_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_7/sim/bd_6f02_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_8/sim/bd_6f02_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_9/sim/bd_6f02_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_10/sim/bd_6f02_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_11/sim/bd_6f02_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_12/sim/bd_6f02_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_13/sim/bd_6f02_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_14/sim/bd_6f02_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_15/sim/bd_6f02_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_16/sim/bd_6f02_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_17/sim/bd_6f02_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_18/sim/bd_6f02_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_19/sim/bd_6f02_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_20/sim/bd_6f02_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_21/sim/bd_6f02_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_22/sim/bd_6f02_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_23/sim/bd_6f02_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_24/sim/bd_6f02_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_25/sim/bd_6f02_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_26/sim/bd_6f02_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_27/sim/bd_6f02_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_28/sim/bd_6f02_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_29/sim/bd_6f02_m01e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_30/sim/bd_6f02_m02s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_31/sim/bd_6f02_m02arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_32/sim/bd_6f02_m02rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_33/sim/bd_6f02_m02awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_34/sim/bd_6f02_m02wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_35/sim/bd_6f02_m02bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_36/sim/bd_6f02_m02e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/sim/design_1_axi_smc_1.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ip/design_1_ddc_stage1_pl2_top_0_0/sim/design_1_ddc_stage1_pl2_top_0_0.v" \
"../../../bd/design_1/ip/design_1_ad9226_stage1_driver_0_0/sim/design_1_ad9226_stage1_driver_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_1/sim/design_1_util_vector_logic_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_1/sim/design_1_proc_sys_reset_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_demod_pool_core_bpsk_0_0/sim/design_1_demod_pool_core_bpsk_0_0.v" \
"../../../bd/design_1/ip/design_1_ila_bpsk_0_0/sim/design_1_ila_bpsk_0_0.v" \
"../../../bd/design_1/ip/design_1_dac904_driver_0_0/sim/design_1_dac904_driver_0_0.v" \
"../../../bd/design_1/ip/design_1_smart_mux_stream_0_0/sim/design_1_smart_mux_stream_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_bmg_v1_0_11 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_6  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_6 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/sim/bd_68b9.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_0/sim/bd_68b9_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_1/sim/bd_68b9_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_2/sim/bd_68b9_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_3/sim/bd_68b9_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_4/sim/bd_68b9_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_5/sim/bd_68b9_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_6/sim/bd_68b9_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_7/sim/bd_68b9_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_8/sim/bd_68b9_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_9/sim/bd_68b9_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_1/sim/design_1_axi_smc_1_1.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work v_tc_v6_1_13 -93 \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+D:/xlinks/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

