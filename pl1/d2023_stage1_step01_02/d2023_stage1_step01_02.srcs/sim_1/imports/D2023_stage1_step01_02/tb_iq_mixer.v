`timescale 1ns/1ps
`default_nettype none

module tb_iq_mixer;

    localparam integer CLK_FREQ_HZ       = 60000000;
    localparam integer CAPTURE_SAMPLES   = 600;

    localparam real HALF_CLK_PERIOD_NS =
        1.0e9 / (2.0 * CLK_FREQ_HZ);

    reg clk;
    reg rst_n;
    reg source_enable;
    reg sample_restart;

    // 固定使用CW进行步骤4首轮验证
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

    // 与混频器同拍计算的参考值
    reg signed [29:0] expected_i;
    reg signed [29:0] expected_q;
    reg               expected_valid;

    integer csv_fd;

    integer epoch;
    integer capture_active;
    integer capture_done;
    integer sample_count;

    integer product_check_count;
    integer period15_check_count;
    integer valid_check_count;
    integer global_error_count;

    reg signed [63:0] sum_i;
    reg signed [63:0] sum_q;

    integer mix_i_min;
    integer mix_i_max;
    integer mix_q_min;
    integer mix_q_max;

    integer hist_i [0:14];
    integer hist_q [0:14];
    integer hist_index;
    integer hist_count;
    integer k;
    integer period_diff_i;
    integer period_diff_q;

    always #(HALF_CLK_PERIOD_NS) clk = ~clk;

    //------------------------------------------------------------------
    // 仿真ADC信号源：CW，2 MHz，100 mVpp
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
    // 步骤3已通过的固定2 MHz正交LUT-NCO
    //------------------------------------------------------------------
    dds_2mhz_wrapper u_dds_2mhz_wrapper (
        .clk         (clk),
        .rst_n       (rst_n),
        .lo_cos      (lo_cos),
        .lo_neg_sin  (lo_neg_sin),
        .lo_valid    (lo_valid)
    );

    //------------------------------------------------------------------
    // 步骤4待测I/Q混频器
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
    // 参考乘积流水线
    // 在每个上升沿使用与iq_mixer完全相同的输入生成期望值。
    //------------------------------------------------------------------
    always @(posedge clk) begin
        if (!rst_n) begin
            expected_i     <= 30'sd0;
            expected_q     <= 30'sd0;
            expected_valid <= 1'b0;
        end
        else begin
            expected_valid <= adc_valid & lo_valid;

            if (adc_valid & lo_valid) begin
                expected_i <= $signed(adc_data) * $signed(lo_cos);
                expected_q <= $signed(adc_data) * $signed(lo_neg_sin);
            end
            else begin
                expected_i <= 30'sd0;
                expected_q <= 30'sd0;
            end
        end
    end

    //------------------------------------------------------------------
    // 自动检查
    //------------------------------------------------------------------
    always @(negedge clk) begin
        if (!rst_n) begin
            capture_done        = 0;
            sample_count        = 0;
            product_check_count = 0;
            period15_check_count = 0;
            valid_check_count   = 0;

            sum_i = 64'sd0;
            sum_q = 64'sd0;

            mix_i_min =  1073741823;
            mix_i_max = -1073741824;
            mix_q_min =  1073741823;
            mix_q_max = -1073741824;

            hist_index = 0;
            hist_count = 0;

            for (k = 0; k < 15; k = k + 1) begin
                hist_i[k] = 0;
                hist_q[k] = 0;
            end
        end
        else begin
            // valid必须与参考流水线完全一致
            if (mix_valid !== expected_valid) begin
                $display(
                    "[TB-ERROR] mix_valid mismatch at time %0t: mix=%b expected=%b",
                    $time,
                    mix_valid,
                    expected_valid
                );
                global_error_count = global_error_count + 1;
            end
            else begin
                valid_check_count = valid_check_count + 1;
            end

            // 每个有效输出必须等于14×16完整有符号乘积
            if (mix_valid) begin
                if ((^mix_i === 1'bx) || (^mix_q === 1'bx)) begin
                    $display("[TB-ERROR] X/Z detected at time %0t", $time);
                    global_error_count = global_error_count + 1;
                end

                if (mix_i !== expected_i) begin
                    $display(
                        "[TB-ERROR] I product mismatch: got=%0d expected=%0d",
                        $signed(mix_i),
                        $signed(expected_i)
                    );
                    global_error_count = global_error_count + 1;
                end

                if (mix_q !== expected_q) begin
                    $display(
                        "[TB-ERROR] Q product mismatch: got=%0d expected=%0d",
                        $signed(mix_q),
                        $signed(expected_q)
                    );
                    global_error_count = global_error_count + 1;
                end
            end

            if (capture_active && mix_valid && !capture_done) begin
                $fwrite(
                    csv_fd,
                    "%0t,%0d,%0d,%0d,%0d,%0d,%0d,%0d\n",
                    $time,
                    epoch,
                    sample_count,
                    $signed(adc_data),
                    $signed(lo_cos),
                    $signed(lo_neg_sin),
                    $signed(mix_i),
                    $signed(mix_q)
                );

                product_check_count = product_check_count + 1;

                sum_i = sum_i + $signed(mix_i);
                sum_q = sum_q + $signed(mix_q);

                if ($signed(mix_i) < mix_i_min)
                    mix_i_min = $signed(mix_i);
                if ($signed(mix_i) > mix_i_max)
                    mix_i_max = $signed(mix_i);
                if ($signed(mix_q) < mix_q_min)
                    mix_q_min = $signed(mix_q);
                if ($signed(mix_q) > mix_q_max)
                    mix_q_max = $signed(mix_q);

                // 2 MHz与2 MHz相乘后产生4 MHz项：
                // 在60 MHz采样下，4 MHz周期为15个采样点。
                if (hist_count >= 15) begin
                    period_diff_i = $signed(mix_i) - hist_i[hist_index];
                    period_diff_q = $signed(mix_q) - hist_q[hist_index];

                    if (period_diff_i < 0)
                        period_diff_i = -period_diff_i;
                    if (period_diff_q < 0)
                        period_diff_q = -period_diff_q;

                    // 30点LUT的正负半周可能因16 bit四舍五入相差1 LSB。
                    // 因此4 MHz周期检查允许不超过1024的绝对码值误差。
                    if (period_diff_i > 1024) begin
                        $display(
                            "[TB-ERROR] I 15-sample periodic error at sample %0d, diff=%0d",
                            sample_count,
                            period_diff_i
                        );
                        global_error_count = global_error_count + 1;
                    end

                    if (period_diff_q > 1024) begin
                        $display(
                            "[TB-ERROR] Q 15-sample periodic error at sample %0d, diff=%0d",
                            sample_count,
                            period_diff_q
                        );
                        global_error_count = global_error_count + 1;
                    end

                    period15_check_count = period15_check_count + 1;
                end
                else begin
                    hist_count = hist_count + 1;
                end

                hist_i[hist_index] = $signed(mix_i);
                hist_q[hist_index] = $signed(mix_q);

                if (hist_index == 14)
                    hist_index = 0;
                else
                    hist_index = hist_index + 1;

                sample_count = sample_count + 1;

                if (sample_count >= CAPTURE_SAMPLES)
                    capture_done = 1;
            end
        end
    end

    //------------------------------------------------------------------
    // 检查一轮600点数据
    //------------------------------------------------------------------
    task check_epoch;
        input integer epoch_number;
        begin
            $display(
                "[TB] epoch=%0d samples=%0d product_checks=%0d period15_checks=%0d",
                epoch_number,
                sample_count,
                product_check_count,
                period15_check_count
            );

            $display(
                "[TB] epoch=%0d sum_i=%0d sum_q=%0d",
                epoch_number,
                sum_i,
                sum_q
            );

            $display(
                "[TB] epoch=%0d mix_i_range=%0d..%0d mix_q_range=%0d..%0d",
                epoch_number,
                mix_i_min,
                mix_i_max,
                mix_q_min,
                mix_q_max
            );

            if (sample_count != CAPTURE_SAMPLES) begin
                $display("[TB-ERROR] Expected 600 captured samples.");
                global_error_count = global_error_count + 1;
            end

            if (product_check_count != CAPTURE_SAMPLES) begin
                $display("[TB-ERROR] Product check count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (period15_check_count != (CAPTURE_SAMPLES - 15)) begin
                $display("[TB-ERROR] 15-sample period check count mismatch.");
                global_error_count = global_error_count + 1;
            end

            // 600点包含20个2 MHz周期，I均值应为明显正值。
            if ((sum_i < 64'sd7500000000) || (sum_i > 64'sd8500000000)) begin
                $display("[TB-ERROR] I DC sum outside expected range.");
                global_error_count = global_error_count + 1;
            end

            // Q为正负对称的4 MHz分量，整周期求和应接近0。
            if ((sum_q < -64'sd1000) || (sum_q > 64'sd1000)) begin
                $display("[TB-ERROR] Q mean is not close to zero.");
                global_error_count = global_error_count + 1;
            end

            if (mix_i_min < 0) begin
                $display("[TB-ERROR] CW I product should not be negative.");
                global_error_count = global_error_count + 1;
            end

            if ((mix_i_max < 25000000) ||
                (mix_q_max < 13000000) ||
                (mix_q_min > -13000000)) begin
                $display("[TB-ERROR] Mixer output amplitude is too low.");
                global_error_count = global_error_count + 1;
            end
        end
    endtask

    //------------------------------------------------------------------
    // 执行一轮：复位、启动、采集600点、验收
    //------------------------------------------------------------------
    task run_epoch;
        input integer epoch_number;
        begin
            capture_active = 0;
            rst_n          = 0;
            source_enable  = 0;
            sample_restart = 0;
            epoch          = epoch_number;

            repeat (12) @(posedge clk);

            @(negedge clk);
            rst_n         = 1;
            source_enable = 1;

            // 等待混频器流水线产生首个有效输出
            wait (mix_valid === 1'b1);
            @(negedge clk);
            capture_active = 1;

            wait (capture_done == 1);
            @(negedge clk);
            capture_active = 0;

            check_epoch(epoch_number);

            source_enable = 0;
            repeat (4) @(posedge clk);
        end
    endtask

    //------------------------------------------------------------------
    // 主流程：首次启动 + 中途复位后重新启动
    //------------------------------------------------------------------
    initial begin
        clk                = 0;
        rst_n              = 0;
        source_enable      = 0;
        sample_restart     = 0;
        signal_mode        = 2'd0;  // CW
        mod_freq_hz        = 0;
        am_index_milli     = 600;
        fm_index_milli     = 3000;
        epoch              = 0;
        capture_active     = 0;
        global_error_count = 0;

        csv_fd = $fopen("step04_mixer_samples.csv", "w");
        if (csv_fd == 0) begin
            $display("[TB-FAIL] Cannot create step04_mixer_samples.csv");
            $finish;
        end

        $fwrite(
            csv_fd,
            "time_ps,epoch,sample_index,adc_data,lo_cos,lo_neg_sin,mix_i,mix_q\n"
        );

        run_epoch(0);
        run_epoch(1);

        $fclose(csv_fd);

        if (global_error_count == 0)
            $display("[TB-PASS] Step04 I/Q mixer simulation passed.");
        else
            $display(
                "[TB-FAIL] Step04 failed, error_count=%0d",
                global_error_count
            );

        $finish;
    end

    initial begin
        #100000;
        $display("[TB-FAIL] Timeout at 100 us.");
        $finish;
    end

endmodule

`default_nettype wire
