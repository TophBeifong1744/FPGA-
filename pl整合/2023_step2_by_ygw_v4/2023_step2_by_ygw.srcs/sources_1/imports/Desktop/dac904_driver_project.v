`timescale 1ns/1ps
`default_nettype none

//==============================================================================
// Module: dac904_driver
//
// Project use:
//   Convert a signed 16-bit demodulated sample into the 14-bit
//   standard-positive-binary code required by the DAC904.
//
// Timing method:
//   - dac_data is updated on the rising edge of aclk.
//   - dac_clk is an inverted copy of aclk generated with an ODDR.
//   - Therefore, the DAC904 sees a rising clock edge half a clock period after
//     dac_data changes.
//
// Recommended Vivado BD connections:
//   clk_wiz_0/clk_out2                -> aclk
//   rst_sample_60M/peripheral_aresetn -> aresetn
//   smart_mux/sample_out[15:0]        -> sample_in
//   smart_mux/sample_valid            -> sample_valid
//
// Physical interface:
//   dac_clk       -> DAC904 CLK
//   dac_data[13]  -> DAC904 D13 (MSB)
//   dac_data[0]   -> DAC904 D0  (LSB)
//==============================================================================

module dac904_driver (
    // 60 MHz algorithm/DAC data clock.
    (* X_INTERFACE_INFO =
       "xilinx.com:signal:clock:1.0 CLK_DAC_CORE CLK" *)
    (* X_INTERFACE_PARAMETER =
       "XIL_INTERFACENAME CLK_DAC_CORE, ASSOCIATED_RESET aresetn, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0" *)
    input  wire                    aclk,

    // Active-low reset synchronized to aclk by Processor System Reset.
    (* X_INTERFACE_INFO =
       "xilinx.com:signal:reset:1.0 RESETN RST" *)
    (* X_INTERFACE_PARAMETER =
       "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW" *)
    input  wire                    aresetn,

    // Signed two's-complement sample selected by the later Smart MUX.
    input  wire signed [15:0]      sample_in,
    input  wire                    sample_valid,

    // Physical DAC904 interface.
    (* X_INTERFACE_INFO =
       "xilinx.com:signal:clock:1.0 DAC_CLK CLK" *)
    (* X_INTERFACE_PARAMETER =
       "XIL_INTERFACENAME DAC_CLK, FREQ_HZ 60000000, FREQ_TOLERANCE_HZ 0" *)
    output wire                    dac_clk,
    output wire [13:0]             dac_data
);

    //--------------------------------------------------------------------------
    // 1. DAC data conversion and output register
    //--------------------------------------------------------------------------
    dac904_data_path u_dac904_data_path (
        .aclk         (aclk),
        .aresetn      (aresetn),
        .sample_in    (sample_in),
        .sample_valid (sample_valid),
        .dac_data     (dac_data)
    );

    //--------------------------------------------------------------------------
    // 2. Inverted forwarded DAC clock
    //--------------------------------------------------------------------------
    // D1=0, D2=1 produces dac_clk = ~aclk using the dedicated output DDR
    // resource. The rising edge of dac_clk is at the falling edge of aclk,
    // approximately half a 60 MHz period after dac_data is registered.
    ODDR #(
        .DDR_CLK_EDGE ("OPPOSITE_EDGE"),
        .INIT         (1'b0),
        .SRTYPE       ("SYNC")
    ) u_oddr_dac_clk (
        .Q  (dac_clk),
        .C  (aclk),
        .CE (1'b1),
        .D1 (1'b0),
        .D2 (1'b1),
        .R  (~aresetn),
        .S  (1'b0)
    );

endmodule


//==============================================================================
// Module: dac904_data_path
//
// Kept separate from the ODDR so that the numerical conversion can be
// simulated without loading Xilinx primitive simulation libraries.
//==============================================================================

module dac904_data_path (
    input  wire                    aclk,
    input  wire                    aresetn,
    input  wire signed [15:0]      sample_in,
    input  wire                    sample_valid,
    output wire [13:0]             dac_data
);

    // Drop the two least-significant bits:
    //   signed 16-bit full scale -> signed 14-bit full scale.
    //
    // Selecting [15:2] is equivalent to an arithmetic right shift by two for
    // a two's-complement value, while retaining exactly 14 output bits.
    wire [13:0] sample_14bit_twos;
    assign sample_14bit_twos = sample_in[15:2];

    // DAC904 accepts standard positive binary:
    //   signed minimum  -8192 -> 14'h0000
    //   signed zero          0 -> 14'h2000
    //   signed maximum  +8191 -> 14'h3FFF
    //
    // Two's complement to offset/positive binary only requires inversion of
    // the sign bit.
    wire [13:0] sample_14bit_binary;
    assign sample_14bit_binary = {
        ~sample_14bit_twos[13],
         sample_14bit_twos[12:0]
    };

    // Place the final data register in the FPGA I/O bank when possible to
    // reduce bit-to-bit skew on the parallel DAC bus.
    (* IOB = "TRUE" *) reg [13:0] dac_data_reg;

    always @(posedge aclk) begin
        if (!aresetn)
            // Midscale corresponds to a signed input value of zero.
            dac_data_reg <= 14'h2000;
        else if (sample_valid)
            dac_data_reg <= sample_14bit_binary;
        // When sample_valid is low, retain the previous DAC code. This repeats
        // a lower-rate demodulated sample at the 60 MHz DAC update clock.
    end

    assign dac_data = dac_data_reg;

endmodule

`default_nettype wire
