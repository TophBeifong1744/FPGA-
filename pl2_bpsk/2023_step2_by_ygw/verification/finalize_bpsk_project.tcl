set script_dir [file dirname [file normalize [info script]]]
set project_dir [file dirname $script_dir]
set sim_dir [file join $project_dir 2023_step2_by_ygw.srcs sim_1 imports sim]
open_project [file join $project_dir 2023_step2_by_ygw.xpr]
set reacquire_tb [file join $sim_dir tb_bpsk_reacquire.v]
if {[llength [get_files -quiet $reacquire_tb]] == 0} {
    add_files -fileset sim_1 -norecurse $reacquire_tb
}
set_property top tb_demod_pool_core_bpsk [get_filesets sim_1]
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
close_project

