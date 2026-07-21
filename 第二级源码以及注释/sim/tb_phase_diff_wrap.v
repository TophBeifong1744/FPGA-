`timescale 1ns/1ps

// =============================================================================
// 测试平台：tb_phase_diff_wrap
// 目的：验证相位从+0.9*pi跳到-0.9*pi时，模块不会输出-1.8*pi，
//       而是加2*pi后输出约+0.2*pi。
// =============================================================================
module tb_phase_diff_wrap;

    reg                clk;
    reg                rstn;
    reg                valid;
    reg signed [23:0]  phase;
    wire signed [23:0] dphi;
    wire               out_valid;

    integer errors;

    // 100MHz时钟。
    always #5 clk = ~clk;

    phase_diff_wrap dut (
        .aclk      (clk),
        .aresetn   (rstn),
        .phase_in  (phase),
        .in_valid  (valid),
        .dphi_out  (dphi),
        .out_valid (out_valid)
    );

    // 在一个完整时钟周期内送入一个有效相位样本。
    task put;
        input signed [23:0] p;
        begin
            @(negedge clk);
            phase = p;
            valid = 1'b1;
            @(negedge clk);
            valid = 1'b0;
        end
    endtask

    initial begin
        clk    = 1'b0;
        rstn   = 1'b0;
        valid  = 1'b0;
        phase  = 24'sd0;
        errors = 0;

        // 同步复位三个时钟后释放。
        repeat (3) @(negedge clk);
        rstn = 1'b1;

        // 第一个样本只用于建立上一相位，out_valid应为0。
        put(24'sd1887437);    // 约+0.9*pi

        // 第二个样本跨越正负pi边界，应输出约+0.2*pi。
        put(-24'sd1887437);   // 约-0.9*pi

        // dphi寄存器会保持最近结果，因此稍后检查其数值。
        repeat (2) @(negedge clk);
        if (dphi !== 24'sd419430) begin
            $display("FAIL dphi=%0d, expected=%0d", dphi, 24'sd419430);
            errors = errors + 1;
        end

        if (errors == 0)
            $display("PHASE WRAP TEST PASSED: dphi=%0d", dphi);
        else
            $display("PHASE WRAP TEST FAILED");

        $finish;
    end

endmodule
