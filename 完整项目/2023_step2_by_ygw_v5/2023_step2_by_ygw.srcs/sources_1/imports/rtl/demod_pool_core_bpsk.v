`timescale 1ns/1ps

// Non-destructive integration wrapper around the existing feature core.
// It preserves every original port and adds the complete BPSK receiver output.
module demod_pool_core_bpsk #(
    parameter integer LGN = 13,
    parameter [23:0] MAG_GATE = 24'd209715
) (
    input  wire                    aclk,
    input  wire                    aresetn,
    input  wire signed [15:0]      s_i,
    input  wire signed [15:0]      s_q,
    input  wire                    s_valid,
    output wire                    s_ready,
    output wire [23:0]             mag_out,
    output wire signed [23:0]      dphi_out,
    output wire                    feature_valid,
    output wire signed [31:0]      mean_mag_num,
    output wire [63:0]             var_mag_num,
    output wire signed [31:0]      mean_freq_num,
    output wire [63:0]             var_freq_num,
    output wire [31:0]             psk_spike_count,
    output wire                    psk_flag,
    output wire                    frame_done,
    input  wire [3:0]              hist_mag_rd_addr,
    output wire [31:0]             hist_mag_rd_data,
    input  wire [3:0]              hist_freq_rd_addr,
    output wire [31:0]             hist_freq_rd_data,
    output wire                    bpsk_bit_data,
    output wire                    bpsk_bit_valid,
    output wire                    bpsk_symbol_strobe,
    output wire signed [15:0]      bpsk_nrz_out,
    output wire                    bpsk_sample_valid,
    output wire                    bpsk_carrier_locked,
    output wire                    bpsk_timing_locked,
    output wire [1:0]              bpsk_rate_code
);
    demod_pool_core #(.LGN(LGN), .MAG_GATE(MAG_GATE)) u_feature_core (
        .aclk(aclk), .aresetn(aresetn),
        .s_i(s_i), .s_q(s_q), .s_valid(s_valid), .s_ready(s_ready),
        .mag_out(mag_out), .dphi_out(dphi_out),
        .feature_valid(feature_valid), .mean_mag_num(mean_mag_num),
        .var_mag_num(var_mag_num), .mean_freq_num(mean_freq_num),
        .var_freq_num(var_freq_num), .psk_spike_count(psk_spike_count),
        .psk_flag(psk_flag), .frame_done(frame_done),
        .hist_mag_rd_addr(hist_mag_rd_addr),
        .hist_mag_rd_data(hist_mag_rd_data),
        .hist_freq_rd_addr(hist_freq_rd_addr),
        .hist_freq_rd_data(hist_freq_rd_data)
    );

    wire signed [15:0] recovered_i;
    wire signed [15:0] recovered_q;
    wire recovered_valid;
    wire [23:0] carrier_phase_word;
    wire signed [23:0] carrier_frequency_word;
    wire [31:0] timing_phase_word;
    bpsk_rx_chain u_bpsk_rx (
        .aclk(aclk), .aresetn(aresetn),
        .s_i(s_i), .s_q(s_q), .in_valid(s_valid && s_ready),
        .carrier_locked(bpsk_carrier_locked),
        .timing_locked(bpsk_timing_locked), .rate_code(bpsk_rate_code),
        .bit_data(bpsk_bit_data), .bit_valid(bpsk_bit_valid),
        .symbol_strobe(bpsk_symbol_strobe), .nrz_out(bpsk_nrz_out),
        .nrz_sample_valid(bpsk_sample_valid),
        .recovered_i(recovered_i), .recovered_q(recovered_q),
        .recovered_valid(recovered_valid),
        .carrier_phase_word(carrier_phase_word),
        .carrier_frequency_word(carrier_frequency_word),
        .timing_phase_word(timing_phase_word)
    );
endmodule

