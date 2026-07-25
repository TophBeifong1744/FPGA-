`timescale 1ns/1ps

// Classifies NRZ transition intervals against the contest's 6/8/10 kbps set.
// rate_code: 0=unknown, 1=6 kbps, 2=8 kbps, 3=10 kbps.
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
    reg last_bit;
    reg have_bit;
    reg [15:0] interval;
    reg [7:0] score_6k;
    reg [7:0] score_8k;
    reg [7:0] score_10k;

    wire bit_now = ~i_recovered[15];
    wire transition_now = have_bit && (bit_now != last_bit);
    wire [15:0] span_now = (interval == 16'hffff) ? interval : interval + 1'b1;
    wire span_usable = (span_now >= 16'd70) && (span_now <= 16'd1400);
    wire [17:0] span_times_3 = {2'b0, span_now} + ({2'b0, span_now} << 1);

    function [17:0] absolute_difference;
        input [17:0] a;
        input [17:0] b;
        begin
            absolute_difference = (a >= b) ? (a - b) : (b - a);
        end
    endfunction

    function [17:0] min_error_6k;
        input [17:0] value;
        reg [17:0] best;
        reg [17:0] trial;
        begin
            best=absolute_difference(value,18'd500);
            trial=absolute_difference(value,18'd1000); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd1500); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd2000); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd2500); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd3000); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd3500); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd4000); if(trial<best) best=trial;
            min_error_6k=best;
        end
    endfunction

    function [17:0] min_error_8k;
        input [17:0] value;
        reg [17:0] best;
        reg [17:0] trial;
        begin
            best=absolute_difference(value,18'd125);
            trial=absolute_difference(value,18'd250); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd375); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd500); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd625); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd750); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd875); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd1000); if(trial<best) best=trial;
            min_error_8k=best;
        end
    endfunction

    function [17:0] min_error_10k;
        input [17:0] value;
        reg [17:0] best;
        reg [17:0] trial;
        begin
            best=absolute_difference(value,18'd100);
            trial=absolute_difference(value,18'd200); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd300); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd400); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd500); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd600); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd700); if(trial<best) best=trial;
            trial=absolute_difference(value,18'd800); if(trial<best) best=trial;
            min_error_10k=best;
        end
    endfunction

    wire [17:0] error_6k = min_error_6k(span_times_3);
    wire [17:0] error_8k = min_error_8k({2'b0,span_now});
    wire [17:0] error_10k = min_error_10k({2'b0,span_now});
    wire hit_6k = error_6k <= 18'd24;
    wire hit_8k = error_8k <= 18'd8;
    wire hit_10k = error_10k <= 18'd8;

    function [7:0] score_update;
        input [7:0] score;
        input hit;
        begin
            if (hit)
                score_update = (score >= 8'd251) ? 8'd255 : score + 3'd4;
            else
                score_update = (score == 0) ? 8'd0 : score - 1'b1;
        end
    endfunction

    wire [7:0] score_6k_next = score_update(score_6k, hit_6k);
    wire [7:0] score_8k_next = score_update(score_8k, hit_8k);
    wire [7:0] score_10k_next = score_update(score_10k, hit_10k);
    reg [1:0] best_code;
    reg [7:0] best_score;
    reg [7:0] second_score;
    reg [7:0] current_score;
    always @* begin
        if ((score_6k_next >= score_8k_next) &&
            (score_6k_next >= score_10k_next)) begin
            best_code = 2'd1;
            best_score = score_6k_next;
            second_score = (score_8k_next >= score_10k_next) ?
                           score_8k_next : score_10k_next;
        end else if (score_8k_next >= score_10k_next) begin
            best_code = 2'd2;
            best_score = score_8k_next;
            second_score = (score_6k_next >= score_10k_next) ?
                           score_6k_next : score_10k_next;
        end else begin
            best_code = 2'd3;
            best_score = score_10k_next;
            second_score = (score_6k_next >= score_8k_next) ?
                           score_6k_next : score_8k_next;
        end
        case (rate_code)
            2'd1: current_score = score_6k_next;
            2'd2: current_score = score_8k_next;
            2'd3: current_score = score_10k_next;
            default: current_score = 8'd0;
        endcase
    end

    always @(posedge aclk) begin
        if (!aresetn || !enable) begin
            sample_valid  <= 1'b0;
            hard_bit      <= 1'b0;
            bit_transition<= 1'b0;
            rate_code     <= 2'd0;
            last_bit      <= 1'b0;
            have_bit      <= 1'b0;
            interval      <= 16'd0;
            score_6k      <= 8'd0;
            score_8k      <= 8'd0;
            score_10k     <= 8'd0;
        end else begin
            sample_valid   <= in_valid;
            bit_transition <= 1'b0;
            if (in_valid) begin
                hard_bit <= bit_now;
                if (!have_bit) begin
                    last_bit <= bit_now;
                    have_bit <= 1'b1;
                    interval <= 16'd0;
                end else if (transition_now) begin
                    last_bit <= bit_now;
                    interval <= 16'd0;
                    bit_transition <= 1'b1;
                    if (span_usable) begin
                        score_6k  <= score_6k_next;
                        score_8k  <= score_8k_next;
                        score_10k <= score_10k_next;
                        if ((best_score >= 8'd24) &&
                            ((best_score - second_score) >= 8'd8))
                            rate_code <= best_code;
                        else if ((rate_code != 0) &&
                                 ((current_score + 8'd12) < best_score))
                            rate_code <= best_code;
                    end
                end else begin
                    interval <= span_now;
                end
            end
        end
    end
endmodule

