`timescale 1ns/1ps

// Sixteen-bin live histogram with an atomic snapshot every 2^LGN samples.
module hist16_snapshot #(
    parameter integer LGN = 13
) (
    input  wire              aclk,
    input  wire              aresetn,
    input  wire [3:0]        bin,
    input  wire              in_valid,
    input  wire              bin_enable,
    input  wire [3:0]        rd_addr,
    output reg  [31:0]       rd_data,
    output reg               window_done
);
    localparam integer N = (1 << LGN);
    reg [LGN-1:0] count;
    reg [31:0] live [0:15];
    reg [31:0] snap [0:15];
    integer k;

    always @* rd_data = snap[rd_addr];

    always @(posedge aclk) begin
        if (!aresetn) begin
            count       <= {LGN{1'b0}};
            window_done <= 1'b0;
            for (k=0; k<16; k=k+1) begin
                live[k] <= 32'd0;
                snap[k] <= 32'd0;
            end
        end else begin
            window_done <= 1'b0;
            if (in_valid) begin
                if (count == N-1) begin
                    for (k=0; k<16; k=k+1) begin
                        if (bin_enable && (bin == k[3:0]))
                            snap[k] <= live[k] + 1'b1;
                        else
                            snap[k] <= live[k];
                        live[k] <= 32'd0;
                    end
                    count       <= {LGN{1'b0}};
                    window_done <= 1'b1;
                end else begin
                    if (bin_enable)
                        live[bin] <= live[bin] + 1'b1;
                    count     <= count + 1'b1;
                end
            end
        end
    end
endmodule
