module fft_new (
    // 时钟与复位
    input  wire         aclk,
    input  wire         aresetn,

    // FM 解调有符号数据输入
    input  wire signed [15:0]  fm_demod_in,
    input  wire                fm_valid,

    // FFT + 幅值计算输出
    output wire [31:0]         spectrum_magnitude, // 幅值（I^2 + Q^2，高16位）
    output wire [15:0]         spectrum_phase,     // 相位（此处不使用）
    output wire [10:0]         spectrum_bin,
    output wire                spectrum_valid,
    output wire                 fft_tlast
);

// =========================================
// 参数：2048点 FFT
// =========================================
parameter FFT_LEN     = 2048;
parameter SAMPLE_RATE = 200_000_000;
localparam BIN_RES_HZ = SAMPLE_RATE / FFT_LEN;

// =========================================
// 输入打拍
// =========================================
reg signed [15:0] fm_demod_in_pipe;
reg               fm_valid_pipe;
reg fft_tlast_pipe1;
reg fft_tlast_pipe2;
reg fft_tlast_pipe3;

wire [31:0] fft_m_tdata;
wire [23:0] fft_m_tuser;
wire        fft_m_tvalid;
wire        fft_m_tlast;

always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        fft_tlast_pipe1 <= 1'b0;
        fft_tlast_pipe2 <= 1'b0;
        fft_tlast_pipe3 <= 1'b0;
    end else begin
        // 第1级打拍：和fft_real_pipe/fft_imag_pipe对齐
        fft_tlast_pipe1 <= fft_m_tlast;
        // 第2级打拍：和mag_sq/mag_vld对齐
        fft_tlast_pipe2 <= fft_tlast_pipe1;
        // 第3级打拍：和bin_delay/vld_delay对齐
        fft_tlast_pipe3 <= fft_tlast_pipe2;
    end
end

always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        fm_demod_in_pipe <= 16'd0;
        fm_valid_pipe    <= 1'b0;
    end else begin
        fm_demod_in_pipe <= fm_demod_in;
        fm_valid_pipe    <= fm_valid;
    end
end

// =========================================
// 2048点计数 → 生成 tlast
// =========================================
reg [10:0] cnt;
always @(posedge aclk or negedge aresetn) begin
    if (!aresetn)
        cnt <= 11'd0;
    else if (fm_valid_pipe) begin
        if (cnt == FFT_LEN - 1)
            cnt <= 11'd0;
        else
            cnt <= cnt + 1'b1;
    end
end

// =========================================
// FFT 输入 AXI-Stream
// =========================================
wire        fft_s_tready;
reg         fft_s_tvalid;
reg         fft_s_tlast;

always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        fft_s_tvalid <= 1'b0;
        fft_s_tlast  <= 1'b0;
    end else begin
        fft_s_tvalid <= fm_valid_pipe;
        fft_s_tlast  <= (cnt == FFT_LEN - 1) && fm_valid_pipe;
    end
end

wire [31:0] fft_tdata_in = {16'd0, fm_demod_in_pipe};

// =========================================
// FFT IP
// =========================================

assign fft_tlast = fft_tlast_pipe3;

xfft_0 u_fft_inst (
    .aclk                (aclk),
    .aresetn             (aresetn),

    .s_axis_data_tdata   (fft_tdata_in),
    .s_axis_data_tvalid  (fft_s_tvalid),
    .s_axis_data_tlast   (fft_s_tlast),
    .s_axis_data_tready  (fft_s_tready),

    .s_axis_config_tdata (8'd1), // 正向 FFT
    .s_axis_config_tvalid(1'b1),

    .m_axis_data_tdata   (fft_m_tdata),
    .m_axis_data_tuser   (fft_m_tuser),
    .m_axis_data_tvalid  (fft_m_tvalid),
    .m_axis_data_tlast   (fft_m_tlast),
    .m_axis_data_tready  (1'b1),

    .event_frame_started (),
    .event_tlast_unexpected (),
    .event_tlast_missing ()
);

// =========================================
// FFT 输出打拍
// =========================================
reg signed [15:0] fft_real_pipe;
reg signed [15:0] fft_imag_pipe;
reg               fft_vld_pipe;
reg [10:0]        bin_pipe;

always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        fft_real_pipe <= 16'd0;
        fft_imag_pipe <= 16'd0;
        fft_vld_pipe  <= 1'b0;
        bin_pipe      <= 11'd0;
    end else begin
        fft_real_pipe <= fft_m_tdata[15:0];   // I
        fft_imag_pipe <= fft_m_tdata[31:16];  // Q
        fft_vld_pipe  <= fft_m_tvalid;
        bin_pipe      <= fft_m_tuser[10:0];
    end
end

// =========================================
// 幅值计算（不开根号）：I^2 + Q^2
// =========================================
reg signed [31:0] mag_sq;
reg               mag_vld;

always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        mag_sq  <= 32'd0;
        mag_vld <= 1'b0;
    end else begin
        mag_sq  <= (fft_real_pipe * fft_real_pipe) +
                   (fft_imag_pipe * fft_imag_pipe);
        mag_vld <= fft_vld_pipe;
    end
end

// =========================================
// bin 与 valid 对齐（1 拍）
// =========================================
reg [10:0] bin_delay;
reg        vld_delay;

always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        bin_delay <= 11'd0;
        vld_delay <= 1'b0;
    end else begin
        bin_delay <= bin_pipe;
        vld_delay <= mag_vld;
    end
end

// =========================================
// 最终输出
// =========================================
assign spectrum_magnitude = mag_sq; // 取高16位
assign spectrum_phase     = 16'd0;        // 不使用相位
assign spectrum_bin       = bin_delay;
assign spectrum_valid     = vld_delay;

endmodule