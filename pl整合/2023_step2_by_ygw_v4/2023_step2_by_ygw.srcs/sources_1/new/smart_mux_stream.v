`timescale 1ns/1ps
`default_nettype none

//------------------------------------------------------------------------------
// Demodulated-waveform selector for DAC904 output and optional AXI-Stream use.
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
// mux_ctrl is written by an AXI GPIO in the PS clock domain. Only its low
// three bits are used. They pass through a two-stage synchronizer and must be
// observed unchanged for two consecutive aclk cycles before mux_sel changes.
//
// data_valid is aligned with mag_out/dphi_out.
// bpsk_sample_valid is aligned with bpsk_nrz_out.
//------------------------------------------------------------------------------
module smart_mux_stream (
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
    // 1. Synchronize the PS-controlled mode into the aclk domain.
    //--------------------------------------------------------------------------
    (* ASYNC_REG = "TRUE" *) reg [2:0] mux_meta;
    (* ASYNC_REG = "TRUE" *) reg [2:0] mux_sync;
    reg [2:0] mux_sync_d;
    reg [2:0] mux_sel;

    always @(posedge aclk) begin
        if (!aresetn) begin
            mux_meta   <= 3'd0;
            mux_sync   <= 3'd0;
            mux_sync_d <= 3'd0;
            mux_sel    <= 3'd0;
        end else begin
            mux_meta   <= mux_ctrl[2:0];
            mux_sync   <= mux_meta;
            mux_sync_d <= mux_sync;

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

    assign lpf_data_32    = {{8{lpf_data[23]}}, lpf_data};
    assign iir_diff       = lpf_data_32 - dac_iir;
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
    // 6. DAC output routing.
    //
    // The 2PSK waveform has its own valid signal. Using data_valid here would
    // make the DAC sample a BPSK value on unrelated feature-valid cycles.
    // Mute/reserved modes continuously present signed zero so the DAC904 driver
    // updates to its midscale code instead of holding the previous waveform.
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
    // 7. Optional AXI-Stream monitor output.
    //
    // For the current DAC-only connection, tie m_axis_tready high. This legacy
    // monitor path does not implement an output skid buffer for backpressure.
    //--------------------------------------------------------------------------
    assign m_axis_tdata  = {{8{lpf_data[23]}}, lpf_data};
    assign m_axis_tvalid = valid_reg;

    reg [11:0] transfer_cnt;

    always @(posedge aclk) begin
        if (!aresetn) begin
            transfer_cnt <= 12'd0;
        end else if (m_axis_tvalid && m_axis_tready) begin
            if (transfer_cnt == 12'd2047)
                transfer_cnt <= 12'd0;
            else
                transfer_cnt <= transfer_cnt + 1'b1;
        end
    end

    assign m_axis_tlast = m_axis_tvalid &&
                          (transfer_cnt == 12'd2047);

endmodule

`default_nettype wire
