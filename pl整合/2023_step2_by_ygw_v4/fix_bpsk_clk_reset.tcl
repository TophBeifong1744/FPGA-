set project_file {F:/Vivado/2023_pl_new/2023_step2_by_ygw/2023_step2_by_ygw.xpr}
set bd_file_pattern {*/design_1.bd}

proc reconnect_pin {pin_name source_pin_name} {
    set pin_obj [get_bd_pins $pin_name]
    set source_pin_obj [get_bd_pins $source_pin_name]
    set wanted_net [get_bd_nets -of_objects $source_pin_obj]
    set old_net [get_bd_nets -quiet -of_objects $pin_obj]
    if {[llength $wanted_net] != 1} {
        error "Expected one net on $source_pin_name, got: $wanted_net"
    }
    if {[llength $old_net] == 1 && $old_net ne $wanted_net} {
        disconnect_bd_net $old_net $pin_obj
    }
    if {[llength [get_bd_nets -quiet -of_objects $pin_obj]] == 0} {
        connect_bd_net $wanted_net $pin_obj
    }
    puts "CODEX_CONNECTED $pin_name -> [get_property NAME $wanted_net]"
}

open_project $project_file
open_bd_design [get_files $bd_file_pattern]

# BPSK runs in the PL sample domain, not the independent PS/AXI FCLK domain.
reconnect_pin demod_pool_core_bpsk_0/aclk clk_wiz_0/clk_out2
reconnect_pin demod_pool_core_bpsk_0/aresetn rst_sample_60M/peripheral_aresetn

# clk_out2 is 60 MHz / 180 degrees.  Confirm writable clock metadata so the
# module-reference pin no longer retains the former FCLK_CLK0 / 0-degree data.
set_property -dict [list \
    CONFIG.CLK_DOMAIN {/clk_wiz_0_clk_out1} \
    CONFIG.FREQ_HZ {60000000} \
    CONFIG.PHASE {180.0}] [get_bd_pins demod_pool_core_bpsk_0/aclk]

validate_bd_design
save_bd_design

set bd_file [get_files $bd_file_pattern]
generate_target all $bd_file
set wrapper_file [make_wrapper -files $bd_file -top]
if {[llength [get_files -quiet $wrapper_file]] == 0} {
    add_files -norecurse $wrapper_file
}
update_compile_order -fileset sources_1

foreach pin_name {
    demod_pool_core_bpsk_0/aclk
    demod_pool_core_bpsk_0/aresetn
} {
    set pin_obj [get_bd_pins $pin_name]
    set net_obj [get_bd_nets -of_objects $pin_obj]
    puts "CODEX_FINAL_NET $pin_name=[get_property NAME $net_obj]"
    foreach prop {CONFIG.ASSOCIATED_RESET CONFIG.CLK_DOMAIN CONFIG.FREQ_HZ CONFIG.PHASE CONFIG.POLARITY} {
        if {[lsearch -exact [list_property $pin_obj] $prop] >= 0} {
            puts "CODEX_FINAL_PROP $pin_name $prop=[get_property $prop $pin_obj]"
        }
    }
}

close_project
exit
