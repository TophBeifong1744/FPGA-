`timescale 1ns/1ps
// Verilog-2001 source for Vivado 2018.3.

// Writes one atomic feature snapshot to Block Memory Generator Port B.
// Configure BMG as true dual-port, 32-bit, depth >=64, byte write enabled.
// AXI BRAM Controller uses Port A; this module uses native Port B.
module feature_bram_writer (
    input  wire                aclk,
    input  wire                aresetn,
    input  wire                frame_done,
    input  wire [63:0]         var_mag_num,
    input  wire [63:0]         var_freq_num,
    input  wire signed [31:0]  mean_mag_num,
    input  wire signed [31:0]  mean_freq_num,
    input  wire [31:0]         psk_spike_count,
    input  wire                psk_flag,

    output reg  [3:0]          hist_mag_rd_addr,
    input  wire [31:0]         hist_mag_rd_data,
    output reg  [3:0]          hist_freq_rd_addr,
    input  wire [31:0]         hist_freq_rd_data,

    output reg                 bram_en,
    output reg  [3:0]          bram_we,
    output reg  [31:0]          bram_addr,
    output reg  [31:0]         bram_wdata,
    output reg                 busy
);
    reg [5:0]  word_index;
    reg [31:0] sequence;
    reg        commit;

    always @* begin
        bram_en          = 1'b0;
        bram_we          = 4'b0000;
        bram_addr        = {24'd0, word_index, 2'b00};
        bram_wdata       = 32'd0;
        hist_mag_rd_addr = 4'd0;
        hist_freq_rd_addr= 4'd0;

        if (busy) begin
            bram_en = 1'b1;
            bram_we = 4'b1111;
            case (word_index)
                6'd1: bram_wdata = var_mag_num[31:0];
                6'd2: bram_wdata = var_mag_num[63:32];
                6'd3: bram_wdata = var_freq_num[31:0];
                6'd4: bram_wdata = var_freq_num[63:32];
                6'd5: bram_wdata = mean_mag_num;
                6'd6: bram_wdata = mean_freq_num;
                6'd7: bram_wdata = {psk_flag, psk_spike_count[30:0]};
                default: begin
                    if ((word_index >= 8) && (word_index <= 23)) begin
                        hist_mag_rd_addr = word_index - 8;
                        bram_wdata       = hist_mag_rd_data;
                    end else if ((word_index >= 24) && (word_index <= 39)) begin
                        hist_freq_rd_addr = word_index - 24;
                        bram_wdata        = hist_freq_rd_data;
                    end
                end
            endcase
        end else if (commit) begin
            // Commit marker is written last so PS never treats a partial frame
            // as a new complete feature snapshot.
            bram_en    = 1'b1;
            bram_we    = 4'b1111;
            bram_addr  = 32'd0;
            bram_wdata = sequence + 1'b1;
        end
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            word_index <= 6'd1;
            sequence   <= 32'd0;
            busy       <= 1'b0;
            commit     <= 1'b0;
        end else begin
            if (frame_done && !busy && !commit) begin
                word_index <= 6'd1;
                busy       <= 1'b1;
            end else if (busy) begin
                if (word_index == 6'd39) begin
                    busy   <= 1'b0;
                    commit <= 1'b1;
                end else begin
                    word_index <= word_index + 1'b1;
                end
            end else if (commit) begin
                sequence <= sequence + 1'b1;
                commit   <= 1'b0;
            end
        end
    end
endmodule
