`timescale 1ns/1ps
`default_nettype none

`include "ddc_sim_params.vh"

module tb_signal_source;

    //------------------------------------------------------------------
    // 时钟与控制信号
    //------------------------------------------------------------------
    reg clk;
    reg rst_n;
    reg enable;
    reg sample_restart;

    reg [1:0]  signal_mode;
    reg [31:0] mod_freq_hz;
    reg [31:0] am_index_milli;
    reg [31:0] fm_index_milli;

    wire signed [`ADC_BITS-1:0] adc_data;
    wire adc_valid;

    // 60 MHz 半周期约为 8.333333 ns。
    // 信号源内部不直接使用 $time 生成波形，因此这里的 1 ps 量化不会
    // 改变离散信号的数学采样频率。
    localparam real HALF_CLK_PERIOD_NS =
        1.0e9 / (2.0 * `CLK_FREQ_HZ);

    always #(HALF_CLK_PERIOD_NS) clk = ~clk;

    //------------------------------------------------------------------
    // 待测仿真信号源
    //------------------------------------------------------------------
    adc_signal_source #(
        .ADC_BITS             (`ADC_BITS),
        .SAMPLE_RATE_HZ       (`CLK_FREQ_HZ),
        .CARRIER_FREQ_HZ      (`CARRIER_FREQ_HZ),
        .ADC_FULL_SCALE_PEAK_V(`ADC_FULL_SCALE_PEAK_V),
        .CARRIER_PEAK_V       (`CARRIER_PEAK_V),
        .INITIAL_PHASE_RAD    (`INITIAL_PHASE_RAD)
    ) u_signal_source (
        .clk             (clk),
        .rst_n           (rst_n),
        .enable          (enable),
        .sample_restart  (sample_restart),
        .signal_mode     (signal_mode),
        .mod_freq_hz     (mod_freq_hz),
        .am_index_milli  (am_index_milli),
        .fm_index_milli  (fm_index_milli),
        .adc_data        (adc_data),
        .adc_valid       (adc_valid)
    );

    //------------------------------------------------------------------
    // CSV 数据记录
    //------------------------------------------------------------------
    integer csv_fd;
    integer valid_sample_count;

    always @(negedge clk) begin
        if (!rst_n || sample_restart) begin
            valid_sample_count = 0;
        end
        else if (adc_valid) begin
            $fwrite(
                csv_fd,
                "%0t,%0d,%0d,%0d,%0d,%0d\n",
                $time,
                signal_mode,
                mod_freq_hz,
                am_index_milli,
                fm_index_milli,
                adc_data
            );
            valid_sample_count = valid_sample_count + 1;
        end
    end

    //------------------------------------------------------------------
    // 执行一个信号测试段
    //------------------------------------------------------------------
    task run_signal_case;
        input [1:0] case_mode;
        input integer case_mod_freq_hz;
        input integer case_am_index_milli;
        input integer case_fm_index_milli;
        input integer case_sample_count;
        begin
            // 所有控制信号在下降沿修改，避开待测模块的上升沿采样
            @(negedge clk);
            enable          = 1'b0;
            sample_restart  = 1'b1;
            signal_mode     = case_mode;
            mod_freq_hz     = case_mod_freq_hz;
            am_index_milli  = case_am_index_milli;
            fm_index_milli  = case_fm_index_milli;

            @(negedge clk);
            sample_restart = 1'b0;
            enable         = 1'b1;

            repeat (case_sample_count) @(posedge clk);

            @(negedge clk);
            enable = 1'b0;

            // 等待 adc_valid 在下一个上升沿清零，避免计数显示竞态
            @(posedge clk);
            @(negedge clk);

            $display(
                "[TB] mode=%0d, expected_samples=%0d, logged_samples=%0d",
                case_mode,
                case_sample_count,
                valid_sample_count
            );

            repeat (3) @(posedge clk);
        end
    endtask

    //------------------------------------------------------------------
    // 主测试流程
    //------------------------------------------------------------------
    initial begin
        clk             = 1'b0;
        rst_n           = 1'b0;
        enable          = 1'b0;
        sample_restart  = 1'b0;

        signal_mode     = `SIG_CW;
        mod_freq_hz     = 0;
        am_index_milli  = `AM_INDEX_MILLI;
        fm_index_milli  = `FM_INDEX_MILLI;

        csv_fd = $fopen("signal_source_samples.csv", "w");
        if (csv_fd == 0) begin
            $display("[TB-ERROR] Cannot create signal_source_samples.csv");
            $finish;
        end

        $fwrite(
            csv_fd,
            "time_ns,mode,mod_freq_hz,"
        );
        $fwrite(
            csv_fd,
            "am_index_milli,fm_index_milli,adc_code\n"
        );

        repeat (10) @(posedge clk);
        @(negedge clk);
        rst_n = 1'b1;
        repeat (4) @(posedge clk);

        // 1) CW：0.2 ms，共 12 000 点
        run_signal_case(
            `SIG_CW,
            0,
            `AM_INDEX_MILLI,
            `FM_INDEX_MILLI,
            12000
        );

        // 2) AM：F=1 kHz，ma=0.6，3 ms，共 180 000 点
        run_signal_case(
            `SIG_AM,
            `AM_MOD_FREQ_HZ,
            `AM_INDEX_MILLI,
            `FM_INDEX_MILLI,
            180000
        );

        // 3) FM：F=5 kHz，mf=3，1 ms，共 60 000 点
        // 最大频偏：Delta_f_max = mf*F = 15 kHz
        run_signal_case(
            `SIG_FM,
            `FM_MOD_FREQ_HZ,
            `AM_INDEX_MILLI,
            `FM_INDEX_MILLI,
            60000
        );

        $fclose(csv_fd);

        $display("[TB] Step 01-02 simulation finished.");
        $finish;
    end

endmodule

`default_nettype wire
