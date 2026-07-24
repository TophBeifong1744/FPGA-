`timescale 1ns/1ps
`default_nettype none

module tb_ddc_stage1_top;

    localparam integer CLK_FREQ_HZ    = 60000000;
    localparam integer TARGET_OUTPUTS = 18;

    localparam real HALF_CLK_PERIOD_NS =
        1.0e9 / (2.0 * CLK_FREQ_HZ);

    reg clk;
    reg rst_n;
    reg source_enable;
    reg sample_restart;

    reg [1:0]  signal_mode;
    reg [31:0] mod_freq_hz;
    reg [31:0] am_index_milli;
    reg [31:0] fm_index_milli;

    wire signed [13:0] adc_data;
    wire               adc_valid;

    wire signed [31:0] baseband_i;
    wire signed [31:0] baseband_q;
    wire               baseband_valid;

    integer csv_fd;

    integer epoch;
    integer capture_done;
    integer output_count;
    integer cumulative_adc_valid;
    integer last_output_adc_count;
    integer interval_check_count;
    integer exact_check_count;
    integer steady_check_count;
    integer global_error_count;
    integer current_interval;

    reg previous_baseband_valid;

    always #(HALF_CLK_PERIOD_NS) clk = ~clk;

    //------------------------------------------------------------------
    // Testbench-only 2 MHz, 100 mVpp CW source
    //------------------------------------------------------------------
    adc_signal_source #(
        .ADC_BITS             (14),
        .SAMPLE_RATE_HZ       (60000000),
        .CARRIER_FREQ_HZ      (2000000),
        .ADC_FULL_SCALE_PEAK_V(0.5),
        .CARRIER_PEAK_V       (0.05),
        .INITIAL_PHASE_RAD    (0.0)
    ) u_adc_signal_source (
        .clk             (clk),
        .rst_n           (rst_n),
        .enable          (source_enable),
        .sample_restart  (sample_restart),
        .signal_mode     (signal_mode),
        .mod_freq_hz     (mod_freq_hz),
        .am_index_milli  (am_index_milli),
        .fm_index_milli  (fm_index_milli),
        .adc_data        (adc_data),
        .adc_valid       (adc_valid)
    );

    //------------------------------------------------------------------
    // Step07 synthesizable top
    //------------------------------------------------------------------
    ddc_stage1_top u_ddc_stage1_top (
        .clk            (clk),
        .rst_n          (rst_n),
        .adc_data       (adc_data),
        .adc_valid      (adc_valid),
        .baseband_i     (baseband_i),
        .baseband_q     (baseband_q),
        .baseband_valid (baseband_valid)
    );

    //------------------------------------------------------------------
    // Fixed-point reference sequence inherited from Step06
    //------------------------------------------------------------------
    function signed [31:0] expected_i;
        input [4:0] index;
        begin
            case (index)
            5'd0: expected_i = 32'sd9336;
            5'd1: expected_i = 32'sd73096;
            5'd2: expected_i = 32'sd48998;
            5'd3: expected_i = -32'sd416132;
            5'd4: expected_i = -32'sd542301;
            5'd5: expected_i = 32'sd1817269;
            5'd6: expected_i = 32'sd6694062;
            5'd7: expected_i = 32'sd10709720;
            5'd8: expected_i = 32'sd11718763;
            5'd9: expected_i = 32'sd11211909;
            5'd10: expected_i = 32'sd10959543;
            5'd11: expected_i = 32'sd11020036;
            5'd12: expected_i = 32'sd11055874;
            5'd13: expected_i = 32'sd11057267;
            5'd14: expected_i = 32'sd11057267;
            5'd15: expected_i = 32'sd11057267;
            5'd16: expected_i = 32'sd11057267;
            5'd17: expected_i = 32'sd11057267;
                default: expected_i = 32'sd0;
            endcase
        end
    endfunction

    function signed [31:0] expected_q;
        input [4:0] index;
        begin
            case (index)
            5'd0: expected_q = -32'sd1140;
            5'd1: expected_q = -32'sd3179;
            5'd2: expected_q = 32'sd8103;
            5'd3: expected_q = 32'sd23730;
            5'd4: expected_q = -32'sd28838;
            5'd5: expected_q = -32'sd154043;
            5'd6: expected_q = -32'sd201130;
            5'd7: expected_q = -32'sd101140;
            5'd8: expected_q = 32'sd5712;
            5'd9: expected_q = 32'sd20692;
            5'd10: expected_q = 32'sd842;
            5'd11: expected_q = -32'sd2868;
            5'd12: expected_q = -32'sd321;
            5'd13: expected_q = 32'sd0;
            5'd14: expected_q = 32'sd0;
            5'd15: expected_q = 32'sd0;
            5'd16: expected_q = 32'sd0;
            5'd17: expected_q = 32'sd0;
                default: expected_q = 32'sd0;
            endcase
        end
    endfunction

    //------------------------------------------------------------------
    // Automatic checks
    //------------------------------------------------------------------
    always @(negedge clk) begin
        if (!rst_n) begin
            capture_done            = 0;
            output_count            = 0;
            cumulative_adc_valid    = 0;
            last_output_adc_count   = -1;
            interval_check_count    = 0;
            exact_check_count       = 0;
            steady_check_count      = 0;
            previous_baseband_valid = 1'b0;
        end
        else begin
            if (adc_valid)
                cumulative_adc_valid = cumulative_adc_valid + 1;

            // baseband_valid must be a single-clock pulse.
            if (baseband_valid && previous_baseband_valid) begin
                $display(
                    "[TB-ERROR] baseband_valid stayed high for more than one clock."
                );
                global_error_count = global_error_count + 1;
            end

            previous_baseband_valid = baseband_valid;

            if (baseband_valid && !capture_done) begin
                if ((^baseband_i === 1'bx) ||
                    (^baseband_q === 1'bx)) begin
                    $display(
                        "[TB-ERROR] X/Z detected at output %0d.",
                        output_count
                    );
                    global_error_count = global_error_count + 1;
                end

                // Overall decimation is 30 × 2 = 60.
                if (last_output_adc_count >= 0) begin
                    current_interval =
                        cumulative_adc_valid - last_output_adc_count;

                    if (current_interval != 60) begin
                        $display(
                            "[TB-ERROR] Overall interval=%0d, expected=60.",
                            current_interval
                        );
                        global_error_count = global_error_count + 1;
                    end

                    interval_check_count = interval_check_count + 1;
                end

                last_output_adc_count = cumulative_adc_valid;

                if (baseband_i !== expected_i(output_count[4:0])) begin
                    $display(
                        "[TB-ERROR] I mismatch at output %0d: got=%0d expected=%0d",
                        output_count,
                        $signed(baseband_i),
                        $signed(expected_i(output_count[4:0]))
                    );
                    global_error_count = global_error_count + 1;
                end

                if (baseband_q !== expected_q(output_count[4:0])) begin
                    $display(
                        "[TB-ERROR] Q mismatch at output %0d: got=%0d expected=%0d",
                        output_count,
                        $signed(baseband_q),
                        $signed(expected_q(output_count[4:0]))
                    );
                    global_error_count = global_error_count + 1;
                end

                exact_check_count = exact_check_count + 1;

                // Output index 13 and later are steady-state CW.
                if (output_count >= 13) begin
                    if (baseband_i !== 32'sd11057267) begin
                        $display(
                            "[TB-ERROR] Steady I mismatch at output %0d.",
                            output_count
                        );
                        global_error_count = global_error_count + 1;
                    end

                    if (baseband_q !== 32'sd0) begin
                        $display(
                            "[TB-ERROR] Steady Q mismatch at output %0d.",
                            output_count
                        );
                        global_error_count = global_error_count + 1;
                    end

                    steady_check_count = steady_check_count + 1;
                end

                $fwrite(
                    csv_fd,
                    "%0t,%0d,%0d,%0d,%0d,%0d\n",
                    $time,
                    epoch,
                    output_count,
                    cumulative_adc_valid,
                    $signed(baseband_i),
                    $signed(baseband_q)
                );

                output_count = output_count + 1;

                if (output_count >= TARGET_OUTPUTS)
                    capture_done = 1;
            end
        end
    end

    task check_epoch;
        input integer epoch_number;
        begin
            $display(
                "[TB] epoch=%0d outputs=%0d interval_checks=%0d exact_checks=%0d steady_checks=%0d",
                epoch_number,
                output_count,
                interval_check_count,
                exact_check_count,
                steady_check_count
            );

            $display(
                "[TB] epoch=%0d final_i=%0d final_q=%0d adc_valids=%0d",
                epoch_number,
                $signed(baseband_i),
                $signed(baseband_q),
                cumulative_adc_valid
            );

            if (output_count != TARGET_OUTPUTS) begin
                $display("[TB-ERROR] Output count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (interval_check_count != (TARGET_OUTPUTS-1)) begin
                $display("[TB-ERROR] Interval check count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (exact_check_count != TARGET_OUTPUTS) begin
                $display("[TB-ERROR] Exact check count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (steady_check_count != (TARGET_OUTPUTS-13)) begin
                $display("[TB-ERROR] Steady check count mismatch.");
                global_error_count = global_error_count + 1;
            end
        end
    endtask

    task run_epoch;
        input integer epoch_number;
        begin
            rst_n          = 1'b0;
            source_enable  = 1'b0;
            sample_restart = 1'b0;
            epoch          = epoch_number;

            repeat (12) @(posedge clk);

            @(negedge clk);
            rst_n         = 1'b1;
            source_enable = 1'b1;

            wait (capture_done == 1);
            @(negedge clk);

            check_epoch(epoch_number);

            source_enable = 1'b0;
            repeat (4) @(posedge clk);
        end
    endtask

    initial begin
        clk                = 1'b0;
        rst_n              = 1'b0;
        source_enable      = 1'b0;
        sample_restart     = 1'b0;
        signal_mode        = 2'd0; // CW
        mod_freq_hz        = 32'd0;
        am_index_milli     = 32'd600;
        fm_index_milli     = 32'd3000;
        epoch              = 0;
        capture_done       = 0;
        global_error_count = 0;

        csv_fd = $fopen("step07_top_samples.csv", "w");
        if (csv_fd == 0) begin
            $display("[TB-FAIL] Cannot create step07_top_samples.csv");
            $finish;
        end

        $fwrite(
            csv_fd,
            "time_ps,epoch,output_index,adc_valid_count,baseband_i,baseband_q\n"
        );

        run_epoch(0);
        run_epoch(1);

        $fclose(csv_fd);

        if (global_error_count == 0)
            $display("[TB-PASS] Step07 DDC stage1 top CW smoke test passed.");
        else
            $display(
                "[TB-FAIL] Step07 failed, error_count=%0d",
                global_error_count
            );

        $finish;
    end

    initial begin
        #60000;
        $display("[TB-FAIL] Timeout at 60 us.");
        $finish;
    end

endmodule

`default_nettype wire
