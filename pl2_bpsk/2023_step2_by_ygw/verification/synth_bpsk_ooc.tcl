set_param general.maxThreads 2
set script_dir [file dirname [file normalize [info script]]]
set project_dir [file dirname $script_dir]
set rtl_dir [file join $project_dir 2023_step2_by_ygw.srcs sources_1 imports rtl]
foreach source_file [list \
    bpsk_nco_lut.v bpsk_costas_loop.v bpsk_rate_detector.v \
    bpsk_timing_recovery.v bpsk_rx_chain.v] {
    read_verilog [file join $rtl_dir $source_file]
}
synth_design -top bpsk_rx_chain -part xc7z020clg400-1 -flatten_hierarchy none
create_clock -name aclk -period 10.000 [get_ports aclk]
report_utilization -file [file join $script_dir bpsk_ooc_utilization.rpt]
report_timing_summary -delay_type max -max_paths 10 \
    -file [file join $script_dir bpsk_ooc_timing.rpt]
set worst_path [get_timing_paths -delay_type max -max_paths 1]
set wns [get_property SLACK $worst_path]
puts "BPSK_OOC_WNS_NS=$wns"
if {$wns < 0.0} {
    error "BPSK OOC timing failed"
}
puts "PASS: bpsk_rx_chain OOC synthesis and 100 MHz timing"
