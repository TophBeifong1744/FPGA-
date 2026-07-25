set_property SRC_FILE_INFO {cfile:{C:/Users/Toph Beifong/Desktop/2023_step2_by_ygw_v4/2023_step2_by_ygw.srcs/constrs_1/imports/Desktop/ad9226_60m_io.xdc} rfile:../../../2023_step2_by_ygw.srcs/constrs_1/imports/Desktop/ad9226_60m_io.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y7 [get_ports ad_clk_0]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U5  [get_ports {adc_db_0[11]}]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U7  [get_ports {adc_db_0[10]}]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V7  [get_ports {adc_db_0[9]}]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V8  [get_ports {adc_db_0[8]}]
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W8  [get_ports {adc_db_0[7]}]
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U8  [get_ports {adc_db_0[6]}]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U9  [get_ports {adc_db_0[5]}]
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T9  [get_ports {adc_db_0[4]}]
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U10 [get_ports {adc_db_0[3]}]
set_property src_info {type:XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V6  [get_ports {adc_db_0[2]}]
set_property src_info {type:XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W6  [get_ports {adc_db_0[1]}]
set_property src_info {type:XDC file:1 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y6  [get_ports {adc_db_0[0]}]
set_property src_info {type:XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T5 [get_ports adc_otr_0]
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name adc_clk_fwd -source [get_pins -hierarchical -filter {NAME =~ *ad9226_stage1_driver_0*u_oddr_ad_clk/C}] -divide_by 1 [get_ports ad_clk_0]
set_property src_info {type:XDC file:1 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay -clock [get_clocks adc_clk_fwd] -min 3.5 [get_ports {adc_db_0[*] adc_otr_0}]
set_property src_info {type:XDC file:1 line:90 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay -clock [get_clocks adc_clk_fwd] -max 7.0 [get_ports {adc_db_0[*] adc_otr_0}]
set_property src_info {type:XDC file:1 line:96 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports lcd_hs]     ;# RGB LCD行同步
set_property src_info {type:XDC file:1 line:97 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports lcd_vs]     ;# RGB LCD场同步
set_property src_info {type:XDC file:1 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports lcd_de]     ;# RGB LCD数据使能
set_property src_info {type:XDC file:1 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports lcd_bl]     ;# RGB LCD背光控制
set_property src_info {type:XDC file:1 line:100 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports lcd_clk]    ;# RGB LCD像素时钟
set_property src_info {type:XDC file:1 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[0]}]   ;# B0
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[1]}]   ;# B1
set_property src_info {type:XDC file:1 line:105 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[2]}]   ;# B2
set_property src_info {type:XDC file:1 line:106 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[3]}]   ;# B3
set_property src_info {type:XDC file:1 line:107 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[4]}]   ;# B4
set_property src_info {type:XDC file:1 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[5]}]   ;# B5
set_property src_info {type:XDC file:1 line:109 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[6]}]   ;# B6
set_property src_info {type:XDC file:1 line:110 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[7]}]   ;# B7
set_property src_info {type:XDC file:1 line:112 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[8]}]    ;# G0
set_property src_info {type:XDC file:1 line:113 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[9]}]    ;# G1
set_property src_info {type:XDC file:1 line:114 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[10]}]   ;# G2
set_property src_info {type:XDC file:1 line:115 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[11]}]   ;# G3
set_property src_info {type:XDC file:1 line:116 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[12]}]   ;# G4
set_property src_info {type:XDC file:1 line:117 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[13]}]   ;# G5
set_property src_info {type:XDC file:1 line:118 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[14]}]   ;# G6
set_property src_info {type:XDC file:1 line:119 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[15]}]   ;# G7
set_property src_info {type:XDC file:1 line:121 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[16]}]   ;# R0
set_property src_info {type:XDC file:1 line:122 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[17]}]   ;# R1
set_property src_info {type:XDC file:1 line:123 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[18]}]   ;# R2
set_property src_info {type:XDC file:1 line:124 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[19]}]   ;# R3
set_property src_info {type:XDC file:1 line:125 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[20]}]   ;# R4
set_property src_info {type:XDC file:1 line:126 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[21]}]   ;# R5
set_property src_info {type:XDC file:1 line:127 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[22]}]   ;# R6
set_property src_info {type:XDC file:1 line:128 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {lcd_rgb[23]}]   ;# R7
