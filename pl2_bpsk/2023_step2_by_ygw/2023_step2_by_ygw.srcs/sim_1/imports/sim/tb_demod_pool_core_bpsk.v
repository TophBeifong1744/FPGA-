`timescale 1ns/1ps

// Integration regression.  This testbench must be run from the Vivado
// project so the real generated cordic_translate_0 model is compiled.
module tb_demod_pool_core_bpsk;
    reg aclk=0, aresetn=0, s_valid=0;
    reg signed [15:0] s_i=0, s_q=0;
    wire s_ready;
    wire [23:0] mag_out;
    wire signed [23:0] dphi_out;
    wire feature_valid;
    wire signed [31:0] mean_mag_num, mean_freq_num;
    wire [63:0] var_mag_num, var_freq_num;
    wire [31:0] psk_spike_count;
    wire psk_flag, frame_done;
    reg [3:0] hist_mag_rd_addr=0, hist_freq_rd_addr=0;
    wire [31:0] hist_mag_rd_data, hist_freq_rd_data;
    wire bpsk_bit_data, bpsk_bit_valid, bpsk_symbol_strobe;
    wire signed [15:0] bpsk_nrz_out;
    wire bpsk_sample_valid, bpsk_carrier_locked, bpsk_timing_locked;
    wire [1:0] bpsk_rate_code;

    demod_pool_core_bpsk dut (
        .aclk(aclk),.aresetn(aresetn),.s_i(s_i),.s_q(s_q),
        .s_valid(s_valid),.s_ready(s_ready),.mag_out(mag_out),
        .dphi_out(dphi_out),.feature_valid(feature_valid),
        .mean_mag_num(mean_mag_num),.var_mag_num(var_mag_num),
        .mean_freq_num(mean_freq_num),.var_freq_num(var_freq_num),
        .psk_spike_count(psk_spike_count),.psk_flag(psk_flag),
        .frame_done(frame_done),.hist_mag_rd_addr(hist_mag_rd_addr),
        .hist_mag_rd_data(hist_mag_rd_data),
        .hist_freq_rd_addr(hist_freq_rd_addr),
        .hist_freq_rd_data(hist_freq_rd_data),
        .bpsk_bit_data(bpsk_bit_data),.bpsk_bit_valid(bpsk_bit_valid),
        .bpsk_symbol_strobe(bpsk_symbol_strobe),
        .bpsk_nrz_out(bpsk_nrz_out),.bpsk_sample_valid(bpsk_sample_valid),
        .bpsk_carrier_locked(bpsk_carrier_locked),
        .bpsk_timing_locked(bpsk_timing_locked),
        .bpsk_rate_code(bpsk_rate_code)
    );

    always #5 aclk=~aclk;
    integer n,k,iv,qv,symbol_index,current_symbol_index;
    integer accepted_count,feature_count,frame_count,rx_count;
    integer direct_errors,inverse_errors,failures,lfsr;
    real phase,symbol_value;
    reg tx_bits[0:511];
    reg case_active;

    task send_sample;
        input integer i_value;
        input integer q_value;
        begin
            @(negedge aclk); s_i=i_value; s_q=q_value; s_valid=1'b1;
            while(s_ready !== 1'b1) @(negedge aclk);
            @(negedge aclk); s_valid=1'b0;
            repeat(3) @(negedge aclk);
        end
    endtask

    always @(posedge aclk) begin
        if(aresetn && s_valid && s_ready) accepted_count=accepted_count+1;
        if(feature_valid) feature_count=feature_count+1;
        if(frame_done) frame_count=frame_count+1;
        if(bpsk_bit_valid !== bpsk_symbol_strobe) begin
            $display("FAIL integrated bit valid alignment at %0t",$time);
            failures=failures+1;
        end
        if(case_active && bpsk_bit_valid) begin
            rx_count=rx_count+1;
            if(bpsk_bit_data != tx_bits[current_symbol_index])
                direct_errors=direct_errors+1;
            if(bpsk_bit_data == tx_bits[current_symbol_index])
                inverse_errors=inverse_errors+1;
        end
    end

    initial begin
        accepted_count=0; feature_count=0; frame_count=0; rx_count=0;
        direct_errors=0; inverse_errors=0; failures=0; case_active=0;
        lfsr=16'h1d0f;
        for(k=0;k<512;k=k+1) begin
            tx_bits[k]=lfsr&1;
            lfsr=(lfsr>>1)^((lfsr&1)?16'hb400:0);
        end
        repeat(8) @(negedge aclk); aresetn=1; repeat(4) @(negedge aclk);
        case_active=1;
        for(n=0;n<37500;n=n+1) begin
            symbol_index=(n*8000)/1000000;
            current_symbol_index=symbol_index;
            symbol_value=tx_bits[symbol_index]?0.55:-0.55;
            phase=0.71+2.0*3.14159265358979323846*2200.0*n/1000000.0;
            iv=$rtoi(symbol_value*$cos(phase)*16384.0);
            qv=$rtoi(symbol_value*$sin(phase)*16384.0);
            send_sample(iv,qv);
        end
        repeat(80) @(negedge aclk); case_active=0;
        if(!bpsk_carrier_locked) begin $display("FAIL integrated carrier lock"); failures=failures+1; end
        if(!bpsk_timing_locked) begin $display("FAIL integrated timing lock"); failures=failures+1; end
        if(bpsk_rate_code!=2) begin $display("FAIL integrated rate=%0d",bpsk_rate_code); failures=failures+1; end
        if(!psk_flag) begin $display("FAIL existing psk_flag regression"); failures=failures+1; end
        if(frame_count<4) begin $display("FAIL feature frames=%0d",frame_count); failures=failures+1; end
        if(feature_count!=(accepted_count-1)) begin
            $display("FAIL CORDIC valid count accepted=%0d feature=%0d",accepted_count,feature_count);
            failures=failures+1;
        end
        if(rx_count<275) begin $display("FAIL integrated bit count=%0d",rx_count); failures=failures+1; end
        if((direct_errors<inverse_errors?direct_errors:inverse_errors)!=0) begin
            $display("FAIL integrated BER direct=%0d inverse=%0d",direct_errors,inverse_errors);
            failures=failures+1;
        end
        $display("INTEGRATED accepted=%0d feature=%0d frames=%0d spikes=%0d code=%0d bits=%0d min_errors=%0d",
            accepted_count,feature_count,frame_count,psk_spike_count,bpsk_rate_code,rx_count,
            (direct_errors<inverse_errors?direct_errors:inverse_errors));
        if(failures!=0) $fatal(1,"Integrated BPSK regression failed");
        $display("PASS: tb_demod_pool_core_bpsk real CORDIC integration");
        $finish;
    end
endmodule

