-makelib xcelium_lib/xilinx_vip -sv \
  "F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_feature_bram_writer_0_0/sim/design_1_feature_bram_writer_0_0.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_4 -sv \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_3_6 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_0 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_100M_1/sim/design_1_rst_ps7_0_100M_1.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_5 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_0/sim/bd_6f02_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/sim/bd_6f02_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_2/sim/bd_6f02_arsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_3/sim/bd_6f02_rsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_4/sim/bd_6f02_awsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_5/sim/bd_6f02_wsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_6/sim/bd_6f02_bsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_7/sim/bd_6f02_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_8/sim/bd_6f02_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_9/sim/bd_6f02_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_10/sim/bd_6f02_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_11/sim/bd_6f02_sarn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_12/sim/bd_6f02_srn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_13/sim/bd_6f02_sawn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_14/sim/bd_6f02_swn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_15/sim/bd_6f02_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_16/sim/bd_6f02_m00s2a_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_17/sim/bd_6f02_m00arn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_18/sim/bd_6f02_m00rn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_19/sim/bd_6f02_m00awn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_20/sim/bd_6f02_m00wn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_21/sim/bd_6f02_m00bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/sim/bd_6f02.v" \
  "../../../bd/design_1/ip/design_1_axi_smc_1/sim/design_1_axi_smc_1.v" \
  "../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
  "../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
  "../../../bd/design_1/ip/design_1_ddc_stage1_pl2_top_0_0/sim/design_1_ddc_stage1_pl2_top_0_0.v" \
  "../../../bd/design_1/ip/design_1_ad9226_stage1_driver_0_0/sim/design_1_ad9226_stage1_driver_0_0.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_1 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
  "../../../bd/design_1/ip/design_1_util_vector_logic_0_1/sim/design_1_util_vector_logic_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_proc_sys_reset_0_1/sim/design_1_proc_sys_reset_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_demod_pool_core_bpsk_0_0/sim/design_1_demod_pool_core_bpsk_0_0.v" \
  "../../../bd/design_1/ip/design_1_ila_bpsk_0_0/sim/design_1_ila_bpsk_0_0.v" \
  "../../../bd/design_1/ip/design_1_dac904_driver_0_0/sim/design_1_dac904_driver_0_0.v" \
  "../../../bd/design_1/ip/design_1_smart_mux_stream_0_0/sim/design_1_smart_mux_stream_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_20 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_12 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_11 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_20 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_6 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_6 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_0/sim/bd_68b9_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_1/sim/bd_68b9_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_2/sim/bd_68b9_s00mmu_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_3/sim/bd_68b9_s00tr_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_4/sim/bd_68b9_s00sic_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_5/sim/bd_68b9_s00a2s_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_6/sim/bd_68b9_sarn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_7/sim/bd_68b9_srn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_8/sim/bd_68b9_m00s2a_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/ip/ip_9/sim/bd_68b9_m00e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/bd_0/sim/bd_68b9.v" \
  "../../../bd/design_1/ip/design_1_axi_smc_1_1/sim/design_1_axi_smc_1_1.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \
-endlib
-makelib xcelium_lib/v_tc_v6_1_13 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \
-endlib
-makelib xcelium_lib/v_vid_in_axi4s_v4_0_9 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/v_axi4s_vid_out_v4_0_10 \
  "../../../../2023_step2_by_ygw.srcs/sources_1/bd/design_1/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

