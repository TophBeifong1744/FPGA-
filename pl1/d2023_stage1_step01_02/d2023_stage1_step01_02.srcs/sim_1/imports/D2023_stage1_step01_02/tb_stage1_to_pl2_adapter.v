`timescale 1ns/1ps
`default_nettype none

module tb_stage1_to_pl2_adapter;

    reg clk;
    reg rst_n;

    reg signed [31:0] in_i;
    reg signed [31:0] in_q;
    reg               in_valid;
    wire              in_ready;

    wire signed [15:0] out_i;
    wire signed [15:0] out_q;
    wire               out_valid;
    reg                out_ready;

    wire [4:0] fifo_level;
    wire       overflow_sticky;

    integer error_count;
    integer expected_write_index;
    integer expected_read_index;

    integer expected_i [0:31];
    integer expected_q [0:31];

    integer held_i;
    integer held_q;
    integer loop_index;

    always #8.333333 clk = ~clk;

    stage1_to_pl2_adapter #(
        .SCALE_SHIFT (11),
        .FIFO_ADDR_W (4)
    ) u_adapter (
        .clk             (clk),
        .rst_n           (rst_n),

        .in_i            (in_i),
        .in_q            (in_q),
        .in_valid        (in_valid),
        .in_ready        (in_ready),

        .out_i           (out_i),
        .out_q           (out_q),
        .out_valid       (out_valid),
        .out_ready       (out_ready),

        .fifo_level      (fifo_level),
        .overflow_sticky (overflow_sticky)
    );

    always @(posedge clk) begin
        if (rst_n && out_valid && out_ready) begin
            if (expected_read_index >= expected_write_index) begin
                $display("[TB-ERROR] Unexpected output handshake.");
                error_count = error_count + 1;
            end
            else begin
                if ($signed(out_i) != expected_i[expected_read_index]) begin
                    $display(
                        "[TB-ERROR] I mismatch at %0d: got=%0d expected=%0d",
                        expected_read_index,
                        $signed(out_i),
                        expected_i[expected_read_index]
                    );
                    error_count = error_count + 1;
                end

                if ($signed(out_q) != expected_q[expected_read_index]) begin
                    $display(
                        "[TB-ERROR] Q mismatch at %0d: got=%0d expected=%0d",
                        expected_read_index,
                        $signed(out_q),
                        expected_q[expected_read_index]
                    );
                    error_count = error_count + 1;
                end

                expected_read_index = expected_read_index + 1;
            end
        end
    end

    task send_sample;
        input integer raw_i;
        input integer raw_q;
        input integer expected_scaled_i;
        input integer expected_scaled_q;

        begin
            expected_i[expected_write_index] = expected_scaled_i;
            expected_q[expected_write_index] = expected_scaled_q;
            expected_write_index = expected_write_index + 1;

            @(negedge clk);
            while (!in_ready)
                @(negedge clk);

            in_i     = raw_i;
            in_q     = raw_q;
            in_valid = 1'b1;

            @(negedge clk);
            in_valid = 1'b0;
            in_i     = 32'sd0;
            in_q     = 32'sd0;
        end
    endtask

    initial begin
        clk                  = 1'b0;
        rst_n                = 1'b0;
        in_i                 = 32'sd0;
        in_q                 = 32'sd0;
        in_valid             = 1'b0;
        out_ready            = 1'b0;

        error_count          = 0;
        expected_write_index = 0;
        expected_read_index  = 0;

        repeat (8) @(posedge clk);
        @(negedge clk);
        rst_n     = 1'b1;
        out_ready = 1'b1;

        //------------------------------------------------------------------
        // Scaling, rounding and saturation
        //------------------------------------------------------------------
        send_sample( 11057267,          0,   5399,      0);
        send_sample( 17691317,  -11057267,   8638,  -5399);
        send_sample(-11057267,   17691317,  -5399,   8638);
        send_sample(100000000, -100000000,  16383, -16384);
        send_sample(-100000000, 100000000, -16384,  16383);

        wait (expected_read_index == 5);
        repeat (2) @(posedge clk);

        //------------------------------------------------------------------
        // Backpressure: data and valid must remain stable.
        //------------------------------------------------------------------
        @(negedge clk);
        out_ready = 1'b0;

        send_sample( 4420215, -4420215,  2158, -2158);
        send_sample(       0,        0,     0,     0);
        send_sample(    2048,    -2048,     1,    -1);
        send_sample(   -4096,     4096,    -2,     2);

        repeat (2) @(posedge clk);

        if (!out_valid) begin
            $display("[TB-ERROR] out_valid is low during FIFO stall.");
            error_count = error_count + 1;
        end

        held_i = $signed(out_i);
        held_q = $signed(out_q);

        for (loop_index = 0; loop_index < 6; loop_index = loop_index + 1) begin
            @(posedge clk);
            #1;

            if (!out_valid) begin
                $display("[TB-ERROR] out_valid changed during stall.");
                error_count = error_count + 1;
            end

            if (($signed(out_i) != held_i) ||
                ($signed(out_q) != held_q)) begin
                $display("[TB-ERROR] I/Q changed while out_ready=0.");
                error_count = error_count + 1;
            end
        end

        @(negedge clk);
        out_ready = 1'b1;

        wait (expected_read_index == expected_write_index);
        repeat (3) @(posedge clk);

        if (fifo_level != 0) begin
            $display(
                "[TB-ERROR] FIFO is not empty, level=%0d",
                fifo_level
            );
            error_count = error_count + 1;
        end

        if (overflow_sticky) begin
            $display("[TB-ERROR] FIFO overflow occurred.");
            error_count = error_count + 1;
        end

        if (error_count == 0)
            $display(
                "[TB-PASS] Stage1-to-PL2 adapter scaling/FIFO test passed."
            );
        else
            $display(
                "[TB-FAIL] Adapter test failed, error_count=%0d",
                error_count
            );

        $finish;
    end

    initial begin
        #200000;
        $display("[TB-FAIL] Adapter test timeout.");
        $finish;
    end

endmodule

`default_nettype wire
