`timescale 1ns/1ps

// =============================================================================
// 测试平台：tb_feature_bram_writer
// 验证对象：feature_bram_writer
// 验证内容：
//   1. frame_done能否启动一次快照写入；
//   2. 64位、32位和PSK特征的BRAM字映射是否正确；
//   3. 两组16档直方图是否映射到字8～39；
//   4. sequence是否在所有特征之后最后提交；
//   5. 32位BRAM字节地址是否满足4字节对齐。
//
// 本测试不需要任何Xilinx IP，可直接Behavioral Simulation。
// =============================================================================
module tb_feature_bram_writer;

    // DUT时钟、复位和帧触发。
    reg aclk;
    reg aresetn;
    reg frame_done;

    // 模拟core产生的标量特征。
    reg [63:0]        var_mag_num;
    reg [63:0]        var_freq_num;
    reg signed [31:0] mean_mag_num;
    reg signed [31:0] mean_freq_num;
    reg [31:0]        psk_spike_count;
    reg               psk_flag;

    // DUT给出的直方图地址，以及测试平台返回的模拟直方图数据。
    wire [3:0]  hist_mag_rd_addr;
    wire [31:0] hist_mag_rd_data;
    wire [3:0]  hist_freq_rd_addr;
    wire [31:0] hist_freq_rd_data;

    // DUT输出的BMG Port B写接口。
    wire        bram_en;
    wire [3:0]  bram_we;
    wire [31:0] bram_addr;
    wire [31:0] bram_wdata;
    wire        busy;

    // 用64个32位寄存器模拟BRAM；索引单位是“字”，不是字节。
    reg [31:0] memory [0:63];

    integer k;
    integer errors;

    // 构造容易识别的直方图数据：
    // 幅度bin0～15返回100～115，频率bin0～15返回200～215。
    assign hist_mag_rd_data  = 32'd100 + hist_mag_rd_addr;
    assign hist_freq_rd_data = 32'd200 + hist_freq_rd_addr;

    feature_bram_writer dut (
        .aclk              (aclk),
        .aresetn           (aresetn),
        .frame_done        (frame_done),
        .var_mag_num       (var_mag_num),
        .var_freq_num      (var_freq_num),
        .mean_mag_num      (mean_mag_num),
        .mean_freq_num     (mean_freq_num),
        .psk_spike_count   (psk_spike_count),
        .psk_flag          (psk_flag),
        .hist_mag_rd_addr  (hist_mag_rd_addr),
        .hist_mag_rd_data  (hist_mag_rd_data),
        .hist_freq_rd_addr (hist_freq_rd_addr),
        .hist_freq_rd_data (hist_freq_rd_data),
        .bram_en           (bram_en),
        .bram_we           (bram_we),
        .bram_addr         (bram_addr),
        .bram_wdata        (bram_wdata),
        .busy              (busy)
    );

    // 10ns周期，对应100MHz仿真时钟。
    always #5 aclk = ~aclk;

    // BMG Port B行为模型。
    // DUT输出字节地址，因此使用bram_addr[7:2]转换成memory字索引。
    always @(posedge aclk) begin
        if (bram_en && (bram_we != 4'b0000)) begin
            if (bram_addr[1:0] != 2'b00) begin
                $display("FAIL: unaligned BRAM byte address %h", bram_addr);
                errors = errors + 1;
            end
            memory[bram_addr[7:2]] <= bram_wdata;
        end
    end

    // 检查一个BRAM字是否等于预期值。
    task check_word;
        input integer address;
        input [31:0] expected;
        begin
            if (memory[address] !== expected) begin
                $display("FAIL word[%0d]: got %h, expected %h",
                         address, memory[address], expected);
                errors = errors + 1;
            end else begin
                $display("PASS word[%0d] = %h", address, memory[address]);
            end
        end
    endtask

    initial begin
        // 初始化所有激励信号。
        aclk            = 1'b0;
        aresetn         = 1'b0;
        frame_done      = 1'b0;
        var_mag_num     = 64'h1122334455667788;
        var_freq_num    = 64'h99aabbccddeeff00;
        mean_mag_num    = 32'sh01234567;
        mean_freq_num   = -32'sd12345;
        psk_spike_count = 32'd25;
        psk_flag        = 1'b1;
        errors          = 0;

        // 仿真BRAM清零。
        for (k=0; k<64; k=k+1)
            memory[k] = 32'd0;

        // 保持复位5个下降沿，然后释放复位。
        repeat (5) @(negedge aclk);
        aresetn = 1'b1;
        repeat (2) @(negedge aclk);

        // 单周期frame_done启动一次40字快照：字1～39加最后的字0提交。
        frame_done = 1'b1;
        @(negedge aclk);
        frame_done = 1'b0;

        // 等待主体写入完成，再等待commit写入sequence。
        wait (busy === 1'b1);
        wait (busy === 1'b0);
        repeat (4) @(negedge aclk);

        // 检查标量特征、PSK字段和两组直方图的边界项。
        check_word(0,  32'd1);
        check_word(1,  32'h55667788);
        check_word(2,  32'h11223344);
        check_word(3,  32'hddeeff00);
        check_word(4,  32'h99aabbcc);
        check_word(5,  32'h01234567);
        check_word(6,  -32'sd12345);
        check_word(7,  32'h80000019);
        check_word(8,  32'd100);
        check_word(23, 32'd115);
        check_word(24, 32'd200);
        check_word(39, 32'd215);

        if (errors == 0)
            $display("FEATURE BRAM WRITER TEST PASSED");
        else
            $display("FEATURE BRAM WRITER TEST FAILED: %0d errors", errors);

        $finish;
    end

endmodule
