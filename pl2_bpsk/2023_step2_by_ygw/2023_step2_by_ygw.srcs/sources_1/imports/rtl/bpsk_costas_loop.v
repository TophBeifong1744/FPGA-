`timescale 1ns/1ps

// Second-order decision-directed Costas loop for complex BPSK baseband.
// Input and recovered I/Q are signed Q1.14.  All state updates occur only
// when in_valid is asserted; therefore gaps in the 60 MHz clock do not alter
// the assumed 1 MSPS sample-time loop gains.
module bpsk_costas_loop #(
    parameter integer KP_LSHIFT = 5,
    parameter integer KI_RSHIFT = 3,
    parameter integer LP_RSHIFT = 3,
    parameter integer FREQ_LIMIT = 419430, // +/-25 kHz at Fs=1 MHz
    parameter [15:0]  MAG_GATE = 16'd819   // 0.05 in Q1.14
) (
    input  wire                    aclk,
    input  wire                    aresetn,
    input  wire signed [15:0]      s_i,
    input  wire signed [15:0]      s_q,
    input  wire                    in_valid,
    output reg  signed [15:0]      i_recovered,
    output reg  signed [15:0]      q_recovered,
    output reg                     out_valid,
    output reg                     carrier_locked,
    output reg  [23:0]             phase_word,
    output reg  signed [23:0]      frequency_word
);
    wire signed [15:0] nco_sine;
    wire signed [15:0] nco_cosine;
    bpsk_nco_lut u_nco (
        .phase_in(phase_word), .sin_out(nco_sine), .cos_out(nco_cosine)
    );

    wire signed [31:0] product_ic = $signed(s_i) * $signed(nco_cosine);
    wire signed [31:0] product_qs = $signed(s_q) * $signed(nco_sine);
    wire signed [31:0] product_qc = $signed(s_q) * $signed(nco_cosine);
    wire signed [31:0] product_is = $signed(s_i) * $signed(nco_sine);
    wire signed [32:0] mix_i_full =
        {product_ic[31], product_ic} + {product_qs[31], product_qs};
    wire signed [32:0] mix_q_full =
        {product_qc[31], product_qc} - {product_is[31], product_is};

    function signed [15:0] q29_to_q14;
        input signed [32:0] value;
        reg signed [33:0] magnitude;
        reg signed [18:0] rounded;
        begin
            if (value < 0) begin
                magnitude = -{{1{value[32]}}, value};
                rounded = -((magnitude + 34'sd16384) >>> 15);
            end else begin
                magnitude = {{1{value[32]}}, value};
                rounded = (magnitude + 34'sd16384) >>> 15;
            end
            if (rounded > 19'sd32767)
                q29_to_q14 = 16'sh7fff;
            else if (rounded < -19'sd32768)
                q29_to_q14 = -16'sd32768;
            else
                q29_to_q14 = rounded[15:0];
        end
    endfunction

    wire signed [15:0] mix_i = q29_to_q14(mix_i_full);
    wire signed [15:0] mix_q = q29_to_q14(mix_q_full);
    wire signed [16:0] i_delta =
        {mix_i[15], mix_i} - {i_recovered[15], i_recovered};
    wire signed [16:0] q_delta =
        {mix_q[15], mix_q} - {q_recovered[15], q_recovered};
    wire signed [16:0] i_lpf_state = {i_recovered[15], i_recovered};
    wire signed [16:0] q_lpf_state = {q_recovered[15], q_recovered};
    wire signed [16:0] i_lpf_step = i_delta >>> LP_RSHIFT;
    wire signed [16:0] q_lpf_step = q_delta >>> LP_RSHIFT;
    wire signed [16:0] i_next_ext = i_lpf_state + i_lpf_step;
    wire signed [16:0] q_next_ext = q_lpf_state + q_lpf_step;
    wire signed [15:0] i_next = i_next_ext[15:0];
    wire signed [15:0] q_next = q_next_ext[15:0];

    // sign(I)*Q is insensitive to the transmitted BPSK polarity.
    wire signed [16:0] q_next_wide = {q_next[15], q_next};
    wire signed [16:0] phase_error = i_next[15] ? -q_next_wide : q_next_wide;
    wire signed [24:0] frequency_state =
        {frequency_word[23], frequency_word};
    wire signed [24:0] integral_error =
        {{8{phase_error[16]}}, phase_error};
    wire signed [24:0] integral_step = integral_error >>> KI_RSHIFT;
    wire signed [24:0] frequency_sum = frequency_state + integral_step;
    reg signed [23:0] frequency_next;
    always @* begin
        if (frequency_sum > FREQ_LIMIT)
            frequency_next = FREQ_LIMIT;
        else if (frequency_sum < -FREQ_LIMIT)
            frequency_next = -FREQ_LIMIT;
        else
            frequency_next = frequency_sum[23:0];
    end

    wire signed [30:0] error_extended = {{14{phase_error[16]}}, phase_error};
    wire signed [30:0] proportional = error_extended <<< KP_LSHIFT;
    wire signed [30:0] frequency_extended =
        {{7{frequency_next[23]}}, frequency_next};
    wire signed [30:0] phase_correction = frequency_extended + proportional;

    wire [16:0] abs_i = i_next[15] ? -{i_next[15], i_next} : {1'b0, i_next};
    wire [16:0] abs_q = q_next[15] ? -{q_next[15], q_next} : {1'b0, q_next};
    wire phase_good = (abs_i >= {1'b0, MAG_GATE}) && (abs_q <= (abs_i >> 2));
    reg [9:0] lock_score;

    always @(posedge aclk) begin
        if (!aresetn) begin
            i_recovered  <= 16'sd0;
            q_recovered  <= 16'sd0;
            out_valid    <= 1'b0;
            carrier_locked <= 1'b0;
            phase_word   <= 24'd0;
            frequency_word <= 24'sd0;
            lock_score   <= 10'd0;
        end else begin
            out_valid <= in_valid;
            if (in_valid) begin
                i_recovered <= i_next;
                q_recovered <= q_next;
                frequency_word <= frequency_next;
                phase_word <= phase_word + phase_correction[23:0];

                if (phase_good) begin
                    if (lock_score != 10'd1023)
                        lock_score <= lock_score + 1'b1;
                    if (lock_score >= 10'd511)
                        carrier_locked <= 1'b1;
                end else begin
                    if (lock_score > 10'd4)
                        lock_score <= lock_score - 3'd4;
                    else
                        lock_score <= 10'd0;
                    if (lock_score <= 10'd132)
                        carrier_locked <= 1'b0;
                end
            end
        end
    end
endmodule

