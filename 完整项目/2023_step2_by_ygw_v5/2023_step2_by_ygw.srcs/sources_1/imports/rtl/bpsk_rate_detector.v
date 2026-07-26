`timescale 1ns/1ps

// Classifies NRZ transition intervals against the contest's 6/8/10 kbps set.
//
// rate_code:
//   0 = unknown
//   1 = 6 kbps
//   2 = 8 kbps
//   3 = 10 kbps
//
// Timing architecture:
//   The recovered stream provides one accepted sample every 60 aclk cycles,
//   and a usable transition interval contains at least 70 accepted samples.
//   Therefore the eight candidate multiples are checked sequentially instead
//   of building three long combinational minimum-error trees.
//
//   IDLE -> PREPARE -> SCAN (8 cycles) -> SCORE -> CLASSIFY -> IDLE
//
//   This preserves the original thresholds and score algorithm while removing
//   the high-fanout interval-to-score/rate_code combinational path.
module bpsk_rate_detector (
    input  wire                    aclk,
    input  wire                    aresetn,
    input  wire signed [15:0]      i_recovered,
    input  wire                    in_valid,
    input  wire                    enable,
    output reg                     sample_valid,
    output reg                     hard_bit,
    output reg                     bit_transition,
    output reg  [1:0]              rate_code
);
    reg                            last_bit;
    reg                            have_bit;
    reg [15:0]                     interval;
    reg [7:0]                      score_6k;
    reg [7:0]                      score_8k;
    reg [7:0]                      score_10k;

    wire                           bit_now;
    wire                           transition_now;
    wire [15:0]                    span_now;
    wire                           span_usable;

    assign bit_now       = ~i_recovered[15];
    assign transition_now = have_bit && (bit_now != last_bit);
    assign span_now       = (interval == 16'hffff) ?
                            interval : interval + 1'b1;
    assign span_usable    = (span_now >= 16'd70) &&
                            (span_now <= 16'd1400);

    function [17:0] absolute_difference;
        input [17:0] a;
        input [17:0] b;
        begin
            absolute_difference = (a >= b) ? (a - b) : (b - a);
        end
    endfunction

    function [7:0] score_update;
        input [7:0] score;
        input       hit;
        begin
            if (hit)
                score_update = (score >= 8'd251) ?
                               8'd255 : score + 3'd4;
            else
                score_update = (score == 0) ?
                               8'd0 : score - 1'b1;
        end
    endfunction

    localparam [2:0] WORK_IDLE     = 3'd0;
    localparam [2:0] WORK_PREPARE  = 3'd1;
    localparam [2:0] WORK_SCAN     = 3'd2;
    localparam [2:0] WORK_SCORE    = 3'd3;
    localparam [2:0] WORK_CLASSIFY = 3'd4;

    reg [2:0]                      work_state;
    reg [2:0]                      candidate_index;

    // The captured interval is isolated from the comparison datapath.  The
    // x3 operation for the 6 kbps test is performed in the PREPARE stage.
    reg [15:0]                     captured_span;
    reg [17:0]                     value_6k;
    reg [17:0]                     value_common;

    reg [17:0]                     target_6k;
    reg [17:0]                     target_8k;
    reg [17:0]                     target_10k;

    reg                            hit_accum_6k;
    reg                            hit_accum_8k;
    reg                            hit_accum_10k;
    reg                            hit_result_6k;
    reg                            hit_result_8k;
    reg                            hit_result_10k;

    // Only one subtract/compare is present in each rate path during SCAN.
    wire [17:0]                    candidate_error_6k;
    wire [17:0]                    candidate_error_8k;
    wire [17:0]                    candidate_error_10k;
    wire                           candidate_hit_6k;
    wire                           candidate_hit_8k;
    wire                           candidate_hit_10k;

    assign candidate_error_6k =
        absolute_difference(value_6k, target_6k);
    assign candidate_error_8k =
        absolute_difference(value_common, target_8k);
    assign candidate_error_10k =
        absolute_difference(value_common, target_10k);

    assign candidate_hit_6k  = (candidate_error_6k  <= 18'd24);
    assign candidate_hit_8k  = (candidate_error_8k  <= 18'd8);
    assign candidate_hit_10k = (candidate_error_10k <= 18'd8);

    // SCORE is a separate pipeline stage.
    wire [7:0]                    score_6k_updated;
    wire [7:0]                    score_8k_updated;
    wire [7:0]                    score_10k_updated;

    assign score_6k_updated  = score_update(score_6k,  hit_result_6k);
    assign score_8k_updated  = score_update(score_8k,  hit_result_8k);
    assign score_10k_updated = score_update(score_10k, hit_result_10k);

    // CLASSIFY uses the registered scores from the preceding SCORE stage.
    reg [1:0]                     best_code;
    reg [7:0]                     best_score;
    reg [7:0]                     second_score;
    reg [7:0]                     current_score;

    always @* begin
        if ((score_6k >= score_8k) &&
            (score_6k >= score_10k)) begin
            best_code    = 2'd1;
            best_score   = score_6k;
            second_score = (score_8k >= score_10k) ?
                           score_8k : score_10k;
        end else if (score_8k >= score_10k) begin
            best_code    = 2'd2;
            best_score   = score_8k;
            second_score = (score_6k >= score_10k) ?
                           score_6k : score_10k;
        end else begin
            best_code    = 2'd3;
            best_score   = score_10k;
            second_score = (score_6k >= score_8k) ?
                           score_6k : score_8k;
        end

        case (rate_code)
            2'd1: current_score = score_6k;
            2'd2: current_score = score_8k;
            2'd3: current_score = score_10k;
            default: current_score = 8'd0;
        endcase
    end

    // Widen the hysteresis addition so values above 243 cannot wrap at 8 bits.
    wire [8:0] current_score_plus_12;
    assign current_score_plus_12 = {1'b0, current_score} + 9'd12;

    always @(posedge aclk) begin
        if (!aresetn || !enable) begin
            sample_valid     <= 1'b0;
            hard_bit         <= 1'b0;
            bit_transition   <= 1'b0;
            rate_code        <= 2'd0;
            last_bit         <= 1'b0;
            have_bit         <= 1'b0;
            interval         <= 16'd0;
            score_6k         <= 8'd0;
            score_8k         <= 8'd0;
            score_10k        <= 8'd0;
            work_state       <= WORK_IDLE;
            candidate_index  <= 3'd0;
            captured_span    <= 16'd0;
            value_6k         <= 18'd0;
            value_common     <= 18'd0;
            target_6k        <= 18'd500;
            target_8k        <= 18'd125;
            target_10k       <= 18'd100;
            hit_accum_6k     <= 1'b0;
            hit_accum_8k     <= 1'b0;
            hit_accum_10k    <= 1'b0;
            hit_result_6k    <= 1'b0;
            hit_result_8k    <= 1'b0;
            hit_result_10k   <= 1'b0;
        end else begin
            sample_valid   <= in_valid;
            bit_transition <= 1'b0;

            // Multi-cycle rate-evaluation engine.
            case (work_state)
                WORK_IDLE: begin
                    // A usable transition starts the engine below.
                end

                WORK_PREPARE: begin
                    value_6k <=
                        {2'b0, captured_span} +
                        ({2'b0, captured_span} << 1);
                    value_common    <= {2'b0, captured_span};
                    target_6k       <= 18'd500;
                    target_8k       <= 18'd125;
                    target_10k      <= 18'd100;
                    candidate_index <= 3'd0;
                    hit_accum_6k    <= 1'b0;
                    hit_accum_8k    <= 1'b0;
                    hit_accum_10k   <= 1'b0;
                    work_state      <= WORK_SCAN;
                end

                WORK_SCAN: begin
                    hit_accum_6k  <= hit_accum_6k  | candidate_hit_6k;
                    hit_accum_8k  <= hit_accum_8k  | candidate_hit_8k;
                    hit_accum_10k <= hit_accum_10k | candidate_hit_10k;

                    if (candidate_index == 3'd7) begin
                        // Include candidate 7 explicitly because the accumulator
                        // updates above take effect after this clock edge.
                        hit_result_6k  <=
                            hit_accum_6k | candidate_hit_6k;
                        hit_result_8k  <=
                            hit_accum_8k | candidate_hit_8k;
                        hit_result_10k <=
                            hit_accum_10k | candidate_hit_10k;
                        work_state <= WORK_SCORE;
                    end else begin
                        candidate_index <= candidate_index + 1'b1;
                        target_6k       <= target_6k  + 18'd500;
                        target_8k       <= target_8k  + 18'd125;
                        target_10k      <= target_10k + 18'd100;
                    end
                end

                WORK_SCORE: begin
                    score_6k  <= score_6k_updated;
                    score_8k  <= score_8k_updated;
                    score_10k <= score_10k_updated;
                    work_state <= WORK_CLASSIFY;
                end

                WORK_CLASSIFY: begin
                    if ((best_score >= 8'd24) &&
                        ((best_score - second_score) >= 8'd8))
                        rate_code <= best_code;
                    else if ((rate_code != 0) &&
                             (current_score_plus_12 <
                              {1'b0, best_score}))
                        rate_code <= best_code;
                    work_state <= WORK_IDLE;
                end

                default: begin
                    work_state <= WORK_IDLE;
                end
            endcase

            // Keep the sample/transition outputs aligned with recovered_valid.
            // The classification engine runs independently in the idle aclk
            // cycles between accepted samples.
            if (in_valid) begin
                hard_bit <= bit_now;

                if (!have_bit) begin
                    last_bit <= bit_now;
                    have_bit <= 1'b1;
                    interval <= 16'd0;
                end else if (transition_now) begin
                    last_bit       <= bit_now;
                    interval       <= 16'd0;
                    bit_transition <= 1'b1;

                    if (span_usable && (work_state == WORK_IDLE)) begin
                        captured_span <= span_now;
                        work_state    <= WORK_PREPARE;
                    end
                end else begin
                    interval <= span_now;
                end
            end
        end
    end
endmodule
