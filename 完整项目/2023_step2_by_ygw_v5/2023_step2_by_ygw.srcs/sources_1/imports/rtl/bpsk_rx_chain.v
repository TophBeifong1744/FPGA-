`timescale 1ns/1ps

// Complete PL2 BPSK receive chain: Costas carrier recovery, allowed-rate
// classification, fractional timing recovery and binary/NRZ decisions.
module bpsk_rx_chain (
    input  wire                    aclk,
    input  wire                    aresetn,
    input  wire signed [15:0]      s_i,
    input  wire signed [15:0]      s_q,
    input  wire                    in_valid,
    output wire                    carrier_locked,
    output wire                    timing_locked,
    output wire [1:0]              rate_code,
    output wire                    bit_data,
    output wire                    bit_valid,
    output wire                    symbol_strobe,
    output wire signed [15:0]      nrz_out,
    output wire                    nrz_sample_valid,
    output wire signed [15:0]      recovered_i,
    output wire signed [15:0]      recovered_q,
    output wire                    recovered_valid,
    output wire [23:0]             carrier_phase_word,
    output wire signed [23:0]      carrier_frequency_word,
    output wire [31:0]             timing_phase_word
);
    bpsk_costas_loop u_costas (
        .aclk(aclk), .aresetn(aresetn),
        .s_i(s_i), .s_q(s_q), .in_valid(in_valid),
        .i_recovered(recovered_i), .q_recovered(recovered_q),
        .out_valid(recovered_valid), .carrier_locked(carrier_locked),
        .phase_word(carrier_phase_word),
        .frequency_word(carrier_frequency_word)
    );

    wire rate_sample_valid;
    wire hard_bit;
    wire bit_transition;
    bpsk_rate_detector u_rate_detector (
        .aclk(aclk), .aresetn(aresetn),
        .i_recovered(recovered_i), .in_valid(recovered_valid),
        .enable(carrier_locked), .sample_valid(rate_sample_valid),
        .hard_bit(hard_bit), .bit_transition(bit_transition),
        .rate_code(rate_code)
    );

    bpsk_timing_recovery u_timing (
        .aclk(aclk), .aresetn(aresetn),
        .sample_valid(rate_sample_valid), .hard_bit(hard_bit),
        .bit_transition(bit_transition), .carrier_locked(carrier_locked),
        .rate_code(rate_code), .timing_locked(timing_locked),
        .symbol_strobe(symbol_strobe), .bit_valid(bit_valid),
        .bit_data(bit_data), .nrz_out(nrz_out),
        .nrz_sample_valid(nrz_sample_valid),
        .timing_phase(timing_phase_word)
    );
endmodule
