`timescale 1ns/1ps
`default_nettype none

module tb_fir_decimator_iq_2;

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

    wire signed [15:0] lo_cos;
    wire signed [15:0] lo_neg_sin;
    wire               lo_valid;

    wire signed [29:0] mix_i;
    wire signed [29:0] mix_q;
    wire               mix_valid;

    wire signed [44:0] cic_i;
    wire signed [44:0] cic_q;
    wire               cic_valid;

    wire signed [31:0] fir_i;
    wire signed [31:0] fir_q;
    wire               fir_valid;

    integer csv_fd;

    integer epoch;
    integer capture_done;
    integer output_count;
    integer cumulative_cic_valid;
    integer last_output_cic_count;
    integer interval_check_count;
    integer exact_check_count;
    integer steady_check_count;
    integer global_error_count;
    integer current_interval;

    reg previous_fir_valid;

    always #(HALF_CLK_PERIOD_NS) clk = ~clk;

    //------------------------------------------------------------------
    // 完整第一级链路：ADC → NCO → Mixer → CIC → FIR
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

    dds_2mhz_wrapper u_dds_2mhz_wrapper (
        .clk         (clk),
        .rst_n       (rst_n),
        .lo_cos      (lo_cos),
        .lo_neg_sin  (lo_neg_sin),
        .lo_valid    (lo_valid)
    );

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

    fir_decimator_iq_2 u_fir_decimator_iq_2 (
        .clk       (clk),
        .rst_n     (rst_n),
        .in_i      (cic_i),
        .in_q      (cic_q),
        .in_valid  (cic_valid),
        .out_i     (fir_i),
        .out_q     (fir_q),
        .out_valid (fir_valid)
    );

    //------------------------------------------------------------------
    // 18个完整链路CW参考输出
    //------------------------------------------------------------------
    function signed [31:0] expected_fir_i;
        input [4:0] index;
        begin
            case (index)
            5'd0: expected_fir_i = 32'sd9336;
            5'd1: expected_fir_i = 32'sd73096;
            5'd2: expected_fir_i = 32'sd48998;
            5'd3: expected_fir_i = -32'sd416132;
            5'd4: expected_fir_i = -32'sd542301;
            5'd5: expected_fir_i = 32'sd1817269;
            5'd6: expected_fir_i = 32'sd6694062;
            5'd7: expected_fir_i = 32'sd10709720;
            5'd8: expected_fir_i = 32'sd11718763;
            5'd9: expected_fir_i = 32'sd11211909;
            5'd10: expected_fir_i = 32'sd10959543;
            5'd11: expected_fir_i = 32'sd11020036;
            5'd12: expected_fir_i = 32'sd11055874;
            5'd13: expected_fir_i = 32'sd11057267;
            5'd14: expected_fir_i = 32'sd11057267;
            5'd15: expected_fir_i = 32'sd11057267;
            5'd16: expected_fir_i = 32'sd11057267;
            5'd17: expected_fir_i = 32'sd11057267;
                default: expected_fir_i = 32'sd0;
            endcase
        end
    endfunction

    function signed [31:0] expected_fir_q;
        input [4:0] index;
        begin
            case (index)
            5'd0: expected_fir_q = -32'sd1140;
            5'd1: expected_fir_q = -32'sd3179;
            5'd2: expected_fir_q = 32'sd8103;
            5'd3: expected_fir_q = 32'sd23730;
            5'd4: expected_fir_q = -32'sd28838;
            5'd5: expected_fir_q = -32'sd154043;
            5'd6: expected_fir_q = -32'sd201130;
            5'd7: expected_fir_q = -32'sd101140;
            5'd8: expected_fir_q = 32'sd5712;
            5'd9: expected_fir_q = 32'sd20692;
            5'd10: expected_fir_q = 32'sd842;
            5'd11: expected_fir_q = -32'sd2868;
            5'd12: expected_fir_q = -32'sd321;
            5'd13: expected_fir_q = 32'sd0;
            5'd14: expected_fir_q = 32'sd0;
            5'd15: expected_fir_q = 32'sd0;
            5'd16: expected_fir_q = 32'sd0;
            5'd17: expected_fir_q = 32'sd0;
                default: expected_fir_q = 32'sd0;
            endcase
        end
    endfunction

    //------------------------------------------------------------------
    // 自动验收
    //------------------------------------------------------------------
    always @(negedge clk) begin
        if (!rst_n) begin
            capture_done          = 0;
            output_count          = 0;
            cumulative_cic_valid  = 0;
            last_output_cic_count = -1;
            interval_check_count  = 0;
            exact_check_count     = 0;
            steady_check_count    = 0;
            previous_fir_valid    = 1'b0;
        end
        else begin
            if (cic_valid)
                cumulative_cic_valid = cumulative_cic_valid + 1;

            // FIR valid必须是单时钟脉冲。
            if (fir_valid && previous_fir_valid) begin
                $display(
                    "[TB-ERROR] fir_valid stayed high for more than one clock."
                );
                global_error_count = global_error_count + 1;
            end

            previous_fir_valid = fir_valid;

            if (fir_valid && !capture_done) begin
                if ((^fir_i === 1'bx) || (^fir_q === 1'bx)) begin
                    $display(
                        "[TB-ERROR] X/Z detected at FIR output %0d.",
                        output_count
                    );
                    global_error_count = global_error_count + 1;
                end

                // 每2个CIC有效输入产生1个FIR输出。
                if (last_output_cic_count >= 0) begin
                    current_interval =
                        cumulative_cic_valid - last_output_cic_count;

                    if (current_interval != 2) begin
                        $display(
                            "[TB-ERROR] FIR decimation interval=%0d, expected=2.",
                            current_interval
                        );
                        global_error_count = global_error_count + 1;
                    end

                    interval_check_count = interval_check_count + 1;
                end

                last_output_cic_count = cumulative_cic_valid;

                // 与离线定点模型逐点精确比较。
                if (fir_i !== expected_fir_i(output_count[4:0])) begin
                    $display(
                        "[TB-ERROR] FIR I mismatch at output %0d: got=%0d expected=%0d",
                        output_count,
                        $signed(fir_i),
                        $signed(expected_fir_i(output_count[4:0]))
                    );
                    global_error_count = global_error_count + 1;
                end

                if (fir_q !== expected_fir_q(output_count[4:0])) begin
                    $display(
                        "[TB-ERROR] FIR Q mismatch at output %0d: got=%0d expected=%0d",
                        output_count,
                        $signed(fir_q),
                        $signed(expected_fir_q(output_count[4:0]))
                    );
                    global_error_count = global_error_count + 1;
                end

                exact_check_count = exact_check_count + 1;

                // 第14个输出（index=13）起完全进入CW稳态。
                if (output_count >= 13) begin
                    if (fir_i !== 32'sd11057267) begin
                        $display(
                            "[TB-ERROR] Steady FIR I mismatch at output %0d.",
                            output_count
                        );
                        global_error_count = global_error_count + 1;
                    end

                    if (fir_q !== 32'sd0) begin
                        $display(
                            "[TB-ERROR] Steady FIR Q mismatch at output %0d.",
                            output_count
                        );
                        global_error_count = global_error_count + 1;
                    end

                    steady_check_count = steady_check_count + 1;
                end

                $fwrite(
                    csv_fd,
                    "%0t,%0d,%0d,%0d,%0d,%0d,%0d,%0d\n",
                    $time,
                    epoch,
                    output_count,
                    cumulative_cic_valid,
                    $signed(cic_i),
                    $signed(cic_q),
                    $signed(fir_i),
                    $signed(fir_q)
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
                "[TB] epoch=%0d final_i=%0d final_q=%0d cic_inputs=%0d",
                epoch_number,
                $signed(fir_i),
                $signed(fir_q),
                cumulative_cic_valid
            );

            if (output_count != TARGET_OUTPUTS) begin
                $display("[TB-ERROR] FIR output count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (interval_check_count != (TARGET_OUTPUTS-1)) begin
                $display("[TB-ERROR] FIR interval check count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (exact_check_count != TARGET_OUTPUTS) begin
                $display("[TB-ERROR] FIR exact check count mismatch.");
                global_error_count = global_error_count + 1;
            end

            if (steady_check_count != (TARGET_OUTPUTS-13)) begin
                $display("[TB-ERROR] FIR steady check count mismatch.");
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

        csv_fd = $fopen("step06_fir_samples.csv", "w");
        if (csv_fd == 0) begin
            $display("[TB-FAIL] Cannot create step06_fir_samples.csv");
            $finish;
        end

        $fwrite(
            csv_fd,
            "time_ps,epoch,output_index,cic_valid_count,cic_i,cic_q,fir_i,fir_q\n"
        );

        run_epoch(0);
        run_epoch(1);

        $fclose(csv_fd);

        if (global_error_count == 0)
            $display("[TB-PASS] Step06 FIR decimation-by-2 simulation passed.");
        else
            $display(
                "[TB-FAIL] Step06 failed, error_count=%0d",
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
