`timescale 1ns/1ps
`default_nettype none

//------------------------------------------------------------------------------
// Demodulated-waveform selector for DAC904 output and AXI-Stream DMA capture.
//
// mux_ctrl[2:0]:
//   0: mute
//   1: AM
//   2: FM
//   3: mute/reserved
//   4: 2ASK
//   5: 2PSK
//   6: 2FSK
//   7: mute/reserved
//
// mux_ctrl[8]:
//   0: clear/disable the AXI-Stream capture path
//   1: enable a new AXI-Stream capture
//
// Recommended PS sequence:
//   1. Write mux_ctrl = mode (capture disabled).
//   2. Wait for the selected demodulator/filter path to settle.
//   3. Start the AXI DMA S2MM transfer.
//   4. Write mux_ctrl = mode | (1 << 8).
//   5. After DMA completion, write mux_ctrl = mode.
//
// The AXI-Stream output contains the 64-sample moving-average result as a
// sign-extended 32-bit word. TLAST accompanies every 2048th queued sample.
//
// A small elastic FIFO makes TVALID/TDATA/TLAST stable under backpressure.
// The upstream feature stream has no ready input, so an infinitely long stall
// cannot be lossless. If the FIFO fills, the presented AXI item remains stable,
// the capture stops without generating TLAST, and axis_overflow_sticky is
// asserted. The DMA then times out instead of returning a silently discontinuous
// waveform. With the current 1 MSPS feature-valid rate and a DMA receiver, the
// default 16-word FIFO provides substantial normal backpressure margin.
//------------------------------------------------------------------------------
module smart_mux_stream #(
    parameter integer AXIS_FIFO_DEPTH = 16
) (
    input  wire                      aclk,
    input  wire                      aresetn,

    input  wire [31:0]               mux_ctrl,

    input  wire [23:0]               mag_out,
    input  wire signed [23:0]        dphi_out,
    input  wire                      data_valid,

    input  wire signed [15:0]        bpsk_nrz_out,
    input  wire                      bpsk_sample_valid,

    (* mark_debug = "true" *)
    output wire signed [15:0]        audio_out,
    output wire                      audio_valid,

    output wire [31:0]               m_axis_tdata,
    output wire                      m_axis_tvalid,
    output wire                      m_axis_tlast,
    input  wire                      m_axis_tready
);

    //--------------------------------------------------------------------------
    // 1. Synchronize the PS-controlled mode and capture enable.
    //--------------------------------------------------------------------------
    (* ASYNC_REG = "TRUE" *) reg [2:0] mux_meta;
    (* ASYNC_REG = "TRUE" *) reg [2:0] mux_sync;
    reg [2:0] mux_sync_d;
    reg [2:0] mux_sel;

    (* ASYNC_REG = "TRUE" *) reg capture_enable_meta;
    (* ASYNC_REG = "TRUE" *) reg capture_enable_sync;

    always @(posedge aclk) begin
        if (!aresetn) begin
            mux_meta            <= 3'd0;
            mux_sync            <= 3'd0;
            mux_sync_d          <= 3'd0;
            mux_sel             <= 3'd0;
            capture_enable_meta <= 1'b0;
            capture_enable_sync <= 1'b0;
        end else begin
            mux_meta            <= mux_ctrl[2:0];
            mux_sync            <= mux_meta;
            mux_sync_d          <= mux_sync;
            capture_enable_meta <= mux_ctrl[8];
            capture_enable_sync <= capture_enable_meta;

            // Reject a transient mixed code while several GPIO bits change.
            if (mux_sync == mux_sync_d)
                mux_sel <= mux_sync;
        end
    end

    //--------------------------------------------------------------------------
    // 2. Select the magnitude/phase-difference feature stream.
    //--------------------------------------------------------------------------
    reg signed [23:0] selected_data;
    reg               valid_reg;

    always @(posedge aclk) begin
        if (!aresetn) begin
            selected_data <= 24'sd0;
            valid_reg     <= 1'b0;
        end else begin
            valid_reg <= data_valid;

            case (mux_sel)
                3'd1, 3'd4:
                    selected_data <= {1'b0, mag_out[22:0]};

                3'd2, 3'd5, 3'd6:
                    selected_data <= dphi_out;

                default:
                    selected_data <= 24'sd0;
            endcase
        end
    end

    //--------------------------------------------------------------------------
    // 3. 64-sample moving-average filter.
    //--------------------------------------------------------------------------
    reg signed [23:0] delay_line [0:63];
    reg signed [31:0] sum_reg;
    integer i;

    always @(posedge aclk) begin
        if (!aresetn) begin
            sum_reg <= 32'sd0;
            for (i = 0; i < 64; i = i + 1)
                delay_line[i] <= 24'sd0;
        end else if (valid_reg) begin
            delay_line[0] <= selected_data;

            for (i = 0; i < 63; i = i + 1)
                delay_line[i+1] <= delay_line[i];

            sum_reg <= sum_reg + selected_data - delay_line[63];
        end
    end

    wire signed [23:0] lpf_data;
    assign lpf_data = sum_reg >>> 6;

    //--------------------------------------------------------------------------
    // 4. Scaling for the non-FM DAC paths.
    //--------------------------------------------------------------------------
    reg signed [23:0] dac_stage_data;

    always @(*) begin
        case (mux_sel)
            3'd1:
                dac_stage_data = lpf_data <<< 2;

            3'd4, 3'd5, 3'd6:
                dac_stage_data = selected_data <<< 1;

            default:
                dac_stage_data = lpf_data;
        endcase
    end

    //--------------------------------------------------------------------------
    // 5. Extra IIR smoothing for the FM output.
    //--------------------------------------------------------------------------
    reg  signed [31:0] dac_iir;
    wire signed [31:0] lpf_data_32;
    wire signed [31:0] iir_diff;
    wire signed [31:0] fm_scaled_audio;
    wire signed [15:0] fm_audio_out;

    assign lpf_data_32     = {{8{lpf_data[23]}}, lpf_data};
    assign iir_diff        = lpf_data_32 - dac_iir;
    assign fm_scaled_audio = dac_iir >>> 2;

    always @(posedge aclk) begin
        if (!aresetn)
            dac_iir <= 32'sd0;
        else if (valid_reg)
            dac_iir <= dac_iir + ($signed(iir_diff) >>> 4);
    end

    assign fm_audio_out =
        (fm_scaled_audio > 32'sd32767)  ? 16'sd32767  :
        (fm_scaled_audio < -32'sd32768) ? -16'sd32768 :
                                           fm_scaled_audio[15:0];

    //--------------------------------------------------------------------------
    // 6. DAC output routing. This path is independent of DMA capture_enable.
    //--------------------------------------------------------------------------
    reg signed [15:0] audio_data_mux;
    reg               audio_valid_mux;

    always @(*) begin
        case (mux_sel)
            3'd1, 3'd4, 3'd6: begin
                audio_data_mux  = dac_stage_data[23:8];
                audio_valid_mux = valid_reg;
            end

            3'd2: begin
                audio_data_mux  = fm_audio_out;
                audio_valid_mux = valid_reg;
            end

            3'd5: begin
                audio_data_mux  = bpsk_nrz_out;
                audio_valid_mux = bpsk_sample_valid;
            end

            default: begin
                audio_data_mux  = 16'sd0;
                audio_valid_mux = 1'b1;
            end
        endcase
    end

    assign audio_out   = audio_data_mux;
    assign audio_valid = audio_valid_mux;

    //--------------------------------------------------------------------------
    // 7. Backpressure-safe AXI-Stream elastic FIFO.
    //--------------------------------------------------------------------------
    localparam integer AXIS_PTR_WIDTH =
        (AXIS_FIFO_DEPTH <= 2) ? 1 : $clog2(AXIS_FIFO_DEPTH);
    localparam integer AXIS_COUNT_WIDTH =
        $clog2(AXIS_FIFO_DEPTH + 1);

    reg [31:0] axis_data_fifo [0:AXIS_FIFO_DEPTH-1];
    reg        axis_last_fifo [0:AXIS_FIFO_DEPTH-1];
    reg [AXIS_PTR_WIDTH-1:0] axis_write_pointer;
    reg [AXIS_PTR_WIDTH-1:0] axis_read_pointer;

    (* mark_debug = "true" *)
    reg [AXIS_COUNT_WIDTH-1:0] axis_fifo_level;
    (* mark_debug = "true" *)
    reg axis_overflow_sticky;

    reg [11:0] frame_sample_count;
    reg        frame_accepting_samples;

    wire axis_fifo_empty = (axis_fifo_level == 0);
    wire axis_fifo_full  = (axis_fifo_level == AXIS_FIFO_DEPTH);

    assign m_axis_tvalid = !axis_fifo_empty;
    assign m_axis_tdata  = axis_data_fifo[axis_read_pointer];
    assign m_axis_tlast  = axis_last_fifo[axis_read_pointer];

    wire axis_pop = m_axis_tvalid && m_axis_tready;
    wire axis_push_request =
        capture_enable_sync && frame_accepting_samples && valid_reg;
    wire axis_push = axis_push_request && (!axis_fifo_full || axis_pop);

    function [AXIS_PTR_WIDTH-1:0] axis_next_pointer;
        input [AXIS_PTR_WIDTH-1:0] pointer;
        begin
            if (pointer == AXIS_FIFO_DEPTH - 1)
                axis_next_pointer = {AXIS_PTR_WIDTH{1'b0}};
            else
                axis_next_pointer = pointer + 1'b1;
        end
    endfunction

    always @(posedge aclk) begin
        if (!aresetn) begin
            axis_overflow_sticky <= 1'b0;
        end else if (axis_push_request && axis_fifo_full && !axis_pop) begin
            // Preserve the current AXI item; drop the newest input sample.
            axis_overflow_sticky <= 1'b1;
        end
    end

    always @(posedge aclk) begin
        if (!aresetn || !capture_enable_sync) begin
            axis_write_pointer <= {AXIS_PTR_WIDTH{1'b0}};
            axis_read_pointer  <= {AXIS_PTR_WIDTH{1'b0}};
            axis_fifo_level    <= {AXIS_COUNT_WIDTH{1'b0}};
            frame_sample_count <= 12'd0;
            frame_accepting_samples <= 1'b1;
        end else begin
            case ({axis_push, axis_pop})
                2'b10:
                    axis_fifo_level <= axis_fifo_level + 1'b1;
                2'b01:
                    axis_fifo_level <= axis_fifo_level - 1'b1;
                default:
                    axis_fifo_level <= axis_fifo_level;
            endcase

            if (axis_push) begin
                axis_data_fifo[axis_write_pointer] <=
                    {{8{lpf_data[23]}}, lpf_data};
                axis_last_fifo[axis_write_pointer] <=
                    (frame_sample_count == 12'd2047);
                axis_write_pointer <=
                    axis_next_pointer(axis_write_pointer);

                if (frame_sample_count == 12'd2047) begin
                    frame_sample_count <= 12'd0;
                    // Do not queue any part of the next DMA frame while PS is
                    // polling completion and has not yet cleared bit 8.
                    frame_accepting_samples <= 1'b0;
                end else begin
                    frame_sample_count <= frame_sample_count + 1'b1;
                end
            end

            if (axis_pop) begin
                axis_read_pointer <=
                    axis_next_pointer(axis_read_pointer);
            end

            if (axis_push_request && axis_fifo_full && !axis_pop) begin
                // Fail closed: do not silently create a time-discontinuous
                // waveform. The missing TLAST makes the PS DMA timeout.
                frame_accepting_samples <= 1'b0;
            end
        end
    end

endmodule

`default_nettype wire
