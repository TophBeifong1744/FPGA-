set script_dir [file dirname [file normalize [info script]]]
set project_dir [file dirname $script_dir]
open_project [file join $project_dir 2023_step2_by_ygw.xpr]
foreach test_top [list tb_bpsk_rx_chain tb_bpsk_reacquire tb_demod_pool_core_bpsk] {
    puts "BPSK_REGRESSION_START=$test_top"
    set_property top $test_top [get_filesets sim_1]
    update_compile_order -fileset sim_1
    launch_simulation
    run all
    close_sim
    puts "BPSK_REGRESSION_DONE=$test_top"
}
set_property top tb_demod_pool_core_bpsk [get_filesets sim_1]
close_project

