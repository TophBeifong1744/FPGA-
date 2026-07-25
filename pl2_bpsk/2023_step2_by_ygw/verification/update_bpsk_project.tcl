set script_dir [file dirname [file normalize [info script]]]
set project_dir [file dirname $script_dir]
set project_file [file join $project_dir 2023_step2_by_ygw.xpr]
set rtl_dir [file join $project_dir 2023_step2_by_ygw.srcs sources_1 imports rtl]
set sim_dir [file join $project_dir 2023_step2_by_ygw.srcs sim_1 imports sim]

open_project $project_file
set rtl_files [list \
    [file join $rtl_dir bpsk_nco_lut.v] \
    [file join $rtl_dir bpsk_costas_loop.v] \
    [file join $rtl_dir bpsk_rate_detector.v] \
    [file join $rtl_dir bpsk_timing_recovery.v] \
    [file join $rtl_dir bpsk_rx_chain.v] \
    [file join $rtl_dir demod_pool_core_bpsk.v]]
foreach source_file $rtl_files {
    if {[llength [get_files -quiet $source_file]] == 0} {
        add_files -norecurse $source_file
    }
}
set sim_files [list \
    [file join $sim_dir tb_bpsk_rx_chain.v] \
    [file join $sim_dir tb_demod_pool_core_bpsk.v]]
foreach source_file $sim_files {
    if {[llength [get_files -quiet $source_file]] == 0} {
        add_files -fileset sim_1 -norecurse $source_file
    }
}
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
set_property top tb_demod_pool_core_bpsk [get_filesets sim_1]
close_project

