set_param general.maxThreads 2
set script_dir [file dirname [file normalize [info script]]]
set project_dir [file dirname $script_dir]
set rtl_dir [file join $project_dir 2023_step2_by_ygw.srcs sources_1 imports rtl]
set ooc_dir [file join $script_dir bpsk_ooc_project]
create_project -force bpsk_ooc $ooc_dir -part xc7z020clg400-1
add_files -norecurse [list \
    [file join $rtl_dir bpsk_nco_lut.v] \
    [file join $rtl_dir bpsk_costas_loop.v] \
    [file join $rtl_dir bpsk_rate_detector.v] \
    [file join $rtl_dir bpsk_timing_recovery.v] \
    [file join $rtl_dir bpsk_rx_chain.v]]
add_files -fileset constrs_1 -norecurse [file join $script_dir bpsk_ooc.xdc]
set_property top bpsk_rx_chain [get_filesets sources_1]
update_compile_order -fileset sources_1
launch_runs synth_1 -jobs 1
wait_on_run synth_1
set run_status [get_property STATUS [get_runs synth_1]]
puts "BPSK_OOC_RUN_STATUS=$run_status"
if {![string match "synth_design Complete*" $run_status]} {
    error "BPSK OOC project synthesis did not complete"
}
open_run synth_1
report_utilization -file [file join $script_dir bpsk_ooc_utilization.rpt]
report_timing_summary -delay_type max -max_paths 10 \
    -file [file join $script_dir bpsk_ooc_timing.rpt]
set worst_path [get_timing_paths -delay_type max -max_paths 1]
set wns [get_property SLACK $worst_path]
puts "BPSK_OOC_WNS_NS=$wns"
if {$wns < 0.0} { error "BPSK OOC timing failed" }
puts "PASS: bpsk_rx_chain project OOC synthesis and 100 MHz timing"
close_project
