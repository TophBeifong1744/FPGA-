`timescale 1ns/1ps

// Transition-directed fractional-N NRZ timing recovery.  A detected data
// transition is a symbol boundary; the 32-bit phase accumulator then places
// decisions at the middle of each 6/8/10 kbps symbol, including 6 kbps's
// non-integer 166.666... samples/symbol period.
module bpsk_timing_recovery #(
    parameter signed [15:0] NRZ_LEVEL = 16'sd8192
) (
    input  wire                    aclk,
    input  wire                    aresetn,
    input  wire                    sample_valid,
    input  wire                    hard_bit,
    input  wire                    bit_transition,
    input  wire                    carrier_locked,
    input  wire [1:0]              rate_code,
    output reg                     timing_locked,
    output reg                     symbol_strobe,
    output reg                     bit_valid,
    output reg                     bit_data,
    output reg  signed [15:0]      nrz_out,
    output reg                     nrz_sample_valid,
    output reg  [31:0]             timing_phase
);
    reg [1:0] active_rate;
    reg have_boundary;
    reg [4:0] lock_count;
    reg [31:0] phase_step;
    wire [32:0] phase_sum = {1'b0, timing_phase} + {1'b0, phase_step};
    wire center_cross = !timing_phase[31] && phase_sum[31];

    always @* begin
        case (rate_code)
            2'd1: phase_step = 32'd25769804; // round(6000/1e6*2^32)
            2'd2: phase_step = 32'd34359738; // round(8000/1e6*2^32)
            2'd3: phase_step = 32'd42949673; // round(10000/1e6*2^32)
            default: phase_step = 32'd0;
        endcase
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            active_rate     <= 2'd0;
            have_boundary   <= 1'b0;
            lock_count      <= 5'd0;
            timing_locked   <= 1'b0;
            symbol_strobe   <= 1'b0;
            bit_valid       <= 1'b0;
            bit_data        <= 1'b0;
            nrz_out         <= 16'sd0;
            nrz_sample_valid<= 1'b0;
            timing_phase    <= 32'd0;
        end else begin
            symbol_strobe    <= 1'b0;
            bit_valid        <= 1'b0;
            nrz_sample_valid <= 1'b0;
            if (!carrier_locked) begin
                active_rate   <= 2'd0;
                have_boundary <= 1'b0;
                lock_count    <= 5'd0;
                timing_locked <= 1'b0;
                timing_phase  <= 32'd0;
                nrz_out       <= 16'sd0;
            end else if (sample_valid) begin
                if (rate_code == 0) begin
                    active_rate   <= 2'd0;
                    have_boundary <= 1'b0;
                    lock_count    <= 5'd0;
                    timing_locked <= 1'b0;
                    timing_phase  <= 32'd0;
                end else if (rate_code != active_rate) begin
                    active_rate   <= rate_code;
                    timing_phase  <= 32'd0;
                    timing_locked <= 1'b0;
                    if (bit_transition) begin
                        have_boundary <= 1'b1;
                        lock_count    <= 5'd1;
                    end else begin
                        have_boundary <= 1'b0;
                        lock_count    <= 5'd0;
                    end
                end else if (bit_transition) begin
                    timing_phase  <= 32'd0;
                    have_boundary <= 1'b1;
                    if (lock_count != 5'd31)
                        lock_count <= lock_count + 1'b1;
                    if (lock_count >= 5'd2)
                        timing_locked <= 1'b1;
                end else if (have_boundary) begin
                    timing_phase <= phase_sum[31:0];
                    if (timing_locked)
                        nrz_sample_valid <= 1'b1;
                    if (center_cross && timing_locked) begin
                        symbol_strobe <= 1'b1;
                        bit_valid     <= 1'b1;
                        bit_data      <= hard_bit;
                        nrz_out       <= hard_bit ? NRZ_LEVEL : -NRZ_LEVEL;
                    end
                end
            end
        end
    end
endmodule

