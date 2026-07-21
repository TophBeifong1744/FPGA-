`timescale 1ns/1ps

// =============================================================================
// 模块名称：psk_spike_detector
// 功能说明：
//   在固定窗口内统计大相位跳变次数，用于识别BPSK类信号。
//   BPSK符号翻转通常产生接近pi的相位跳变，因此当|dphi|超过SPIKE_TH时
//   记为一次spike；窗口内spike数达到MIN_SPIKES则置psk_flag。
//
// 抗误判设计：
//   当幅度很低时，相位在数学和物理上都不稳定。mag_good=0时即使dphi很大
//   也不计数，避免2ASK包络过零等情况被误判为2PSK。
// =============================================================================
module psk_spike_detector #(
    parameter integer PHASE_W    = 24,
    parameter integer LGN        = 13,
    parameter integer SPIKE_TH   = 943718, // PHASE_W=24时约为0.45*pi
    parameter integer MIN_SPIKES = 4       // 一帧至少出现多少次突跳才判PSK
) (
    input  wire                       aclk,
    input  wire                       aresetn,
    input  wire signed [PHASE_W-1:0] dphi,       // 包裹后的相邻相位差
    input  wire                       mag_good,   // 幅度是否高于可信门限
    input  wire                       in_valid,   // 当前dphi有效
    output reg  [31:0]                spike_count,// 最近完整窗口的突跳数
    output reg                        psk_flag,   // 最近完整窗口的PSK判决
    output reg                        window_done // 结果更新单周期脉冲
);

    localparam integer N = (1 << LGN);

    reg [LGN-1:0]     sample_count; // 当前窗口样本计数
    reg [31:0]        live_spikes;  // 当前窗口已累计突跳数
    reg [PHASE_W-1:0] abs_dphi;     // dphi绝对值
    reg               is_spike;     // 当前样本是否构成可信突跳

    // 组合计算绝对值与门限判决。
    always @* begin
        if (dphi[PHASE_W-1])
            abs_dphi = (~dphi) + 1'b1;
        else
            abs_dphi = dphi;

        is_spike = mag_good && (abs_dphi >= SPIKE_TH);
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            sample_count <= {LGN{1'b0}};
            live_spikes  <= 32'd0;
            spike_count  <= 32'd0;
            psk_flag     <= 1'b0;
            window_done  <= 1'b0;
        end else begin
            window_done <= 1'b0;

            if (in_valid) begin
                if (sample_count == N-1) begin
                    // 最后一个样本也必须计入本窗口。
                    spike_count <= live_spikes + is_spike;
                    psk_flag    <= ((live_spikes + is_spike) >= MIN_SPIKES);

                    // 清空实时计数，准备下一窗口。
                    live_spikes  <= 32'd0;
                    sample_count <= {LGN{1'b0}};
                    window_done  <= 1'b1;
                end else begin
                    sample_count <= sample_count + 1'b1;
                    if (is_spike)
                        live_spikes <= live_spikes + 1'b1;
                end
            end
        end
    end

endmodule
