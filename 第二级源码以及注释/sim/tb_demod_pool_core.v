`timescale 1ns/1ps

// =============================================================================
// 测试平台：tb_demod_pool_core
// 验证对象：完整demod_pool_core
//
// 测试用例：
//   1. CW：恒定复向量，幅度稳定、相位差接近0；
//   2. AM：幅度随1kHz正弦包络变化；
//   3. FM：幅度恒定、瞬时频率随5kHz正弦变化；
//   4. 2PSK：每128个样本把复向量反相，产生接近pi的相位突跳。
//
// 注意：
//   本测试必须使用Vivado生成的真实cordic_translate_0 IP。
//   不要同时编译sim/cordic_translate_0_stub.v，否则既会模块重名，
//   又无法验证真实幅度和相位算法。
// =============================================================================
module tb_demod_pool_core;

    // 缩短仿真时可临时把LGN改小；正式一致性验证应保持LGN=13。
    parameter LGN = 13;
    parameter N   = (1 << LGN);

    // DUT输入时钟、复位和I/Q流。
    reg                aclk;
    reg                aresetn;
    reg signed [15:0]  s_i;
    reg signed [15:0]  s_q;
    reg                s_valid;
    wire               s_ready;

    // DUT实时特征输出。
    wire [23:0]        mag_out;
    wire signed [23:0] dphi_out;
    wire               feature_valid;

    // DUT帧级统计输出。
    wire signed [31:0] mean_mag_num;
    wire [63:0]        var_mag_num;
    wire signed [31:0] mean_freq_num;
    wire [63:0]        var_freq_num;
    wire [31:0]        psk_spike_count;
    wire               psk_flag;
    wire               frame_done;

    // 直方图快照读取接口。本测试主要打印标量特征，地址默认保持0。
    reg  [3:0]  hist_mag_rd_addr;
    wire [31:0] hist_mag_rd_data;
    reg  [3:0]  hist_freq_rd_addr;
    wire [31:0] hist_freq_rd_data;

    // 激励生成所需变量。
    integer n;
    integer iv;
    integer qv;
    real pi;
    real fs;
    real envelope;
    real phase;
    real freq_now;

    demod_pool_core #(
        .LGN      (LGN),
        .MAG_GATE (24'd209715)
    ) dut (
        .aclk              (aclk),
        .aresetn           (aresetn),
        .s_i               (s_i),
        .s_q               (s_q),
        .s_valid           (s_valid),
        .s_ready           (s_ready),
        .mag_out           (mag_out),
        .dphi_out          (dphi_out),
        .feature_valid     (feature_valid),
        .mean_mag_num      (mean_mag_num),
        .var_mag_num       (var_mag_num),
        .mean_freq_num     (mean_freq_num),
        .var_freq_num      (var_freq_num),
        .psk_spike_count   (psk_spike_count),
        .psk_flag          (psk_flag),
        .frame_done        (frame_done),
        .hist_mag_rd_addr  (hist_mag_rd_addr),
        .hist_mag_rd_data  (hist_mag_rd_data),
        .hist_freq_rd_addr (hist_freq_rd_addr),
        .hist_freq_rd_data (hist_freq_rd_data)
    );

    // 10ns周期，对应100MHz。
    always #5 aclk = ~aclk;

    // -------------------------------------------------------------------------
    // 复位任务：在时钟下降沿改变输入，避开DUT上升沿采样时刻。
    // 每个调制方式测试前重新复位，使统计窗口和CORDIC相位历史相互独立。
    // -------------------------------------------------------------------------
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

    // -------------------------------------------------------------------------
    // 发送一个Q1.14复样本，并严格遵守valid/ready握手。
    // 数据和valid在下降沿建立，在随后的上升沿由DUT采样。
    // 若CORDIC暂时拉低ready，则保持数据和valid不变直到握手成功。
    // -------------------------------------------------------------------------
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

            // 保证至少经过一个s_valid&&s_ready的上升沿后再撤销valid。
            @(negedge aclk);
            s_valid = 1'b0;
        end
    endtask

    // 等待一帧统计完成并打印主要特征。
    // running_stats16采用流水线后，frame_done会比原窗口边界晚若干拍，
    // 但输出与frame_done同周期更新，#1用于避开非阻塞赋值的delta cycle。
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
            $display("hist_mag_bin0   = %0d", hist_mag_rd_data);
            $display("hist_freq_bin0  = %0d", hist_freq_rd_data);
            repeat (5) @(negedge aclk);
        end
    endtask

    initial begin
        // 全局初始化。
        aclk              = 1'b0;
        aresetn           = 1'b0;
        s_i               = 16'sd0;
        s_q               = 16'sd0;
        s_valid           = 1'b0;
        hist_mag_rd_addr  = 4'd0;
        hist_freq_rd_addr = 4'd0;
        pi                = 3.14159265358979323846;
        fs                = 1000000.0;

        // ---------------------------------------------------------------------
        // 用例1：CW/理想下变频后的恒定复向量。
        // I=0.5、Q=0，期望幅度方差和频率方差都很小，PSK标志为0。
        // 多送2个样本用于补偿phase_diff首样本不产生有效差分等流水线启动。
        // ---------------------------------------------------------------------
        apply_reset;
        for (n=0; n<N+2; n=n+1)
            send_sample(8192, 0); // 8192/16384=0.5
        wait_and_print("CW");

        // ---------------------------------------------------------------------
        // 用例2：AM。
        // 载波已理想下变频到0Hz，只保留随1kHz变化的正幅度包络。
        // 期望幅度直方图/方差明显展开，频率特征仍接近0。
        // ---------------------------------------------------------------------
        apply_reset;
        for (n=0; n<N+2; n=n+1) begin
            envelope = 0.45 * (1.0 +
                       0.5 * $sin(2.0*pi*1000.0*n/fs));
            iv = $rtoi(envelope * 16384.0);
            send_sample(iv, 0);
        end
        wait_and_print("AM");

        // ---------------------------------------------------------------------
        // 用例3：FM基带。
        // 复向量幅度固定为0.5，瞬时频率按照5kHz正弦变化，峰值频偏15kHz。
        // 通过对瞬时频率积分得到phase，再生成I=cos、Q=sin。
        // ---------------------------------------------------------------------
        apply_reset;
        phase = 0.0;
        for (n=0; n<N+2; n=n+1) begin
            freq_now = 15000.0 * $sin(2.0*pi*5000.0*n/fs);
            phase = phase + 2.0*pi*freq_now/fs;
            iv = $rtoi(0.5 * $cos(phase) * 16384.0);
            qv = $rtoi(0.5 * $sin(phase) * 16384.0);
            send_sample(iv, qv);
        end
        wait_and_print("FM");

        // ---------------------------------------------------------------------
        // 用例4：2PSK。
        // 每128个样本把复向量由+0.5翻到-0.5或反向翻回，产生pi相位跳变。
        // 期望psk_spike_count大于门限，psk_flag置1。
        // ---------------------------------------------------------------------
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
