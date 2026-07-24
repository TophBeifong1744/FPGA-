`timescale 1ns/1ps
`default_nettype none

//==============================================================================
// Stage-1 to Stage-2 same-clock adapter
//
// Functions:
//   1. Convert 32-bit signed Stage-1 I/Q to 16-bit Q1.14.
//   2. Round before shifting.
//   3. Saturate to [-16384, +16383], corresponding to [-1, +1) in Q1.14.
//   4. Buffer I/Q in a small synchronous FIFO.
//   5. Hold out_i/out_q/out_valid stable while out_ready is low.
//
// Default calibration for the current contest input:
//   SCALE_SHIFT = 11
//
// Current reference values:
//   Stage-1 CW I = 11057267 -> Stage-2 I = 5399
//   Stage-1 CW Q = 0        -> Stage-2 Q = 0
//
// FIFO packing:
//   fifo_word[15:0]  = I
//   fifo_word[31:16] = Q
//==============================================================================

module stage1_to_pl2_adapter #(
    parameter integer SCALE_SHIFT = 11,
    parameter integer FIFO_ADDR_W = 4
) (
    input  wire                         clk,
    input  wire                         rst_n,

    input  wire signed [31:0]           in_i,
    input  wire signed [31:0]           in_q,
    input  wire                         in_valid,
    output wire                         in_ready,

    output wire signed [15:0]           out_i,
    output wire signed [15:0]           out_q,
    output wire                         out_valid,
    input  wire                         out_ready,

    output wire [FIFO_ADDR_W:0]         fifo_level,
    output reg                          overflow_sticky
);

    localparam integer FIFO_DEPTH = (1 << FIFO_ADDR_W);

    // SCALE_SHIFT is fixed to a positive value in this project.
    localparam signed [32:0] ROUND_POS =
        (33'sd1 <<< (SCALE_SHIFT - 1));

    // Arithmetic right shift rounds negative values toward -infinity.
    // Adding ROUND_POS-1 before the shift gives symmetric nearest rounding.
    localparam signed [32:0] ROUND_NEG =
        ROUND_POS - 33'sd1;

    function signed [15:0] scale_and_saturate_q14;
        input signed [31:0] value;

        reg signed [32:0] value_ext;
        reg signed [32:0] value_rounded;
        reg signed [32:0] value_shifted;

        begin
            value_ext = {value[31], value};

            if (value[31])
                value_rounded = value_ext + ROUND_NEG;
            else
                value_rounded = value_ext + ROUND_POS;

            value_shifted = value_rounded >>> SCALE_SHIFT;

            if (value_shifted > 33'sd16383)
                scale_and_saturate_q14 = 16'sd16383;
            else if (value_shifted < -33'sd16384)
                scale_and_saturate_q14 = -16'sd16384;
            else
                scale_and_saturate_q14 = value_shifted[15:0];
        end
    endfunction

    wire signed [15:0] scaled_i;
    wire signed [15:0] scaled_q;

    assign scaled_i = scale_and_saturate_q14(in_i);
    assign scaled_q = scale_and_saturate_q14(in_q);

    reg [31:0] fifo_mem [0:FIFO_DEPTH-1];

    reg [FIFO_ADDR_W-1:0] write_ptr;
    reg [FIFO_ADDR_W-1:0] read_ptr;
    reg [FIFO_ADDR_W:0]   fifo_count;

    wire [31:0] fifo_head;
    wire do_pop;
    wire do_push;

    assign fifo_head = fifo_mem[read_ptr];

    assign out_i = fifo_head[15:0];
    assign out_q = fifo_head[31:16];

    assign out_valid = (fifo_count != 0);
    assign do_pop = out_valid && out_ready;

    // When the FIFO is full, a simultaneous pop frees one slot at the same edge.
    assign in_ready = (fifo_count < FIFO_DEPTH) || do_pop;
    assign do_push = in_valid && in_ready;

    assign fifo_level = fifo_count;

    always @(posedge clk) begin
        if (!rst_n) begin
            write_ptr       <= {FIFO_ADDR_W{1'b0}};
            read_ptr        <= {FIFO_ADDR_W{1'b0}};
            fifo_count      <= {(FIFO_ADDR_W+1){1'b0}};
            overflow_sticky <= 1'b0;
        end
        else begin
            if (in_valid && !in_ready)
                overflow_sticky <= 1'b1;

            case ({do_push, do_pop})
                2'b10: begin
                    fifo_mem[write_ptr] <= {scaled_q, scaled_i};
                    write_ptr           <= write_ptr + 1'b1;
                    fifo_count          <= fifo_count + 1'b1;
                end

                2'b01: begin
                    read_ptr   <= read_ptr + 1'b1;
                    fifo_count <= fifo_count - 1'b1;
                end

                2'b11: begin
                    fifo_mem[write_ptr] <= {scaled_q, scaled_i};
                    write_ptr           <= write_ptr + 1'b1;
                    read_ptr            <= read_ptr + 1'b1;
                    fifo_count          <= fifo_count;
                end

                default: begin
                    fifo_count <= fifo_count;
                end
            endcase
        end
    end

endmodule

`default_nettype wire
