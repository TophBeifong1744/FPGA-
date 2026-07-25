# Add an ILA to the integrated PL1/PL2/PS block design for the eight public
# BPSK receiver outputs.  Run from Vivado 2018.3 with the project closed in
# any other Vivado process.

set script_dir [file dirname [file normalize [info script]]]
set project_file [file join $script_dir 2023_step2_by_ygw.xpr]

open_project $project_file
open_bd_design [get_files design_1.bd]

set bpsk_cell [get_bd_cells -quiet demod_pool_core_bpsk_0]
if {[llength $bpsk_cell] != 1} {
    error "Expected exactly one BD cell named demod_pool_core_bpsk_0"
}

if {[llength [get_bd_cells -quiet ila_bpsk_0]] == 0} {
    create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_bpsk_0
}

set_property -dict [list \
    CONFIG.C_NUM_OF_PROBES {8} \
    CONFIG.C_DATA_DEPTH {8192} \
    CONFIG.C_INPUT_PIPE_STAGES {0} \
    CONFIG.C_ADV_TRIGGER {false} \
    CONFIG.C_PROBE0_WIDTH {1} \
    CONFIG.C_PROBE1_WIDTH {1} \
    CONFIG.C_PROBE2_WIDTH {2} \
    CONFIG.C_PROBE3_WIDTH {1} \
    CONFIG.C_PROBE4_WIDTH {1} \
    CONFIG.C_PROBE5_WIDTH {1} \
    CONFIG.C_PROBE6_WIDTH {16} \
    CONFIG.C_PROBE7_WIDTH {1}] [get_bd_cells ila_bpsk_0]

proc connect_once {src dst} {
    set dst_pin [get_bd_pins $dst]
    if {[llength [get_bd_nets -quiet -of_objects $dst_pin]] == 0} {
        connect_bd_net [get_bd_pins $src] $dst_pin
    }
}

connect_once clk_wiz_0/clk_out2                       ila_bpsk_0/clk
connect_once demod_pool_core_bpsk_0/bpsk_carrier_locked ila_bpsk_0/probe0
connect_once demod_pool_core_bpsk_0/bpsk_timing_locked  ila_bpsk_0/probe1
connect_once demod_pool_core_bpsk_0/bpsk_rate_code      ila_bpsk_0/probe2
connect_once demod_pool_core_bpsk_0/bpsk_bit_data       ila_bpsk_0/probe3
connect_once demod_pool_core_bpsk_0/bpsk_bit_valid      ila_bpsk_0/probe4
connect_once demod_pool_core_bpsk_0/bpsk_symbol_strobe  ila_bpsk_0/probe5
connect_once demod_pool_core_bpsk_0/bpsk_nrz_out        ila_bpsk_0/probe6
connect_once demod_pool_core_bpsk_0/bpsk_sample_valid   ila_bpsk_0/probe7

# Preserve the reverse histogram address path used by the legacy feature
# writer. These nets are writer output -> demod core input.
connect_once feature_bram_writer_0/hist_mag_rd_addr demod_pool_core_bpsk_0/hist_mag_rd_addr
connect_once feature_bram_writer_0/hist_freq_rd_addr demod_pool_core_bpsk_0/hist_freq_rd_addr

validate_bd_design
save_bd_design

generate_target all [get_files design_1.bd]
set wrapper_files [make_wrapper -files [get_files design_1.bd] -top]
if {[llength $wrapper_files] != 0} {
    add_files -norecurse $wrapper_files
}

update_compile_order -fileset sources_1
close_project
puts "PASS: ila_bpsk_0 added, connected, and BD validated"
