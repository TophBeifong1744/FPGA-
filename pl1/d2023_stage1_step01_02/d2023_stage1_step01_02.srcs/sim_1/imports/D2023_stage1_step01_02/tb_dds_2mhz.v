`timescale 1ns/1ps
`default_nettype none

module tb_dds_2mhz;

    localparam integer CLK_FREQ_HZ      = 60000000;
    localparam integer VALID_PER_EPOCH  = 600;

    localparam real HALF_CLK_PERIOD_NS =
        1.0e9 / (2.0 * CLK_FREQ_HZ);

    reg clk;
    reg rst_n;

    wire signed [15:0] lo_cos;
    wire signed [15:0] lo_neg_sin;
    wire lo_valid;

    integer csv_fd;
    integer epoch;
    integer epoch_valid_count;
    integer total_valid_count;
    integer prev_cos;
    integer have_prev;
    integer last_pos_cross;
    integer pos_cross_count;
    integer neg_cross_count;
    integer period_check_count;
    integer error_count;
    integer cos_max;
    integer cos_min;
    integer negsin_max;
    integer negsin_min;
    integer current_period;

    always #(HALF_CLK_PERIOD_NS) clk = ~clk;

    dds_2mhz_wrapper u_dds_wrapper (
        .clk         (clk),
        .rst_n       (rst_n),
        .lo_cos      (lo_cos),
        .lo_neg_sin  (lo_neg_sin),
        .lo_valid    (lo_valid)
    );

    always @(negedge clk) begin
        if (!rst_n) begin
            epoch_valid_count  = 0;
            have_prev          = 0;
            prev_cos           = 0;
            last_pos_cross     = -1;
            pos_cross_count    = 0;
            neg_cross_count    = 0;
            period_check_count = 0;
            cos_max            = -32768;
            cos_min            =  32767;
            negsin_max         = -32768;
            negsin_min         =  32767;
        end
        else if (lo_valid) begin
            if ((^lo_cos === 1'bx) || (^lo_neg_sin === 1'bx)) begin
                $display("[TB-ERROR] X/Z detected at time %0t", $time);
                error_count = error_count + 1;
            end

            $fwrite(
                csv_fd,
                "%0t,%0d,%0d,%0d,%0d\n",
                $time,
                epoch,
                epoch_valid_count,
                $signed(lo_cos),
                $signed(lo_neg_sin)
            );

            if ($signed(lo_cos) > cos_max)
                cos_max = $signed(lo_cos);
            if ($signed(lo_cos) < cos_min)
                cos_min = $signed(lo_cos);
            if ($signed(lo_neg_sin) > negsin_max)
                negsin_max = $signed(lo_neg_sin);
            if ($signed(lo_neg_sin) < negsin_min)
                negsin_min = $signed(lo_neg_sin);

            if (have_prev) begin
                // cos由负变正时，-sin应接近正峰值
                if ((prev_cos < 0) && ($signed(lo_cos) >= 0)) begin
                    pos_cross_count = pos_cross_count + 1;

                    if ($signed(lo_neg_sin) < 10000) begin
                        $display(
                            "[TB-ERROR] Wrong -sin sign at positive crossing: %0d",
                            $signed(lo_neg_sin)
                        );
                        error_count = error_count + 1;
                    end

                    if (last_pos_cross >= 0) begin
                        current_period = epoch_valid_count - last_pos_cross;
                        period_check_count = period_check_count + 1;

                        if (current_period != 30) begin
                            $display(
                                "[TB-ERROR] Period is %0d samples, expected 30",
                                current_period
                            );
                            error_count = error_count + 1;
                        end
                    end

                    last_pos_cross = epoch_valid_count;
                end

                // cos由正变负时，-sin应接近负峰值
                if ((prev_cos >= 0) && ($signed(lo_cos) < 0)) begin
                    neg_cross_count = neg_cross_count + 1;

                    if ($signed(lo_neg_sin) > -10000) begin
                        $display(
                            "[TB-ERROR] Wrong -sin sign at negative crossing: %0d",
                            $signed(lo_neg_sin)
                        );
                        error_count = error_count + 1;
                    end
                end
            end

            prev_cos = $signed(lo_cos);
            have_prev = 1;
            epoch_valid_count = epoch_valid_count + 1;
            total_valid_count = total_valid_count + 1;
        end
    end

    task check_epoch;
        input integer epoch_number;
        begin
            $display(
                "[TB] epoch=%0d valid=%0d pos_cross=%0d neg_cross=%0d period_checks=%0d",
                epoch_number,
                epoch_valid_count,
                pos_cross_count,
                neg_cross_count,
                period_check_count
            );

            $display(
                "[TB] epoch=%0d cos_range=%0d..%0d negsin_range=%0d..%0d",
                epoch_number,
                cos_min,
                cos_max,
                negsin_min,
                negsin_max
            );

            if (epoch_valid_count < VALID_PER_EPOCH) begin
                $display("[TB-ERROR] Not enough valid samples.");
                error_count = error_count + 1;
            end

            if (period_check_count < 10) begin
                $display("[TB-ERROR] Not enough complete periods.");
                error_count = error_count + 1;
            end

            if (
                (cos_max < 32000) ||
                (cos_min > -32000) ||
                (negsin_max < 32000) ||
                (negsin_min > -32000)
            ) begin
                $display("[TB-ERROR] Output amplitude is too low.");
                error_count = error_count + 1;
            end
        end
    endtask

    initial begin
        clk               = 1'b0;
        rst_n             = 1'b0;
        epoch             = 0;
        epoch_valid_count = 0;
        total_valid_count = 0;
        error_count       = 0;

        csv_fd = $fopen("dds_2mhz_samples.csv", "w");
        if (csv_fd == 0) begin
            $display("[TB-FAIL] Cannot create dds_2mhz_samples.csv");
            $finish;
        end

        $fwrite(csv_fd, "time_ps,epoch,sample_index,lo_cos,lo_neg_sin\n");

        repeat (20) @(posedge clk);
        @(negedge clk);
        rst_n = 1'b1;

        wait (epoch_valid_count >= VALID_PER_EPOCH);
        @(negedge clk);
        check_epoch(0);

        rst_n = 1'b0;
        repeat (10) @(posedge clk);

        @(negedge clk);
        epoch = 1;
        rst_n = 1'b1;

        wait (epoch_valid_count >= VALID_PER_EPOCH);
        @(negedge clk);
        check_epoch(1);

        $fclose(csv_fd);

        $display("[TB] total_valid_samples=%0d", total_valid_count);

        if (error_count == 0)
            $display("[TB-PASS] Step03 fixed LUT-NCO 2 MHz quadrature simulation passed.");
        else
            $display("[TB-FAIL] Step03 failed, error_count=%0d", error_count);

        $finish;
    end

    initial begin
        #50000;
        $display("[TB-FAIL] Timeout at 50 us.");
        $finish;
    end

endmodule

`default_nettype wire
