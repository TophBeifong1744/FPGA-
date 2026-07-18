`timescale 1ns/1ps

// Windowed mean numerator and division-free variance numerator:
// var_num = N*sum(x^2) - sum(x)^2 = N^2 * variance.
// N must be 2^LGN. Divide in the PS only if a normalized variance is needed.
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

    reg [LGN-1:0]       count;
    reg signed [31:0]   sum;
    reg [47:0]          sumsq;

    reg signed [31:0]   sum_next;
    reg signed [31:0]   x32;
    reg signed [63:0]   x_square;
    reg [47:0]          sumsq_next;
    reg signed [63:0]   sum_ext;
    reg signed [63:0]   sum_square;
    reg [63:0]          n_sumsq;

    always @* begin
        x32         = {{16{x[15]}}, x};
        sum_next    = sum + x32;
        x_square    = x32 * x32;
        sumsq_next  = sumsq + x_square[47:0];
        sum_ext     = {{32{sum_next[31]}}, sum_next};
        sum_square  = sum_ext * sum_ext;
        n_sumsq     = ({{16{1'b0}}, sumsq_next} << LGN);
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            count       <= {LGN{1'b0}};
            sum         <= 32'sd0;
            sumsq       <= 48'd0;
            mean_num    <= 32'sd0;
            var_num     <= 64'd0;
            window_done <= 1'b0;
        end else begin
            window_done <= 1'b0;
            if (in_valid) begin
                if (count == N-1) begin
                    mean_num    <= sum_next;
                    var_num     <= n_sumsq - sum_square;
                    window_done <= 1'b1;
                    count       <= {LGN{1'b0}};
                    sum         <= 32'sd0;
                    sumsq       <= 48'd0;
                end else begin
                    count <= count + 1'b1;
                    sum   <= sum_next;
                    sumsq <= sumsq_next;
                end
            end
        end
    end
endmodule
