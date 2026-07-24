`timescale 1ns/1ps

// Detects BPSK-like pi phase jumps. Low-magnitude samples are ignored because
// their phase is undefined and otherwise causes false 2ASK -> 2PSK decisions.
module psk_spike_detector #(
    parameter integer PHASE_W    = 24,
    parameter integer LGN        = 13,
    parameter integer SPIKE_TH   = 943718, // about 0.45*pi for PHASE_W=24
    parameter integer MIN_SPIKES = 4
) (
    input  wire                         aclk,
    input  wire                         aresetn,
    input  wire signed [PHASE_W-1:0]   dphi,
    input  wire                         mag_good,
    input  wire                         in_valid,
    output reg  [31:0]                  spike_count,
    output reg                          psk_flag,
    output reg                          window_done
);
    localparam integer N = (1 << LGN);
    reg [LGN-1:0] sample_count;
    reg [31:0] live_spikes;
    reg [PHASE_W-1:0] abs_dphi;
    reg is_spike;

    always @* begin
        if (dphi[PHASE_W-1])
            abs_dphi = (~dphi) + 1'b1;
        else
            abs_dphi = dphi;
        is_spike = mag_good && (abs_dphi >= SPIKE_TH);
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            sample_count <= {LGN{1'b0}};
            live_spikes  <= 32'd0;
            spike_count  <= 32'd0;
            psk_flag     <= 1'b0;
            window_done  <= 1'b0;
        end else begin
            window_done <= 1'b0;
            if (in_valid) begin
                if (sample_count == N-1) begin
                    spike_count <= live_spikes + is_spike;
                    psk_flag    <= ((live_spikes + is_spike) >= MIN_SPIKES);
                    live_spikes <= 32'd0;
                    sample_count<= {LGN{1'b0}};
                    window_done <= 1'b1;
                end else begin
                    sample_count <= sample_count + 1'b1;
                    if (is_spike)
                        live_spikes <= live_spikes + 1'b1;
                end
            end
        end
    end
endmodule
