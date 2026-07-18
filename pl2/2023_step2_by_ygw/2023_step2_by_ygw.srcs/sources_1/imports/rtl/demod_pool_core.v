`timescale 1ns/1ps

// Level-2 demodulation pool for Zynq-7020.
// Input I/Q is Q1.14 signed fraction and must stay within [-1, +1).
// Requires a generated CORDIC IP instance named cordic_translate_0:
// Translate, parallel, max pipeline, signed fraction, scaled radians,
// input 16, output 24, coarse rotation + amplitude compensation enabled,
// AXI4-Stream blocking mode.
module demod_pool_core #(
    parameter integer LGN = 13,
    parameter [23:0] MAG_GATE = 24'd209715 // 0.05 in Q1.22
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
    output wire [31:0]             hist_freq_rd_data
);
    wire [31:0] cordic_s_tdata = {s_q, s_i};
    wire [47:0] cordic_m_tdata;
    wire        cordic_m_valid;
    wire        cordic_s_ready;

    // PG105 packing for Translate: X_OUT is least-significant, PHASE_OUT next.
    wire [23:0]        mag_raw   = cordic_m_tdata[23:0];
    wire signed [23:0] phase_raw = cordic_m_tdata[47:24];

    cordic_translate_0 u_cordic_translate (
        .aclk                    (aclk),
        .aresetn                 (aresetn),
        .s_axis_cartesian_tvalid (s_valid),
        .s_axis_cartesian_tready (cordic_s_ready),
        .s_axis_cartesian_tdata  (cordic_s_tdata),
        .m_axis_dout_tvalid      (cordic_m_valid),
        .m_axis_dout_tready      (1'b1),
        .m_axis_dout_tdata       (cordic_m_tdata)
    );
    assign s_ready = cordic_s_ready;

    wire signed [23:0] dphi_raw;
    wire               dphi_valid;
    reg  [23:0]        mag_z1;

    phase_diff_wrap #(.PHASE_W(24)) u_phase_diff (
        .aclk      (aclk),
        .aresetn   (aresetn),
        .phase_in  (phase_raw),
        .in_valid  (cordic_m_valid),
        .dphi_out  (dphi_raw),
        .out_valid (dphi_valid)
    );

    // Align magnitude with the current phase-difference sample.
    always @(posedge aclk) begin
        if (!aresetn)
            mag_z1 <= 24'd0;
        else if (cordic_m_valid)
            mag_z1 <= mag_raw;
    end

    assign mag_out       = mag_z1;
    assign dphi_out      = dphi_raw;
    assign feature_valid = dphi_valid;

    // Keep magnitude positive in signed 16-bit statistics input.
    wire signed [15:0] mag_stat_x = {1'b0, mag_z1[22:8]};

    // Scale phase increment for statistics, then saturate to signed 16 bit.
    wire signed [23:0] freq_scaled = dphi_raw >>> 2;
    reg  signed [15:0] freq_stat_x;
    always @* begin
        if (freq_scaled > 24'sd32767)
            freq_stat_x = 16'sh7fff;
        else if (freq_scaled < -24'sd32768)
            freq_stat_x = -16'sd32768;
        else
            freq_stat_x = freq_scaled[15:0];
    end

    wire mag_stats_done, freq_stats_done;
    running_stats16 #(.LGN(LGN)) u_mag_stats (
        .aclk(aclk), .aresetn(aresetn), .x(mag_stat_x),
        .in_valid(dphi_valid), .mean_num(mean_mag_num),
        .var_num(var_mag_num), .window_done(mag_stats_done)
    );
    running_stats16 #(.LGN(LGN)) u_freq_stats (
        .aclk(aclk), .aresetn(aresetn), .x(freq_stat_x),
        .in_valid(dphi_valid), .mean_num(mean_freq_num),
        .var_num(var_freq_num), .window_done(freq_stats_done)
    );

    // Magnitude bins span about 0 to 2.0 in Q1.22.
    wire [3:0] mag_bin = mag_z1[22:19];

    // With Fs=1 MHz, dphi>>15 is about 7.8125 kHz/bin.
    reg signed [24:0] freq_bin_tmp;
    reg [3:0] freq_bin;
    always @* begin
        freq_bin_tmp = (dphi_raw >>> 15) + 25'sd8;
        if (freq_bin_tmp < 0)
            freq_bin = 4'd0;
        else if (freq_bin_tmp > 15)
            freq_bin = 4'd15;
        else
            freq_bin = freq_bin_tmp[3:0];
    end

    wire hist_mag_done, hist_freq_done;
    hist16_snapshot #(.LGN(LGN)) u_hist_mag (
        .aclk(aclk), .aresetn(aresetn), .bin(mag_bin),
        .in_valid(dphi_valid), .bin_enable(1'b1),
        .rd_addr(hist_mag_rd_addr),
        .rd_data(hist_mag_rd_data), .window_done(hist_mag_done)
    );
    hist16_snapshot #(.LGN(LGN)) u_hist_freq (
        .aclk(aclk), .aresetn(aresetn), .bin(freq_bin),
        .in_valid(dphi_valid), .bin_enable(mag_z1 > MAG_GATE),
        .rd_addr(hist_freq_rd_addr), .rd_data(hist_freq_rd_data),
        .window_done(hist_freq_done)
    );

    wire psk_done;
    psk_spike_detector #(.PHASE_W(24), .LGN(LGN)) u_psk_detector (
        .aclk(aclk), .aresetn(aresetn), .dphi(dphi_raw),
        .mag_good(mag_z1 > MAG_GATE), .in_valid(dphi_valid),
        .spike_count(psk_spike_count), .psk_flag(psk_flag),
        .window_done(psk_done)
    );

    assign frame_done = mag_stats_done;
endmodule
