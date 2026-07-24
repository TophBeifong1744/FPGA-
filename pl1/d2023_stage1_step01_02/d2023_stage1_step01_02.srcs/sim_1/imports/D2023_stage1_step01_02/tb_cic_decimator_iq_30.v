`timescale 1ns/1ps
`default_nettype none

module tb_cic_decimator_iq_30;

    localparam integer CLK_FREQ_HZ       = 60000000;
    localparam integer TARGET_OUTPUTS    = 12;

    localparam signed [44:0] EXPECTED_CW_I =
        45'sd362324527200;

    localparam signed [44:0] EXPECTED_CW_Q =
        45'sd0;

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

    wire signed [15:0] lo_cos;
    wire signed [15:0] lo_neg_sin;
    wire               lo_valid;

    wire signed [29:0] mix_i;
    wire signed [29:0] mix_q;
    wire               mix_valid;

    wire signed [44:0] cic_i;
    wire signed [44:0] cic_q;
    wire               cic_valid;

    integer csv_fd;

    integer epoch;
    integer capture_done;
    integer output_count;
    integer steady_check_count;
    integer interval_check_count;
    integer global_error_count;

    integer cumulative_input_valid;
    integer last_output_input_count;
    integer current_interval;

    reg previous_cic_valid;

    always #(HALF_CLK_PERIOD_NS) clk = ~clk;

    //------------------------------------------------------------------
    // 步骤2：CW仿真ADC信号源
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
    // 步骤3：固定2 MHz正交LUT-NCO
    //------------------------------------------------------------------
    dds_2mhz_wrapper u_dds_2mhz_wrapper (
        .clk         (clk),
        .rst_n       (rst_n),
        .lo_cos      (lo_cos),
        .lo_neg_sin  (lo_neg_sin),
        .lo_valid    (lo_valid)
    );

    //------------------------------------------------------------------
    // 步骤4：I/Q数字混频器
    //------------------------------------------------------------------
    iq_mixer u_iq_mixer (
        .clk         (clk),
        .rst_n       (rst_n),
        .adc_data    (adc_data),
        .adc_valid   (adc_valid),
        .lo_cos      (lo_cos),
        .lo_neg_sin  (lo_neg_sin),
        .lo_valid    (lo_valid),
        .mix_i       (mix_i),
        .mix_q       (mix_q),
        .mix_valid   (mix_valid)
    );

    //------------------------------------------------------------------
    // 步骤5：三级、30倍I/Q CIC抽取器
    //------------------------------------------------------------------
    cic_decimator_iq_30 u_cic_decimator_iq_30 (
        .clk       (clk),
        .rst_n     (rst_n),
        .in_i      (mix_i),
        .in_q      (mix_q),
        .in_valid  (mix_valid),
        .out_i     (cic_i),
        .out_q     (cic_q),
        .out_valid (cic_valid)
    );

    //------------------------------------------------------------------
    // 自动检查
    //------------------------------------------------------------------
    always @(negedge clk) begin
        if (!rst_n) begin
            capture_done          = 0;
            output_count          = 0;
            steady_check_count    = 0;
            interval_check_count  = 0;
            cumulative_input_valid = 0;
            last_output_input_count = -1;
            previous_cic_valid    = 1'b0;
        end
        else begin
            if (mix_valid)
                cumulative_input_valid = cumulative_input_valid + 1;

            // CIC有效脉冲必须只有一个时钟宽度
            if (cic_valid && previous_cic_valid) begin
                $display(
                    "[TB-ERROR] cic_valid stayed high for more than one clock."
                );
                global_error_count = global_error_count + 1;
            end

            previous_cic_valid = cic_valid;

            if (cic_valid && !capture_done) begin
                if ((^cic_i === 1'bx) || (^cic_q === 1'bx)) begin
                    $display(
                        "[TB-ERROR] X/Z detected at CIC output %0d.",
                        output_count
                    );
                    global_error_count = global_error_count + 1;
                end

                // 相邻输出之间必须恰好接收30个有效输入
                if (last_output_input_count >= 0) begin
                    current_interval =
                        cumulative_input_valid - last_output_input_count;

                    if (current_interval != 30) begin
                        $display(
                            "[TB-ERROR] Decimation interval=%0d, expected=30.",
                            current_interval
                        );
                        global_error_count = global_error_count + 1;
                    end

                    interval_check_count = interval_check_count + 1;
                end

                last_output_input_count = cumulative_input_valid;

                $fwrite(
                    csv_fd,
                    "%0t,%0d,%0d,%0d,%0d,%0d\n",
                    $time,
                    epoch,
                    output_count,
                    cumulative_input_valid,
                    $signed(cic_i),
                    $signed(cic_q)
                );

                // 前3个输出为CIC启动瞬态。
                // 从第4个输出开始，CW的4 MHz项应被CIC零点完全抑制。
                if (output_count >= 3) begin
                    if (cic_i !== EXPECTED_CW_I) begin
                        $display(
                            "[TB-ERROR] Steady I mismatch at output %0d: got=%0d expected=%0d",
                            output_count,
                            $signed(cic_i),
                            $signed(EXPECTED_CW_I)
                        );
                        global_error_count = global_error_count + 1;
                    end

                    if (cic_q !== EXPECTED_CW_Q) begin
                        $display(
                            "[TB-ERROR] Steady Q mismatch at output %0d: got=%0d expected=0",
                            output_count,
                            $signed(cic_q)
                        );
                        global_error_count = global_error_count + 1;
                    end

                    steady_check_count = steady_check_count + 1;
                end

                output_count = output_count + 1;

                if (output_count >= TARGET_OUTPUTS)
                    capture_done = 1;
            end
        end
    end

    //------------------------------------------------------------------
    // 每轮验收
    //------------------------------------------------------------------
    task check_epoch;
        input integer epoch_number;
        begin
            $display(
                "[TB] epoch=%0d outputs=%0d interval_checks=%0d steady_checks=%0d",
                epoch_number,
                output_count,
                interval_check_count,
                steady_check_count
            );

            $display(
                "[TB] epoch=%0d final_i=%0d final_q=%0d input_valids=%0d",
                epoch_number,
                $signed(cic_i),
                $signed(cic_q),
                cumulative_input_valid
            );

            if (output_count != TARGET_OUTPUTS) begin
                $display("[TB-ERROR] Output count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (interval_check_count != (TARGET_OUTPUTS-1)) begin
                $display("[TB-ERROR] Interval check count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (steady_check_count != (TARGET_OUTPUTS-3)) begin
                $display("[TB-ERROR] Steady check count mismatch.");
                global_error_count = global_error_count + 1;
            end
        end
    endtask

    //------------------------------------------------------------------
    // 一轮测试：复位、运行、采集12个CIC输出
    //------------------------------------------------------------------
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

    //------------------------------------------------------------------
    // 主测试：首次启动 + 中途复位后重新启动
    //------------------------------------------------------------------
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

        csv_fd = $fopen("step05_cic_samples.csv", "w");
        if (csv_fd == 0) begin
            $display("[TB-FAIL] Cannot create step05_cic_samples.csv");
            $finish;
        end

        $fwrite(
            csv_fd,
            "time_ps,epoch,output_index,input_valid_count,cic_i,cic_q\n"
        );

        run_epoch(0);
        run_epoch(1);

        $fclose(csv_fd);

        if (global_error_count == 0)
            $display("[TB-PASS] Step05 CIC decimation-by-30 simulation passed.");
        else
            $display(
                "[TB-FAIL] Step05 failed, error_count=%0d",
                global_error_count
            );

        $finish;
    end

    initial begin
        #30000;
        $display("[TB-FAIL] Timeout at 30 us.");
        $finish;
    end

endmodule

`default_nettype wire
