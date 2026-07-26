`timescale 1ns/1ps

// Pipelined window statistics.
// var_num = N * sum(x^2) - sum(x)^2
module running_stats16 #(
    parameter integer LGN = 13
) (
    input  wire                aclk,
    input  wire                aresetn,
    input  wire signed [15:0]  x,
    input  wire                in_valid,

    output reg  signed [31:0]  mean_num,
    output reg  [63:0]         var_num,
    output reg                 window_done
);

    localparam integer N = (1 << LGN);

    reg [LGN-1:0] count;
    reg signed [31:0] sum;
    reg [47:0] sumsq;

    wire signed [31:0] x_ext;
    wire signed [31:0] x_square_signed;
    wire [31:0] x_square;

    wire signed [31:0] sum_next;
    wire [47:0] sumsq_next;

    assign x_ext = {{16{x[15]}}, x};

    // 16-bit input square, normally inferred into DSP48.
    assign x_square_signed = x_ext * x_ext;
    assign x_square = x_square_signed[31:0];

    assign sum_next =
        sum + x_ext;

    assign sumsq_next =
        sumsq + {16'd0, x_square};

    // Stage 0: capture the completed window.
    reg signed [31:0] final_sum;
    reg [47:0] final_sumsq;
    reg final_valid;

    // Stage 1: square and scale in parallel.
    reg signed [31:0] mean_pipe;
    reg [63:0] n_sumsq_pipe;

    (* use_dsp = "yes" *)
    reg [63:0] sum_square_pipe;

    reg calc_valid;

    wire signed [63:0] final_sum_square;
    wire [63:0] final_n_sumsq;

    assign final_sum_square =
        $signed(final_sum) * $signed(final_sum);

    assign final_n_sumsq =
        ({16'd0, final_sumsq} << LGN);

    always @(posedge aclk) begin
        if (!aresetn) begin
            count           <= {LGN{1'b0}};
            sum             <= 32'sd0;
            sumsq           <= 48'd0;

            final_sum       <= 32'sd0;
            final_sumsq     <= 48'd0;
            final_valid     <= 1'b0;

            mean_pipe       <= 32'sd0;
            n_sumsq_pipe    <= 64'd0;
            sum_square_pipe <= 64'd0;
            calc_valid      <= 1'b0;

            mean_num        <= 32'sd0;
            var_num         <= 64'd0;
            window_done     <= 1'b0;
        end else begin
            // Default pulse values.
            final_valid <= 1'b0;
            window_done <= 1'b0;

            /*
             * Stage 1
             * These two calculations now have their own clock cycle.
             */
            calc_valid <= final_valid;

            if (final_valid) begin
                mean_pipe       <= final_sum;
                n_sumsq_pipe    <= final_n_sumsq;
                sum_square_pipe <= final_sum_square[63:0];
            end

            /*
             * Stage 2
             * The 64-bit subtraction has another independent cycle.
             */
            if (calc_valid) begin
                mean_num    <= mean_pipe;
                var_num     <= n_sumsq_pipe - sum_square_pipe;
                window_done <= 1'b1;
            end

            /*
             * Running accumulation.
             * A new window may begin while the old result is calculated.
             */
            if (in_valid) begin
                if (count == N-1) begin
                    final_sum   <= sum_next;
                    final_sumsq <= sumsq_next;
                    final_valid <= 1'b1;

                    count  <= {LGN{1'b0}};
                    sum    <= 32'sd0;
                    sumsq  <= 48'd0;
                end else begin
                    count  <= count + 1'b1;
                    sum    <= sum_next;
                    sumsq  <= sumsq_next;
                end
            end
        end
    end

endmodule