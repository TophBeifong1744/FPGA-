set project_file {F:/Vivado/2023_pl_new/2023_step2_by_ygw/2023_step2_by_ygw.xpr}

proc assert_equal {label actual expected} {
    if {$actual ne $expected} {
        error "ASSERT_FAIL $label: expected '$expected', got '$actual'"
    }
    puts "ASSERT_PASS $label=$actual"
}

proc pin_net_name {pin_name} {
    set pin_obj [get_bd_pins $pin_name]
    set net_obj [get_bd_nets -of_objects $pin_obj]
    if {[llength $net_obj] != 1} {
        error "ASSERT_FAIL $pin_name has [llength $net_obj] nets"
    }
    return [get_property NAME $net_obj]
}

open_project $project_file
open_bd_design [get_files */design_1.bd]

assert_equal bpsk_clock_net \
    [pin_net_name demod_pool_core_bpsk_0/aclk] \
    [pin_net_name clk_wiz_0/clk_out2]
assert_equal bpsk_reset_net \
    [pin_net_name demod_pool_core_bpsk_0/aresetn] \
    [pin_net_name rst_sample_60M/peripheral_aresetn]
assert_equal reset_sync_clock_net \
    [pin_net_name rst_sample_60M/slowest_sync_clk] \
    [pin_net_name clk_wiz_0/clk_out2]
assert_equal reset_locked_net \
    [pin_net_name rst_sample_60M/dcm_locked] \
    [pin_net_name clk_wiz_0/locked]

set clk_pin [get_bd_pins demod_pool_core_bpsk_0/aclk]
set reset_pin [get_bd_pins demod_pool_core_bpsk_0/aresetn]
assert_equal bpsk_clock_frequency [get_property CONFIG.FREQ_HZ $clk_pin] 60000000
assert_equal bpsk_clock_phase [get_property CONFIG.PHASE $clk_pin] 180.0
assert_equal bpsk_associated_reset [get_property CONFIG.ASSOCIATED_RESET $clk_pin] aresetn
assert_equal bpsk_reset_polarity [get_property CONFIG.POLARITY $reset_pin] ACTIVE_LOW

validate_bd_design
puts {CODEX_TEST_PASS BPSK clock/reset domain assertions and BD validation passed}

close_project
exit
