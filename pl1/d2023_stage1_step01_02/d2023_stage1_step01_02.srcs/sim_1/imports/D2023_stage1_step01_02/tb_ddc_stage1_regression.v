`timescale 1ns/1ps
`default_nettype none

//======================================================================
// 2023 电赛 D 题：第一级步骤8
// 完整CW / AM / FM顶层回归Testbench
//
// 测试参数：
//   CW：0.2 ms，捕获200个1 MHz基带输出
//   AM：F=1 kHz，ma=0.6，3 ms，捕获3000个输出
//   FM：F=5 kHz，mf=3，1 ms，捕获1000个输出
//
// 每种模式复位完整DDC链路，先丢弃64个基带输出作为启动过渡，
// 再开始正式捕获和统计。
//======================================================================

module tb_ddc_stage1_regression;

    localparam integer CLK_FREQ_HZ = 60000000;

    localparam [1:0] MODE_CW = 2'd0;
    localparam [1:0] MODE_AM = 2'd1;
    localparam [1:0] MODE_FM = 2'd2;

    localparam integer WARMUP_OUTPUTS = 64;

    localparam integer CW_OUTPUTS = 200;
    localparam integer AM_OUTPUTS = 3000;
    localparam integer FM_OUTPUTS = 1000;

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

    integer current_case;
    integer target_capture_outputs;
    integer capture_done;

    integer total_output_count;
    integer captured_count;

    integer cumulative_adc_valid;
    integer last_output_adc_count;
    integer interval_check_count;
    integer current_interval;

    integer global_error_count;
    integer structural_check_count;

    reg previous_baseband_valid;

    reg signed [63:0] sum_i;
    reg signed [63:0] sum_q;

    integer min_i;
    integer max_i;
    integer min_q;
    integer max_q;
    integer max_abs_q;
    integer q_abs;

    reg signed [63:0] sample_i_64;
    reg signed [63:0] sample_q_64;
    reg signed [63:0] magnitude_sq;
    reg signed [63:0] min_magnitude_sq;
    reg signed [63:0] max_magnitude_sq;

    integer average_i;

    always #(HALF_CLK_PERIOD_NS) clk = ~clk;

    //------------------------------------------------------------------
    // Simulation-only ADC source
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
    // Step07 complete synthesizable DDC top
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
    // Structural checks and CSV capture
    //------------------------------------------------------------------
    always @(negedge clk) begin
        if (!rst_n) begin
            capture_done            = 0;
            total_output_count      = 0;
            captured_count          = 0;

            cumulative_adc_valid    = 0;
            last_output_adc_count   = -1;
            interval_check_count    = 0;
            structural_check_count  = 0;

            previous_baseband_valid = 1'b0;

            sum_i = 64'sd0;
            sum_q = 64'sd0;

            min_i = 2147483647;
            max_i = -2147483647;
            min_q = 2147483647;
            max_q = -2147483647;
            max_abs_q = 0;

            min_magnitude_sq = 64'sh7fffffffffffffff;
            max_magnitude_sq = 64'sd0;
        end
        else begin
            if (adc_valid)
                cumulative_adc_valid = cumulative_adc_valid + 1;

            // Output valid must remain a single 60 MHz clock pulse.
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
                        "[TB-ERROR] X/Z detected in mode %0d.",
                        current_case
                    );
                    global_error_count = global_error_count + 1;
                end

                // Overall decimation must remain exactly 60.
                if (last_output_adc_count >= 0) begin
                    current_interval =
                        cumulative_adc_valid - last_output_adc_count;

                    if (current_interval != 60) begin
                        $display(
                            "[TB-ERROR] mode=%0d overall interval=%0d, expected=60.",
                            current_case,
                            current_interval
                        );
                        global_error_count = global_error_count + 1;
                    end

                    interval_check_count = interval_check_count + 1;
                end

                last_output_adc_count = cumulative_adc_valid;
                structural_check_count = structural_check_count + 1;

                // Discard complete-chain startup transient.
                if (total_output_count >= WARMUP_OUTPUTS) begin
                    $fwrite(
                        csv_fd,
                        "%0t,%0d,%0d,%0d,%0d,%0d,%0d,%0d,%0d\n",
                        $time,
                        current_case,
                        mod_freq_hz,
                        am_index_milli,
                        fm_index_milli,
                        captured_count,
                        cumulative_adc_valid,
                        $signed(baseband_i),
                        $signed(baseband_q)
                    );

                    sum_i = sum_i + $signed(baseband_i);
                    sum_q = sum_q + $signed(baseband_q);

                    if ($signed(baseband_i) < min_i)
                        min_i = $signed(baseband_i);
                    if ($signed(baseband_i) > max_i)
                        max_i = $signed(baseband_i);

                    if ($signed(baseband_q) < min_q)
                        min_q = $signed(baseband_q);
                    if ($signed(baseband_q) > max_q)
                        max_q = $signed(baseband_q);

                    q_abs = $signed(baseband_q);
                    if (q_abs < 0)
                        q_abs = -q_abs;
                    if (q_abs > max_abs_q)
                        max_abs_q = q_abs;

                    sample_i_64 = $signed(baseband_i);
                    sample_q_64 = $signed(baseband_q);

                    magnitude_sq =
                        sample_i_64 * sample_i_64
                        + sample_q_64 * sample_q_64;

                    if (magnitude_sq < min_magnitude_sq)
                        min_magnitude_sq = magnitude_sq;
                    if (magnitude_sq > max_magnitude_sq)
                        max_magnitude_sq = magnitude_sq;

                    // CW after warmup must be exactly constant.
                    if (current_case == MODE_CW) begin
                        if (baseband_i !== 32'sd11057267) begin
                            $display(
                                "[TB-ERROR] CW I mismatch at sample %0d: %0d",
                                captured_count,
                                $signed(baseband_i)
                            );
                            global_error_count = global_error_count + 1;
                        end

                        if (baseband_q !== 32'sd0) begin
                            $display(
                                "[TB-ERROR] CW Q mismatch at sample %0d: %0d",
                                captured_count,
                                $signed(baseband_q)
                            );
                            global_error_count = global_error_count + 1;
                        end
                    end

                    captured_count = captured_count + 1;

                    if (captured_count >= target_capture_outputs)
                        capture_done = 1;
                end

                total_output_count = total_output_count + 1;
            end
        end
    end

    //------------------------------------------------------------------
    // Mode-specific broad checks.
    // Detailed AM/FM checks are also performed by the Python CSV verifier.
    //------------------------------------------------------------------
    task check_current_case;
        input [1:0] case_mode;
        begin
            average_i = sum_i / captured_count;

            $display(
                "[TB] mode=%0d captured=%0d total_outputs=%0d interval_checks=%0d",
                case_mode,
                captured_count,
                total_output_count,
                interval_check_count
            );

            $display(
                "[TB] mode=%0d I_range=%0d..%0d Q_range=%0d..%0d avg_i=%0d",
                case_mode,
                min_i,
                max_i,
                min_q,
                max_q,
                average_i
            );

            if (captured_count != target_capture_outputs) begin
                $display("[TB-ERROR] Capture count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (total_output_count !=
                (WARMUP_OUTPUTS + target_capture_outputs)) begin
                $display("[TB-ERROR] Total output count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (interval_check_count != (total_output_count - 1)) begin
                $display("[TB-ERROR] Interval check count mismatch.");
                global_error_count = global_error_count + 1;
            end

            case (case_mode)
                MODE_CW: begin
                    if ((min_i != 11057267) ||
                        (max_i != 11057267) ||
                        (min_q != 0) ||
                        (max_q != 0)) begin
                        $display("[TB-ERROR] CW is not a constant I-axis baseband.");
                        global_error_count = global_error_count + 1;
                    end
                end

                MODE_AM: begin
                    // Expected approximately:
                    // Imin=4.42M, Imax=17.69M, mean=11.06M, Q close to zero.
                    if ((min_i < 4000000) || (min_i > 4800000)) begin
                        $display("[TB-ERROR] AM minimum envelope outside range.");
                        global_error_count = global_error_count + 1;
                    end

                    if ((max_i < 17200000) || (max_i > 18100000)) begin
                        $display("[TB-ERROR] AM maximum envelope outside range.");
                        global_error_count = global_error_count + 1;
                    end

                    if ((average_i < 10900000) ||
                        (average_i > 11200000)) begin
                        $display("[TB-ERROR] AM mean envelope outside range.");
                        global_error_count = global_error_count + 1;
                    end

                    if (max_abs_q > 10000) begin
                        $display("[TB-ERROR] AM Q leakage is too large.");
                        global_error_count = global_error_count + 1;
                    end
                end

                MODE_FM: begin
                    // FM complex envelope must rotate around the origin
                    // while keeping almost constant magnitude.
                    if ((min_i > -10000000) || (max_i < 10000000) ||
                        (min_q > -10000000) || (max_q < 10000000)) begin
                        $display("[TB-ERROR] FM I/Q phase rotation is incomplete.");
                        global_error_count = global_error_count + 1;
                    end

                    if (min_magnitude_sq < 64'sd118000000000000) begin
                        $display("[TB-ERROR] FM magnitude is too small.");
                        global_error_count = global_error_count + 1;
                    end

                    if (max_magnitude_sq > 64'sd127000000000000) begin
                        $display("[TB-ERROR] FM magnitude is too large.");
                        global_error_count = global_error_count + 1;
                    end
                end

                default: begin
                    $display("[TB-ERROR] Unknown regression mode.");
                    global_error_count = global_error_count + 1;
                end
            endcase
        end
    endtask

    //------------------------------------------------------------------
    // Execute one regression case.
    //------------------------------------------------------------------
    task run_case;
        input [1:0] case_mode;
        input integer case_mod_freq_hz;
        input integer case_am_index_milli;
        input integer case_fm_index_milli;
        input integer case_capture_outputs;
        begin
            @(negedge clk);
            rst_n                 = 1'b0;
            source_enable         = 1'b0;
            sample_restart        = 1'b0;

            current_case          = case_mode;
            signal_mode           = case_mode;
            mod_freq_hz           = case_mod_freq_hz;
            am_index_milli        = case_am_index_milli;
            fm_index_milli        = case_fm_index_milli;
            target_capture_outputs = case_capture_outputs;

            repeat (12) @(posedge clk);

            @(negedge clk);
            rst_n         = 1'b1;
            source_enable = 1'b1;

            wait (capture_done == 1);
            @(negedge clk);

            check_current_case(case_mode);

            source_enable = 1'b0;
            repeat (4) @(posedge clk);
        end
    endtask

    //------------------------------------------------------------------
    // Main regression sequence
    //------------------------------------------------------------------
    initial begin
        clk                 = 1'b0;
        rst_n               = 1'b0;
        source_enable       = 1'b0;
        sample_restart      = 1'b0;

        current_case        = MODE_CW;
        signal_mode         = MODE_CW;
        mod_freq_hz         = 32'd0;
        am_index_milli      = 32'd600;
        fm_index_milli      = 32'd3000;
        target_capture_outputs = 0;

        global_error_count = 0;
        capture_done       = 0;

        csv_fd = $fopen("step08_regression_samples.csv", "w");
        if (csv_fd == 0) begin
            $display("[TB-FAIL] Cannot create step08_regression_samples.csv");
            $finish;
        end

        $fwrite(
            csv_fd,
            "time_ps,mode,mod_freq_hz,am_index_milli,"
        );
        $fwrite(
            csv_fd,
            "fm_index_milli,output_index,adc_valid_count,"
        );
        $fwrite(
            csv_fd,
            "baseband_i,baseband_q\n"
        );

        // CW: 0.2 ms at 1 MHz output = 200 samples
        run_case(
            MODE_CW,
            0,
            600,
            3000,
            CW_OUTPUTS
        );

        // AM: F=1 kHz, ma=0.6, 3 ms = 3000 samples
        run_case(
            MODE_AM,
            1000,
            600,
            3000,
            AM_OUTPUTS
        );

        // FM: F=5 kHz, mf=3, 1 ms = 1000 samples
        run_case(
            MODE_FM,
            5000,
            600,
            3000,
            FM_OUTPUTS
        );

        $fclose(csv_fd);

        if (global_error_count == 0)
            $display("[TB-PASS] Step08 CW/AM/FM full regression passed.");
        else
            $display(
                "[TB-FAIL] Step08 failed, error_count=%0d",
                global_error_count
            );

        $finish;
    end

    initial begin
        #8000000;
        $display("[TB-FAIL] Timeout at 8 ms.");
        $finish;
    end

endmodule

`default_nettype wire
