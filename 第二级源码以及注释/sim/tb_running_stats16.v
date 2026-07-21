`timescale 1ns/1ps

// =============================================================================
// 测试平台：tb_running_stats16
// 目的：独立验证流水线统计结果和window_done时序。
//
// 为缩短仿真，把LGN设为3，即每8个有效样本一帧。
// 第一帧输入1～8：
//   sum=36，sum(x^2)=204，var_num=8*204-36^2=336。
// 第二帧输入8个-2：
//   sum=-16，所有样本相同，因此var_num=0。
// =============================================================================
module tb_running_stats16;

    reg               aclk;
    reg               aresetn;
    reg signed [15:0] x;
    reg               in_valid;

    wire signed [31:0] mean_num;
    wire [63:0]        var_num;
    wire               window_done;

    integer n;
    integer errors;

    running_stats16 #(
        .LGN(3)
    ) dut (
        .aclk        (aclk),
        .aresetn     (aresetn),
        .x           (x),
        .in_valid    (in_valid),
        .mean_num    (mean_num),
        .var_num     (var_num),
        .window_done (window_done)
    );

    // 100MHz仿真时钟。
    always #5 aclk = ~aclk;

    // 连续送入一个有效样本；下降沿改变激励，上升沿由DUT采样。
    task put_sample;
        input signed [15:0] value;
        begin
            @(negedge aclk);
            x        = value;
            in_valid = 1'b1;
        end
    endtask

    // 在下降沿结束连续有效输入。
    task stop_samples;
        begin
            @(negedge aclk);
            in_valid = 1'b0;
            x        = 16'sd0;
        end
    endtask

    // 等待一帧结果并检查期望值。
    task check_result;
        input signed [31:0] expected_mean;
        input [63:0] expected_var;
        begin
            wait (window_done === 1'b1);
            #1;
            if ((mean_num !== expected_mean) ||
                (var_num !== expected_var)) begin
                $display("FAIL mean=%0d var=%0d, expected mean=%0d var=%0d",
                         mean_num, var_num, expected_mean, expected_var);
                errors = errors + 1;
            end else begin
                $display("PASS mean=%0d var=%0d", mean_num, var_num);
            end
            @(negedge aclk);
        end
    endtask

    initial begin
        aclk      = 1'b0;
        aresetn   = 1'b0;
        x         = 16'sd0;
        in_valid  = 1'b0;
        errors    = 0;

        // 同步复位并释放。
        repeat (4) @(negedge aclk);
        aresetn = 1'b1;

        // 第一帧：连续输入1～8。
        for (n=1; n<=8; n=n+1)
            put_sample(n);
        stop_samples;
        check_result(32'sd36, 64'd336);

        // 第二帧：连续输入8个-2。
        for (n=0; n<8; n=n+1)
            put_sample(-16'sd2);
        stop_samples;
        check_result(-32'sd16, 64'd0);

        if (errors == 0)
            $display("RUNNING STATS TEST PASSED");
        else
            $display("RUNNING STATS TEST FAILED: %0d errors", errors);

        $finish;
    end

endmodule
