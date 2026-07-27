`timescale 1ns/1ps
// Verilog-2001 source for Vivado 2018.3.

// Writes one atomic feature snapshot to Block Memory Generator Port B.
//
// BRAM layout (32-bit words; byte address = word index * 4):
//   word 0      : sequence commit marker, written last
//   word 1..39  : original feature snapshot, unchanged
//   word 40     : BPSK status
//   word 41     : valid recovered-bit count in this frame, 0..128
//   word 42..45 : up to 128 recovered bits, packed LSB first
//   word 46     : BPSK overflow/debug information
//
// Bit packing rule:
//   first valid bit in a frame -> word 42 bit 0
//   32nd valid bit             -> word 42 bit 31
//   33rd valid bit             -> word 43 bit 0
//
// Configure BMG as true dual-port, 32-bit, depth >=64 words, byte write
// enabled. AXI BRAM Controller uses Port A; this module uses native Port B.
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

    input  wire                bpsk_carrier_locked,
    input  wire                bpsk_timing_locked,
    input  wire [1:0]          bpsk_rate_code,
    input  wire                bpsk_bit_data,
    input  wire                bpsk_bit_valid,

    output reg  [3:0]          hist_mag_rd_addr,
    input  wire [31:0]         hist_mag_rd_data,
    output reg  [3:0]          hist_freq_rd_addr,
    input  wire [31:0]         hist_freq_rd_data,

    output reg                 bram_en,
    output reg  [3:0]          bram_we,
    output reg  [31:0]         bram_addr,
    output reg  [31:0]         bram_wdata,
    output reg                 busy
);
    localparam [5:0] FEATURE_LAST_WORD = 6'd46;

    reg [5:0]  word_index;
    reg [31:0] sequence;
    reg        commit;

    // Current-frame collection buffer. It is cleared at every frame_done,
    // whether or not the completed frame can be accepted by the writer.
    reg [127:0] collect_bits;
    reg [7:0]   collect_count;
    reg         collect_overflow;
    reg [7:0]   collect_drop_count;

    // Combinational form after applying a possible bit_valid in this cycle.
    // This makes a bit coincident with frame_done part of the completed frame.
    reg [127:0] collect_bits_next;
    reg [7:0]   collect_count_next;
    reg         collect_overflow_next;
    reg [7:0]   collect_drop_count_next;

    // Stable snapshot written to BRAM while the next frame is collected.
    reg [127:0] snap_bits;
    reg [7:0]   snap_bit_count;
    reg         snap_carrier_locked;
    reg         snap_timing_locked;
    reg [1:0]   snap_rate_code;
    reg         snap_frame_overflow;
    reg [7:0]   snap_dropped_bits;
    reg         snap_bit_overflow_sticky;
    reg         snap_snapshot_overrun_sticky;
    reg [15:0]  snap_snapshot_overrun_count;

    // Debug state retained across frames.
    reg         bit_overflow_sticky;
    reg         snapshot_overrun_sticky;
    reg [15:0]  snapshot_overrun_count;

    wire [31:0] bpsk_status_word;
    wire [31:0] bpsk_debug_word;
    wire        writer_available;

    assign writer_available = !busy && !commit;

    // word 40:
    //   bit 0   carrier_locked
    //   bit 1   timing_locked
    //   bit 3:2 rate_code: 00 unknown, 01 6 kbps, 10 8 kbps, 11 10 kbps
    //   bit 4   this frame exceeded the 128-bit buffer
    //   bit31:5 reserved
    assign bpsk_status_word = {
        27'd0,
        snap_frame_overflow,
        snap_rate_code,
        snap_timing_locked,
        snap_carrier_locked
    };

    // word 46:
    //   bit 0    this frame exceeded 128 bits
    //   bit 1    any bit-buffer overflow has occurred since reset
    //   bit 2    any frame snapshot was dropped because writer was occupied
    //   bit 7:3  reserved
    //   bit15:8  dropped bits in this frame, saturated at 255
    //   bit31:16 dropped frame-snapshot count, saturated at 65535
    assign bpsk_debug_word = {
        snap_snapshot_overrun_count,
        snap_dropped_bits,
        5'd0,
        snap_snapshot_overrun_sticky,
        snap_bit_overflow_sticky,
        snap_frame_overflow
    };

    // Apply the current-cycle recovered bit before frame boundary capture.
    always @* begin
        collect_bits_next       = collect_bits;
        collect_count_next      = collect_count;
        collect_overflow_next   = collect_overflow;
        collect_drop_count_next = collect_drop_count;

        if (bpsk_bit_valid) begin
            if (collect_count < 8'd128) begin
                collect_bits_next[collect_count] = bpsk_bit_data;
                collect_count_next = collect_count + 1'b1;
            end else begin
                collect_overflow_next = 1'b1;
                if (collect_drop_count != 8'hFF)
                    collect_drop_count_next = collect_drop_count + 1'b1;
            end
        end
    end

    always @* begin
        bram_en           = 1'b0;
        bram_we           = 4'b0000;
        bram_addr         = 32'd0;
        bram_wdata        = 32'd0;
        hist_mag_rd_addr  = 4'd0;
        hist_freq_rd_addr = 4'd0;

        if (busy) begin
            bram_en   = 1'b1;
            bram_we   = 4'b1111;
            bram_addr = {24'd0, word_index, 2'b00};

            case (word_index)
                6'd1:  bram_wdata = var_mag_num[31:0];
                6'd2:  bram_wdata = var_mag_num[63:32];
                6'd3:  bram_wdata = var_freq_num[31:0];
                6'd4:  bram_wdata = var_freq_num[63:32];
                6'd5:  bram_wdata = mean_mag_num;
                6'd6:  bram_wdata = mean_freq_num;
                6'd7:  bram_wdata = {psk_flag, psk_spike_count[30:0]};
                6'd40: bram_wdata = bpsk_status_word;
                6'd41: bram_wdata = {24'd0, snap_bit_count};
                6'd42: bram_wdata = snap_bits[31:0];
                6'd43: bram_wdata = snap_bits[63:32];
                6'd44: bram_wdata = snap_bits[95:64];
                6'd45: bram_wdata = snap_bits[127:96];
                6'd46: bram_wdata = bpsk_debug_word;
                default: begin
                    if ((word_index >= 6'd8) &&
                        (word_index <= 6'd23)) begin
                        hist_mag_rd_addr = word_index - 6'd8;
                        bram_wdata       = hist_mag_rd_data;
                    end else if ((word_index >= 6'd24) &&
                                 (word_index <= 6'd39)) begin
                        hist_freq_rd_addr = word_index - 6'd24;
                        bram_wdata        = hist_freq_rd_data;
                    end
                end
            endcase
        end else if (commit) begin
            // Commit marker is written last so PS never treats a partial
            // feature/BPSK frame as a new complete snapshot.
            bram_en    = 1'b1;
            bram_we    = 4'b1111;
            bram_addr  = 32'd0;
            bram_wdata = sequence + 1'b1;
        end
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            word_index                    <= 6'd1;
            sequence                      <= 32'd0;
            busy                          <= 1'b0;
            commit                        <= 1'b0;

            collect_bits                  <= 128'd0;
            collect_count                 <= 8'd0;
            collect_overflow              <= 1'b0;
            collect_drop_count            <= 8'd0;

            snap_bits                     <= 128'd0;
            snap_bit_count                <= 8'd0;
            snap_carrier_locked           <= 1'b0;
            snap_timing_locked            <= 1'b0;
            snap_rate_code                <= 2'b00;
            snap_frame_overflow           <= 1'b0;
            snap_dropped_bits             <= 8'd0;
            snap_bit_overflow_sticky      <= 1'b0;
            snap_snapshot_overrun_sticky  <= 1'b0;
            snap_snapshot_overrun_count   <= 16'd0;

            bit_overflow_sticky           <= 1'b0;
            snapshot_overrun_sticky       <= 1'b0;
            snapshot_overrun_count        <= 16'd0;
        end else begin
            // Original snapshot state machine, extended through word 46.
            if (frame_done && writer_available) begin
                word_index <= 6'd1;
                busy       <= 1'b1;

                // Lock the completed BPSK frame before clearing collection.
                snap_bits                    <= collect_bits_next;
                snap_bit_count               <= collect_count_next;
                snap_carrier_locked          <= bpsk_carrier_locked;
                snap_timing_locked           <= bpsk_timing_locked;
                snap_rate_code               <= bpsk_rate_code;
                snap_frame_overflow          <= collect_overflow_next;
                snap_dropped_bits            <= collect_drop_count_next;
                snap_bit_overflow_sticky     <= bit_overflow_sticky |
                                                collect_overflow_next;
                snap_snapshot_overrun_sticky <= snapshot_overrun_sticky;
                snap_snapshot_overrun_count  <= snapshot_overrun_count;
            end else if (busy) begin
                if (word_index == FEATURE_LAST_WORD) begin
                    busy   <= 1'b0;
                    commit <= 1'b1;
                end else begin
                    word_index <= word_index + 1'b1;
                end
            end else if (commit) begin
                sequence <= sequence + 1'b1;
                commit   <= 1'b0;
            end

            // frame_done always starts a new BPSK collection interval.
            if (frame_done) begin
                collect_bits       <= 128'd0;
                collect_count      <= 8'd0;
                collect_overflow   <= 1'b0;
                collect_drop_count <= 8'd0;

                // A frame arriving while words 1..46 or the commit marker
                // are still being written cannot replace the active snapshot.
                if (!writer_available) begin
                    snapshot_overrun_sticky <= 1'b1;
                    if (snapshot_overrun_count != 16'hFFFF)
                        snapshot_overrun_count <= snapshot_overrun_count + 1'b1;
                end
            end else begin
                collect_bits       <= collect_bits_next;
                collect_count      <= collect_count_next;
                collect_overflow   <= collect_overflow_next;
                collect_drop_count <= collect_drop_count_next;
            end

            if (collect_overflow_next)
                bit_overflow_sticky <= 1'b1;
        end
    end
endmodule
