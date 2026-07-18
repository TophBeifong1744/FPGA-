`timescale 1ns/1ps

// Full behavioral testbench for demod_pool_core.
// Use the real generated cordic_translate_0 IP. Do NOT compile
// cordic_translate_0_stub.v together with this testbench.
module tb_demod_pool_core;
    parameter LGN = 13;
    parameter N   = (1 << LGN);

    reg                     aclk;
    reg                     aresetn;
    reg signed [15:0]       s_i;
    reg signed [15:0]       s_q;
    reg                     s_valid;
    wire                    s_ready;

    wire [23:0]             mag_out;
    wire signed [23:0]      dphi_out;
    wire                    feature_valid;
    wire signed [31:0]      mean_mag_num;
    wire [63:0]             var_mag_num;
    wire signed [31:0]      mean_freq_num;
    wire [63:0]             var_freq_num;
    wire [31:0]             psk_spike_count;
    wire                    psk_flag;
    wire                    frame_done;

    reg [3:0]               hist_mag_rd_addr;
    wire [31:0]             hist_mag_rd_data;
    reg [3:0]               hist_freq_rd_addr;
    wire [31:0]             hist_freq_rd_data;

    integer n;
    integer iv;
    integer qv;
    real pi;
    real fs;
    real envelope;
    real phase;
    real freq_now;

    demod_pool_core #(
        .LGN(LGN),
        .MAG_GATE(24'd209715)
    ) dut (
        .aclk(aclk),
        .aresetn(aresetn),
        .s_i(s_i),
        .s_q(s_q),
        .s_valid(s_valid),
        .s_ready(s_ready),
        .mag_out(mag_out),
        .dphi_out(dphi_out),
        .feature_valid(feature_valid),
        .mean_mag_num(mean_mag_num),
        .var_mag_num(var_mag_num),
        .mean_freq_num(mean_freq_num),
        .var_freq_num(var_freq_num),
        .psk_spike_count(psk_spike_count),
        .psk_flag(psk_flag),
        .frame_done(frame_done),
        .hist_mag_rd_addr(hist_mag_rd_addr),
        .hist_mag_rd_data(hist_mag_rd_data),
        .hist_freq_rd_addr(hist_freq_rd_addr),
        .hist_freq_rd_data(hist_freq_rd_data)
    );

    always #5 aclk = ~aclk; // 100 MHz

    task apply_reset;
        begin
            @(negedge aclk);
            aresetn = 1'b0;
            s_valid = 1'b0;
            s_i     = 16'sd0;
            s_q     = 16'sd0;
            repeat (5) @(negedge aclk);
            aresetn = 1'b1;
            repeat (3) @(negedge aclk);
        end
    endtask

    // Send one Q1.14 complex sample and obey the AXI4-Stream input handshake.
    task send_sample;
        input integer i_value;
        input integer q_value;
        begin
            @(negedge aclk);
            s_i     = i_value;
            s_q     = q_value;
            s_valid = 1'b1;
            while (s_ready !== 1'b1)
                @(negedge aclk);
            @(negedge aclk);
            s_valid = 1'b0;
        end
    endtask

    task wait_and_print;
        input [8*8-1:0] signal_name;
        begin
            wait (frame_done === 1'b1);
            #1;
            $display("--------------------------------------------------");
            $display("RESULT: %s", signal_name);
            $display("mean_mag_num    = %0d", mean_mag_num);
            $display("var_mag_num     = %0d", var_mag_num);
            $display("mean_freq_num   = %0d", mean_freq_num);
            $display("var_freq_num    = %0d", var_freq_num);
            $display("psk_spike_count = %0d", psk_spike_count);
            $display("psk_flag        = %0d", psk_flag);
            repeat (5) @(negedge aclk);
        end
    endtask

    initial begin
        aclk              = 1'b0;
        aresetn           = 1'b0;
        s_i               = 16'sd0;
        s_q               = 16'sd0;
        s_valid           = 1'b0;
        hist_mag_rd_addr  = 4'd0;
        hist_freq_rd_addr = 4'd0;
        pi                = 3.14159265358979323846;
        fs                = 1000000.0;

        // 1) CW after ideal DDC: fixed complex vector, magnitude constant,
        // phase increment approximately zero.
        apply_reset;
        for (n=0; n<N+2; n=n+1)
            send_sample(8192, 0); // 0.5 in Q1.14
        wait_and_print("CW");

        // 2) AM: 1 kHz sinusoidal envelope, modulation depth 0.5.
        apply_reset;
        for (n=0; n<N+2; n=n+1) begin
            envelope = 0.45 * (1.0 + 0.5*$sin(2.0*pi*1000.0*n/fs));
            iv = $rtoi(envelope * 16384.0);
            send_sample(iv, 0);
        end
        wait_and_print("AM");

        // 3) FM baseband: constant magnitude, 5 kHz modulation frequency,
        // 15 kHz peak frequency deviation.
        apply_reset;
        phase = 0.0;
        for (n=0; n<N+2; n=n+1) begin
            freq_now = 15000.0 * $sin(2.0*pi*5000.0*n/fs);
            phase = phase + 2.0*pi*freq_now/fs;
            iv = $rtoi(0.5*$cos(phase)*16384.0);
            qv = $rtoi(0.5*$sin(phase)*16384.0);
            send_sample(iv, qv);
        end
        wait_and_print("FM");

        // 4) 2PSK: invert the complex vector every 128 samples.
        apply_reset;
        for (n=0; n<N+2; n=n+1) begin
            if (((n/128) % 2) == 0)
                send_sample(8192, 0);
            else
                send_sample(-8192, 0);
        end
        wait_and_print("2PSK");

        $display("All four test cases completed.");
        $finish;
    end
endmodule
