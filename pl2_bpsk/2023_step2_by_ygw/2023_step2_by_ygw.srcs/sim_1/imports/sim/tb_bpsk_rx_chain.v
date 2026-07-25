`timescale 1ns/1ps

module tb_bpsk_rx_chain;
    reg aclk = 1'b0;
    reg aresetn = 1'b0;
    reg signed [15:0] s_i = 16'sd0;
    reg signed [15:0] s_q = 16'sd0;
    reg in_valid = 1'b0;
    wire carrier_locked;
    wire timing_locked;
    wire [1:0] rate_code;
    wire bit_data;
    wire bit_valid;
    wire symbol_strobe;
    wire signed [15:0] nrz_out;
    wire nrz_sample_valid;
    wire signed [15:0] recovered_i;
    wire signed [15:0] recovered_q;
    wire recovered_valid;
    wire [23:0] carrier_phase_word;
    wire signed [23:0] carrier_frequency_word;
    wire [31:0] timing_phase_word;

    bpsk_rx_chain dut (
        .aclk(aclk), .aresetn(aresetn),
        .s_i(s_i), .s_q(s_q), .in_valid(in_valid),
        .carrier_locked(carrier_locked), .timing_locked(timing_locked),
        .rate_code(rate_code), .bit_data(bit_data), .bit_valid(bit_valid),
        .symbol_strobe(symbol_strobe), .nrz_out(nrz_out),
        .nrz_sample_valid(nrz_sample_valid),
        .recovered_i(recovered_i), .recovered_q(recovered_q),
        .recovered_valid(recovered_valid),
        .carrier_phase_word(carrier_phase_word),
        .carrier_frequency_word(carrier_frequency_word),
        .timing_phase_word(timing_phase_word)
    );

    always #5 aclk = ~aclk;

    integer n;
    integer k;
    integer iv;
    integer qv;
    integer symbol_index;
    integer current_symbol_index;
    integer rx_count;
    integer direct_errors;
    integer inverse_errors;
    integer failures;
    integer expected_code;
    integer total_samples;
    integer lfsr;
    real pi;
    real phase;
    real symbol_value;
    reg tx_bits [0:511];
    reg case_active;

    task apply_reset;
        begin
            @(negedge aclk);
            aresetn = 1'b0;
            in_valid = 1'b0;
            s_i = 16'sd0;
            s_q = 16'sd0;
            repeat (8) @(negedge aclk);
            aresetn = 1'b1;
            repeat (4) @(negedge aclk);
        end
    endtask

    // Four clock periods per accepted sample leave room for all valid stages
    // and also prove that no state uses wall-clock cycles as sample time.
    task send_sample;
        input integer i_value;
        input integer q_value;
        begin
            @(negedge aclk);
            s_i = i_value;
            s_q = q_value;
            in_valid = 1'b1;
            @(negedge aclk);
            in_valid = 1'b0;
            repeat (3) @(negedge aclk);
        end
    endtask

    task run_case;
        input integer rate_hz;
        input integer cfo_hz;
        input real initial_phase;
        begin
            apply_reset;
            rx_count = 0;
            direct_errors = 0;
            inverse_errors = 0;
            current_symbol_index = 0;
            case_active = 1'b1;
            case (rate_hz)
                6000: expected_code = 1;
                8000: expected_code = 2;
                default: expected_code = 3;
            endcase
            total_samples = (300000000 + rate_hz - 1) / rate_hz;
            for (n=0; n<total_samples; n=n+1) begin
                symbol_index = (n * rate_hz) / 1000000;
                current_symbol_index = symbol_index;
                symbol_value = tx_bits[symbol_index] ? 0.55 : -0.55;
                phase = initial_phase + 2.0*pi*cfo_hz*n/1000000.0;
                iv = $rtoi(symbol_value*$cos(phase)*16384.0);
                qv = $rtoi(symbol_value*$sin(phase)*16384.0);
                send_sample(iv, qv);
            end
            repeat (12) @(negedge aclk);
            case_active = 1'b0;
            if (!carrier_locked) begin
                $display("FAIL carrier lock: rate=%0d cfo=%0d", rate_hz, cfo_hz);
                failures = failures + 1;
            end
            if (!timing_locked) begin
                $display("FAIL timing lock: rate=%0d cfo=%0d", rate_hz, cfo_hz);
                failures = failures + 1;
            end
            if (rate_code != expected_code[1:0]) begin
                $display("FAIL rate code: rate=%0d got=%0d", rate_hz, rate_code);
                failures = failures + 1;
            end
            if (rx_count < 250) begin
                $display("FAIL bit count: rate=%0d count=%0d", rate_hz, rx_count);
                failures = failures + 1;
            end
            if ((direct_errors < inverse_errors ? direct_errors : inverse_errors) != 0) begin
                $display("FAIL BER: rate=%0d cfo=%0d direct=%0d inverse=%0d count=%0d",
                         rate_hz, cfo_hz, direct_errors, inverse_errors, rx_count);
                failures = failures + 1;
            end
            $display("CASE rate=%0d cfo=%0d code=%0d bits=%0d min_errors=%0d freq_word=%0d PASS",
                     rate_hz, cfo_hz, rate_code, rx_count,
                     (direct_errors < inverse_errors ? direct_errors : inverse_errors),
                     carrier_frequency_word);
        end
    endtask

    always @(posedge aclk) begin
        if (bit_valid !== symbol_strobe) begin
            $display("FAIL bit_valid/symbol_strobe mismatch at %0t", $time);
            failures = failures + 1;
        end
        if (case_active && bit_valid) begin
            rx_count = rx_count + 1;
            if (bit_data != tx_bits[current_symbol_index])
                direct_errors = direct_errors + 1;
            if (bit_data == tx_bits[current_symbol_index])
                inverse_errors = inverse_errors + 1;
        end
    end

    initial begin
        pi = 3.14159265358979323846;
        failures = 0;
        case_active = 1'b0;
        lfsr = 16'h1d0f;
        for (k=0; k<512; k=k+1) begin
            tx_bits[k] = lfsr & 1;
            lfsr = (lfsr >> 1) ^ ((lfsr & 1) ? 16'hb400 : 0);
        end
        run_case(6000, -5000, 0.23);
        run_case(6000, 5000, 2.64);
        run_case(8000, -5000, 1.17);
        run_case(8000, 5000, 2.64);
        run_case(10000, -5000, 0.23);
        run_case(10000, 5000, 1.17);
        if (failures == 0)
            $display("PASS: tb_bpsk_rx_chain all cases");
        else
            $display("FAIL: tb_bpsk_rx_chain failures=%0d", failures);
        if (failures != 0)
            $fatal(1, "BPSK regression failed");
        $finish;
    end
endmodule
