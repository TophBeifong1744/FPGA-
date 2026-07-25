set script_dir [file dirname [file normalize [info script]]]
set project_dir [file dirname $script_dir]
open_project [file join $project_dir 2023_step2_by_ygw.xpr]
set_property top tb_demod_pool_core_bpsk [get_filesets sim_1]
update_compile_order -fileset sim_1
launch_simulation
run all
close_sim
close_project

