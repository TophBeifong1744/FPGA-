`timescale 1ns/1ps

// Second-order decision-directed Costas loop for complex BPSK baseband.
// Input and recovered I/Q are signed Q1.14.  The 1 MSPS accepted samples are
// separated by 60 cycles of the 60 MHz clock.  This implementation uses those
// idle cycles to pipeline one sample over five clocks without changing any
// fixed-point format, loop gain, rounding rule or per-sample state equation.
module bpsk_costas_loop #(
    parameter integer KP_LSHIFT = 5,
    parameter integer KI_RSHIFT = 3,
    parameter integer LP_RSHIFT = 3,
    parameter integer FREQ_LIMIT = 419430,
    parameter [15:0]  MAG_GATE = 16'd819
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

    // Stage 0: snapshot the input sample and the NCO value belonging to the
    // current phase state.  phase_word is stable for the complete transaction.
    reg                         stage0_valid;
    reg signed [15:0]           sample_i_pipe;
    reg signed [15:0]           sample_q_pipe;
    reg signed [15:0]           sine_pipe;
    reg signed [15:0]           cosine_pipe;

    // Stage 1: registered DSP multiplier outputs.
    reg                         stage1_valid;
    reg signed [31:0]           product_ic_pipe;
    reg signed [31:0]           product_qs_pipe;
    reg signed [31:0]           product_qc_pipe;
    reg signed [31:0]           product_is_pipe;

    // Stage 2: registered complex mixer add/subtract outputs.
    reg                         stage2_valid;
    reg signed [32:0]           mix_i_full_pipe;
    reg signed [32:0]           mix_q_full_pipe;

    wire signed [15:0] mix_i_scaled = q29_to_q14(mix_i_full_pipe);
    wire signed [15:0] mix_q_scaled = q29_to_q14(mix_q_full_pipe);
    wire signed [16:0] i_delta_calc =
        {mix_i_scaled[15], mix_i_scaled} -
        {i_recovered[15], i_recovered};
    wire signed [16:0] q_delta_calc =
        {mix_q_scaled[15], mix_q_scaled} -
        {q_recovered[15], q_recovered};
    wire signed [16:0] i_lpf_state_calc =
        {i_recovered[15], i_recovered};
    wire signed [16:0] q_lpf_state_calc =
        {q_recovered[15], q_recovered};
    wire signed [16:0] i_lpf_step_calc =
        i_delta_calc >>> LP_RSHIFT;
    wire signed [16:0] q_lpf_step_calc =
        q_delta_calc >>> LP_RSHIFT;
    wire signed [16:0] i_next_ext_calc =
        i_lpf_state_calc + i_lpf_step_calc;
    wire signed [16:0] q_next_ext_calc =
        q_lpf_state_calc + q_lpf_step_calc;
    wire signed [15:0] i_next_calc = i_next_ext_calc[15:0];
    wire signed [15:0] q_next_calc = q_next_ext_calc[15:0];
    wire signed [16:0] q_next_wide_calc =
        {q_next_calc[15], q_next_calc};
    wire signed [16:0] phase_error_calc =
        i_next_calc[15] ? -q_next_wide_calc : q_next_wide_calc;
    wire [16:0] abs_i_calc = i_next_calc[15] ?
        -{i_next_calc[15], i_next_calc} : {1'b0, i_next_calc};
    wire [16:0] abs_q_calc = q_next_calc[15] ?
        -{q_next_calc[15], q_next_calc} : {1'b0, q_next_calc};
    wire phase_good_calc =
        (abs_i_calc >= {1'b0, MAG_GATE}) &&
        (abs_q_calc <= (abs_i_calc >> 2));

    // Stage 3: Q conversion, first-order LPF and phase detector.
    reg                         stage3_valid;
    reg signed [15:0]           i_next_pipe;
    reg signed [15:0]           q_next_pipe;
    reg signed [16:0]           phase_error_pipe;
    reg                         phase_good_pipe;

    wire signed [24:0] frequency_state_calc =
        {frequency_word[23], frequency_word};
    wire signed [24:0] integral_error_calc =
        {{8{phase_error_pipe[16]}}, phase_error_pipe};
    wire signed [24:0] integral_step_calc =
        integral_error_calc >>> KI_RSHIFT;
    wire signed [24:0] frequency_sum_calc =
        frequency_state_calc + integral_step_calc;
    reg signed [23:0] frequency_next_calc;
    always @* begin
        if (frequency_sum_calc > FREQ_LIMIT)
            frequency_next_calc = FREQ_LIMIT;
        else if (frequency_sum_calc < -FREQ_LIMIT)
            frequency_next_calc = -FREQ_LIMIT;
        else
            frequency_next_calc = frequency_sum_calc[23:0];
    end

    wire signed [30:0] error_extended_calc =
        {{14{phase_error_pipe[16]}}, phase_error_pipe};
    wire signed [30:0] proportional_calc =
        error_extended_calc <<< KP_LSHIFT;
    wire signed [30:0] frequency_extended_calc =
        {{7{frequency_next_calc[23]}}, frequency_next_calc};
    wire signed [30:0] phase_correction_calc =
        frequency_extended_calc + proportional_calc;

    // Stage 4: registered loop-filter results and sample decision.
    reg                         stage4_valid;
    reg signed [15:0]           i_commit_pipe;
    reg signed [15:0]           q_commit_pipe;
    reg signed [23:0]           frequency_commit_pipe;
    reg signed [30:0]           phase_correction_pipe;
    reg                         phase_good_commit_pipe;

    reg [9:0] lock_score;
    reg pipeline_busy;
    reg pipeline_overrun_sticky;
    wire accept_sample = in_valid && !pipeline_busy;

    always @(posedge aclk) begin
        if (!aresetn) begin
            stage0_valid           <= 1'b0;
            stage1_valid           <= 1'b0;
            stage2_valid           <= 1'b0;
            stage3_valid           <= 1'b0;
            stage4_valid           <= 1'b0;
            sample_i_pipe          <= 16'sd0;
            sample_q_pipe          <= 16'sd0;
            sine_pipe              <= 16'sd0;
            cosine_pipe            <= 16'sd0;
            product_ic_pipe        <= 32'sd0;
            product_qs_pipe        <= 32'sd0;
            product_qc_pipe        <= 32'sd0;
            product_is_pipe        <= 32'sd0;
            mix_i_full_pipe        <= 33'sd0;
            mix_q_full_pipe        <= 33'sd0;
            i_next_pipe            <= 16'sd0;
            q_next_pipe            <= 16'sd0;
            phase_error_pipe       <= 17'sd0;
            phase_good_pipe        <= 1'b0;
            i_commit_pipe          <= 16'sd0;
            q_commit_pipe          <= 16'sd0;
            frequency_commit_pipe  <= 24'sd0;
            phase_correction_pipe  <= 31'sd0;
            phase_good_commit_pipe <= 1'b0;
            i_recovered            <= 16'sd0;
            q_recovered            <= 16'sd0;
            out_valid              <= 1'b0;
            carrier_locked         <= 1'b0;
            phase_word             <= 24'd0;
            frequency_word         <= 24'sd0;
            lock_score             <= 10'd0;
            pipeline_busy          <= 1'b0;
            pipeline_overrun_sticky<= 1'b0;
        end else begin
            stage0_valid <= accept_sample;
            stage1_valid <= stage0_valid;
            stage2_valid <= stage1_valid;
            stage3_valid <= stage2_valid;
            stage4_valid <= stage3_valid;
            out_valid    <= stage4_valid;

            if (in_valid && pipeline_busy)
                pipeline_overrun_sticky <= 1'b1;

            if (accept_sample) begin
                sample_i_pipe <= s_i;
                sample_q_pipe <= s_q;
                sine_pipe     <= nco_sine;
                cosine_pipe   <= nco_cosine;
                pipeline_busy <= 1'b1;
            end

            if (stage0_valid) begin
                product_ic_pipe <= $signed(sample_i_pipe) * $signed(cosine_pipe);
                product_qs_pipe <= $signed(sample_q_pipe) * $signed(sine_pipe);
                product_qc_pipe <= $signed(sample_q_pipe) * $signed(cosine_pipe);
                product_is_pipe <= $signed(sample_i_pipe) * $signed(sine_pipe);
            end

            if (stage1_valid) begin
                mix_i_full_pipe <=
                    {product_ic_pipe[31], product_ic_pipe} +
                    {product_qs_pipe[31], product_qs_pipe};
                mix_q_full_pipe <=
                    {product_qc_pipe[31], product_qc_pipe} -
                    {product_is_pipe[31], product_is_pipe};
            end

            if (stage2_valid) begin
                i_next_pipe      <= i_next_calc;
                q_next_pipe      <= q_next_calc;
                phase_error_pipe <= phase_error_calc;
                phase_good_pipe  <= phase_good_calc;
            end

            if (stage3_valid) begin
                i_commit_pipe          <= i_next_pipe;
                q_commit_pipe          <= q_next_pipe;
                frequency_commit_pipe  <= frequency_next_calc;
                phase_correction_pipe  <= phase_correction_calc;
                phase_good_commit_pipe <= phase_good_pipe;
            end

            if (stage4_valid) begin
                i_recovered   <= i_commit_pipe;
                q_recovered   <= q_commit_pipe;
                frequency_word<= frequency_commit_pipe;
                phase_word    <= phase_word + phase_correction_pipe[23:0];
                pipeline_busy <= 1'b0;

                if (phase_good_commit_pipe) begin
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

