`timescale 1ns/1ps
module tb_bpsk_reacquire;
    reg clk=0,rstn=0,valid=0;
    reg signed[15:0] i=0,q=0;
    wire carrier_locked,timing_locked,bit_data,bit_valid,symbol_strobe;
    wire[1:0] rate_code;
    wire signed[15:0] nrz_out,recovered_i,recovered_q;
    wire nrz_sample_valid,recovered_valid;
    wire[23:0] carrier_phase_word;
    wire signed[23:0] carrier_frequency_word;
    wire[31:0] timing_phase_word;
    bpsk_rx_chain dut(.aclk(clk),.aresetn(rstn),.s_i(i),.s_q(q),
      .in_valid(valid),.carrier_locked(carrier_locked),
      .timing_locked(timing_locked),.rate_code(rate_code),
      .bit_data(bit_data),.bit_valid(bit_valid),.symbol_strobe(symbol_strobe),
      .nrz_out(nrz_out),.nrz_sample_valid(nrz_sample_valid),
      .recovered_i(recovered_i),.recovered_q(recovered_q),
      .recovered_valid(recovered_valid),.carrier_phase_word(carrier_phase_word),
      .carrier_frequency_word(carrier_frequency_word),
      .timing_phase_word(timing_phase_word));
    always #5 clk=~clk;
    integer n,k,iv,qv,idx,lfsr,errors_direct,errors_inverse,rx_count,failures;
    integer gap_count;
    real phase,symbol_value;
    reg bits[0:511]; reg score_enable;

    task send_sample;
      input integer xi; input integer xq; input integer gap;
      begin
        @(negedge clk);i=xi;q=xq;valid=1;
        @(negedge clk);valid=0;
        repeat(gap) @(negedge clk);
      end
    endtask

    always @(posedge clk) if(score_enable && bit_valid) begin
      rx_count=rx_count+1;
      if(bit_data!=bits[idx]) errors_direct=errors_direct+1;
      if(bit_data==bits[idx]) errors_inverse=errors_inverse+1;
    end

    initial begin
      failures=0;score_enable=0;rx_count=0;errors_direct=0;errors_inverse=0;
      lfsr=16'h4a35;
      for(k=0;k<512;k=k+1) begin
        bits[k]=lfsr&1;lfsr=(lfsr>>1)^((lfsr&1)?16'hb400:0);
      end
      repeat(8) @(negedge clk);rstn=1;repeat(4) @(negedge clk);

      // First acquisition: 8 kbps, +3 kHz residual carrier.
      for(n=0;n<25000;n=n+1) begin
        idx=(n*8000)/1000000;
        symbol_value=bits[idx]?0.55:-0.55;
        phase=0.43+2.0*3.14159265358979323846*3000.0*n/1000000.0;
        iv=$rtoi(symbol_value*$cos(phase)*16384.0);
        qv=$rtoi(symbol_value*$sin(phase)*16384.0);
        gap_count=((n%19)==0)?5:1;
        send_sample(iv,qv,gap_count);
      end
      if(!carrier_locked||!timing_locked||(rate_code!=2)) begin
        $display("FAIL first acquisition lock=%0d/%0d rate=%0d",carrier_locked,timing_locked,rate_code);
        failures=failures+1;
      end

      // Signal loss must clear carrier, rate and timing state.
      for(n=0;n<700;n=n+1) send_sample(0,0,1);
      if(carrier_locked||timing_locked||(rate_code!=0)) begin
        $display("FAIL loss handling lock=%0d/%0d rate=%0d",carrier_locked,timing_locked,rate_code);
        failures=failures+1;
      end

      // Reacquire a different signal: 10 kbps, -4 kHz.  Deliberate valid
      // gaps vary in wall-clock length but not in accepted sample time.
      score_enable=1;
      for(n=0;n<30000;n=n+1) begin
        idx=(n*10000)/1000000;
        symbol_value=bits[idx]?0.42:-0.42;
        phase=1.31-2.0*3.14159265358979323846*4000.0*n/1000000.0;
        iv=$rtoi(symbol_value*$cos(phase)*16384.0);
        qv=$rtoi(symbol_value*$sin(phase)*16384.0);
        gap_count=((n%23)==0)?7:((n%5)==0?0:1);
        send_sample(iv,qv,gap_count);
      end
      repeat(12) @(negedge clk);score_enable=0;
      if(!carrier_locked||!timing_locked||(rate_code!=3)) begin
        $display("FAIL reacquisition lock=%0d/%0d rate=%0d",carrier_locked,timing_locked,rate_code);
        failures=failures+1;
      end
      if(rx_count<270) begin $display("FAIL reacquire bit count=%0d",rx_count);failures=failures+1;end
      if((errors_direct<errors_inverse?errors_direct:errors_inverse)!=0) begin
        $display("FAIL reacquire BER direct=%0d inverse=%0d",errors_direct,errors_inverse);
        failures=failures+1;
      end
      $display("REACQUIRE code=%0d bits=%0d min_errors=%0d freq_word=%0d",
        rate_code,rx_count,(errors_direct<errors_inverse?errors_direct:errors_inverse),carrier_frequency_word);
      if(failures!=0)$fatal(1,"BPSK reacquisition regression failed");
      $display("PASS: tb_bpsk_reacquire");$finish;
    end
endmodule
