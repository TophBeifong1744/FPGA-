`timescale 1ns/1ps
`default_nettype none

//==============================================================================
// AD9226 stage-1 driver -- timing-fixed version
//
// Clocking:
//   clk_60m_adc    = 60 MHz, 0 deg
//                    Drives the ADC clock ODDR and captures the returned ADC bus
//                    on the following rising edge (one-cycle external path).
//   clk_60m_sample = 60 MHz, 180 deg
//                    Re-registers the captured bus and clocks the processing
//                    datapath and all downstream algorithm logic.
//
// The extra input register stage is intentional. Capturing the physical ADC bus
// directly with clk_60m_sample only allowed half a period after the forwarded
// clock, while the ODDR/output-buffer delay plus AD9226 tOD consumed more than
// that half period.
//==============================================================================

module ad9226_stage1_driver #(
    parameter integer INVERT_ADC_BITS   = 1,
    parameter integer DC_FILTER_SHIFT   = 8,
    parameter integer OUTPUT_LEFT_SHIFT = 2
) (
    (* X_INTERFACE_INFO =
       "xilinx.com:signal:clock:1.0 CLK_ADC CLK" *)
    (* X_INTERFACE_PARAMETER =
       "XIL_INTERFACENAME CLK_ADC, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0" *)
    input  wire                         clk_60m_adc,

    (* X_INTERFACE_INFO =
       "xilinx.com:signal:clock:1.0 CLK_SAMPLE CLK" *)
    (* X_INTERFACE_PARAMETER =
       "XIL_INTERFACENAME CLK_SAMPLE, ASSOCIATED_RESET resetn, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0" *)
    input  wire                         clk_60m_sample,

    input  wire                         clk_locked,

    (* X_INTERFACE_INFO =
       "xilinx.com:signal:reset:1.0 RESETN RST" *)
    (* X_INTERFACE_PARAMETER =
       "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW" *)
    input  wire                         resetn,

    (* X_INTERFACE_INFO =
       "xilinx.com:signal:clock:1.0 AD_CLK CLK" *)
    (* X_INTERFACE_PARAMETER =
       "XIL_INTERFACENAME AD_CLK, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0" *)
    output wire                         ad_clk,

    input  wire [11:0]                  ad_data_in,
    input  wire                         ad_otr_in,

    output wire signed [13:0]           adc_data,
    output wire                         adc_valid,
    output wire                         adc_otr,

    output wire                         clk_60m_core,
    output wire                         core_aresetn,
    output wire                         locked_debug
);

    //--------------------------------------------------------------------------
    // 1. Forward the 0-degree clock to the AD9226 using dedicated I/O clocking.
    //--------------------------------------------------------------------------
    ODDR #(
        .DDR_CLK_EDGE ("OPPOSITE_EDGE"),
        .INIT         (1'b0),
        .SRTYPE       ("SYNC")
    ) u_oddr_ad_clk (
        .Q  (ad_clk),
        .C  (clk_60m_adc),
        .CE (1'b1),
        .D1 (1'b1),
        .D2 (1'b0),
        .R  (~clk_locked),
        .S  (1'b0)
    );

    //--------------------------------------------------------------------------
    // 2. Synchronize reset release independently in both related clock domains.
    //--------------------------------------------------------------------------
    wire       reset_async_n;
    reg  [1:0] adc_reset_sync;
    reg  [1:0] sample_reset_sync;
    wire       adc_capture_aresetn;

    assign reset_async_n = resetn & clk_locked;

    always @(posedge clk_60m_adc or negedge reset_async_n) begin
        if (!reset_async_n)
            adc_reset_sync <= 2'b00;
        else
            adc_reset_sync <= {adc_reset_sync[0], 1'b1};
    end

    always @(posedge clk_60m_sample or negedge reset_async_n) begin
        if (!reset_async_n)
            sample_reset_sync <= 2'b00;
        else
            sample_reset_sync <= {sample_reset_sync[0], 1'b1};
    end

    assign adc_capture_aresetn = adc_reset_sync[1];
    assign core_aresetn        = sample_reset_sync[1];

    //--------------------------------------------------------------------------
    // 3. Physical input capture in the 0-degree domain.
    //
    // These are the endpoints of the set_input_delay paths. The IOB attribute
    // keeps the registers in the input cells and minimizes bus skew.
    //--------------------------------------------------------------------------
    (* IOB = "TRUE" *) reg [11:0] ad_data_capture_adc;
    (* IOB = "TRUE" *) reg        ad_otr_capture_adc;
    reg                           adc_capture_valid;

    always @(posedge clk_60m_adc or negedge adc_capture_aresetn) begin
        if (!adc_capture_aresetn) begin
            ad_data_capture_adc <= 12'd0;
            ad_otr_capture_adc  <= 1'b0;
            adc_capture_valid   <= 1'b0;
        end
        else begin
            ad_data_capture_adc <= ad_data_in;
            ad_otr_capture_adc  <= ad_otr_in;
            adc_capture_valid   <= 1'b1;
        end
    end

    //--------------------------------------------------------------------------
    // 4. Related-clock transfer: 0-degree capture -> 180-degree processing.
    //
    // This is a normal timed path, not an asynchronous CDC. It has one half
    // period (about 8.33 ns at 60 MHz) and must not be false-pathed.
    //--------------------------------------------------------------------------
    reg [11:0] ad_data_sample;
    reg        ad_otr_sample;
    reg        sample_valid;

    always @(posedge clk_60m_sample or negedge core_aresetn) begin
        if (!core_aresetn) begin
            ad_data_sample <= 12'd0;
            ad_otr_sample  <= 1'b0;
            sample_valid   <= 1'b0;
        end
        else begin
            ad_data_sample <= ad_data_capture_adc;
            ad_otr_sample  <= ad_otr_capture_adc;
            sample_valid   <= adc_capture_valid;
        end
    end

    //--------------------------------------------------------------------------
    // 5. Sample-domain numeric processing.
    //--------------------------------------------------------------------------
    ad9226_data_path #(
        .INVERT_ADC_BITS   (INVERT_ADC_BITS),
        .DC_FILTER_SHIFT   (DC_FILTER_SHIFT),
        .OUTPUT_LEFT_SHIFT (OUTPUT_LEFT_SHIFT)
    ) u_ad9226_data_path (
        .clk             (clk_60m_sample),
        .aresetn         (core_aresetn),
        .sample_data_in  (ad_data_sample),
        .sample_otr_in   (ad_otr_sample),
        .sample_valid_in (sample_valid),
        .adc_data        (adc_data),
        .adc_valid       (adc_valid),
        .adc_otr         (adc_otr)
    );

    assign clk_60m_core = clk_60m_sample;
    assign locked_debug = clk_locked;

endmodule


module ad9226_data_path #(
    parameter integer INVERT_ADC_BITS   = 1,
    parameter integer DC_FILTER_SHIFT   = 8,
    parameter integer OUTPUT_LEFT_SHIFT = 2
) (
    input  wire                         clk,
    input  wire                         aresetn,
    input  wire [11:0]                  sample_data_in,
    input  wire                         sample_otr_in,
    input  wire                         sample_valid_in,

    output wire signed [13:0]           adc_data,
    output wire                         adc_valid,
    output wire                         adc_otr
);

    localparam integer DC_ACC_WIDTH = 12 + DC_FILTER_SHIFT;

    // Restore the optional board inversion, then convert offset binary to
    // signed two's complement by flipping only the corrected MSB.
    wire [11:0] sample_polarity_corrected;

    generate
        if (INVERT_ADC_BITS != 0) begin : g_invert_adc_bits
            assign sample_polarity_corrected = ~sample_data_in;
        end
        else begin : g_keep_adc_bits
            assign sample_polarity_corrected = sample_data_in;
        end
    endgenerate

    wire signed [11:0] sample_twos_complement;
    assign sample_twos_complement = {
        ~sample_polarity_corrected[11],
         sample_polarity_corrected[10:0]
    };

    reg signed [DC_ACC_WIDTH-1:0] dc_accumulator;
    reg signed [11:0]             data_dc_removed;
    reg                           valid_out_reg;
    reg                           otr_out_reg;

    wire signed [DC_ACC_WIDTH-1:0] sample_extended;
    wire signed [DC_ACC_WIDTH-1:0] dc_estimate;
    wire signed [DC_ACC_WIDTH:0]   dc_error_wide;
    wire signed [DC_ACC_WIDTH:0]   dc_next_wide;

    assign sample_extended = {
        {(DC_ACC_WIDTH-12){sample_twos_complement[11]}},
        sample_twos_complement
    };

    assign dc_estimate = dc_accumulator >>> DC_FILTER_SHIFT;

    assign dc_error_wide =
        $signed({sample_extended[DC_ACC_WIDTH-1], sample_extended}) -
        $signed({dc_estimate[DC_ACC_WIDTH-1], dc_estimate});

    assign dc_next_wide =
        $signed({dc_accumulator[DC_ACC_WIDTH-1], dc_accumulator}) +
        $signed({sample_extended[DC_ACC_WIDTH-1], sample_extended}) -
        $signed({dc_estimate[DC_ACC_WIDTH-1], dc_estimate});

    always @(posedge clk or negedge aresetn) begin
        if (!aresetn) begin
            dc_accumulator <= {DC_ACC_WIDTH{1'b0}};
            data_dc_removed <= 12'sd0;
            valid_out_reg   <= 1'b0;
            otr_out_reg     <= 1'b0;
        end
        else begin
            valid_out_reg <= sample_valid_in;

            if (sample_valid_in) begin
                dc_accumulator <= dc_next_wide[DC_ACC_WIDTH-1:0];
                otr_out_reg    <= sample_otr_in;

                if (dc_error_wide > 2047)
                    data_dc_removed <= 12'sd2047;
                else if (dc_error_wide < -2048)
                    data_dc_removed <= -12'sd2048;
                else
                    data_dc_removed <= dc_error_wide[11:0];
            end
            else begin
                data_dc_removed <= 12'sd0;
                otr_out_reg     <= 1'b0;
            end
        end
    end

    wire signed [13:0] data_sign_extended;
    wire signed [13:0] data_scaled_to_14bit;

    assign data_sign_extended =
        {{2{data_dc_removed[11]}}, data_dc_removed};

    assign data_scaled_to_14bit =
        data_sign_extended <<< OUTPUT_LEFT_SHIFT;

    assign adc_data  = data_scaled_to_14bit;
    assign adc_valid = valid_out_reg;
    assign adc_otr   = otr_out_reg;

endmodule

`default_nettype wire
