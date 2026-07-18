`timescale 1ns/1ps

// Wrapped phase difference for CORDIC "Scaled Radians" output.
// For PHASE_W=24, +pi is represented by +2^21 and 2*pi by 2^22.
module phase_diff_wrap #(
    parameter integer PHASE_W = 24
) (
    input  wire                          aclk,
    input  wire                          aresetn,
    input  wire signed [PHASE_W-1:0]    phase_in,
    input  wire                          in_valid,
    output reg  signed [PHASE_W-1:0]    dphi_out,
    output reg                           out_valid
);
    localparam integer FRAC_W = PHASE_W - 3;
    localparam signed [PHASE_W:0] PI_RAW     = ({{PHASE_W{1'b0}},1'b1} <<< FRAC_W);
    localparam signed [PHASE_W:0] TWO_PI_RAW = ({{PHASE_W{1'b0}},1'b1} <<< (FRAC_W+1));

    reg signed [PHASE_W-1:0] phase_z1;
    reg                       have_prev;
    reg signed [PHASE_W:0]   raw_diff;
    reg signed [PHASE_W:0]   wrapped_diff;

    always @* begin
        raw_diff = {phase_in[PHASE_W-1], phase_in} -
                   {phase_z1[PHASE_W-1], phase_z1};
        if (raw_diff >= PI_RAW)
            wrapped_diff = raw_diff - TWO_PI_RAW;
        else if (raw_diff < -PI_RAW)
            wrapped_diff = raw_diff + TWO_PI_RAW;
        else
            wrapped_diff = raw_diff;
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            phase_z1  <= {PHASE_W{1'b0}};
            have_prev <= 1'b0;
            dphi_out  <= {PHASE_W{1'b0}};
            out_valid <= 1'b0;
        end else begin
            out_valid <= 1'b0;
            if (in_valid) begin
                phase_z1  <= phase_in;
                dphi_out  <= wrapped_diff[PHASE_W-1:0];
                out_valid <= have_prev;
                have_prev <= 1'b1;
            end
        end
    end
endmodule
