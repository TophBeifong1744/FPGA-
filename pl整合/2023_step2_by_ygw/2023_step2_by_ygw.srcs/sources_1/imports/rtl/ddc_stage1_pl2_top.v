`timescale 1ns/1ps
`default_nettype none

//==============================================================================
// 模块：ddc_stage1_pl2_top
//
// 用途：
//   第一级 DDC 与第二级 demod_pool_core 之间的推荐总顶层。
//
// 数据链：
//   ADC 14 bit / 60 MSPS
//     -> 固定 2 MHz 正交下变频
//     -> CIC x30
//     -> FIR x2
//     -> 32 bit 到 16 bit Q1.14 缩放与饱和
//     -> 同步 FIFO
//     -> 第二级 valid/ready 流接口
//
// 连接第二级：
//   m_i     -> demod_pool_core/s_i
//   m_q     -> demod_pool_core/s_q
//   m_valid -> demod_pool_core/s_valid
//   m_ready <- demod_pool_core/s_ready
//
// 时钟要求：
//   本模块与 demod_pool_core 必须连接同一个 60 MHz aclk。
//   aresetn 与 demod_pool_core/aresetn 连接同一个低有效复位。
//==============================================================================

module ddc_stage1_pl2_top #(
    parameter integer SCALE_SHIFT = 11,
    parameter integer FIFO_ADDR_W = 4
) (
    input  wire                         aclk,
    input  wire                         aresetn,

    input  wire signed [13:0]           adc_data,
    input  wire                         adc_valid,

    output wire signed [15:0]           m_i,
    output wire signed [15:0]           m_q,
    output wire                         m_valid,
    input  wire                         m_ready,

    // 推荐接入 ILA 的诊断信号。
    output wire [FIFO_ADDR_W:0]         fifo_level,
    output wire                         fifo_overflow_sticky,
    output wire                         fir_overrun_sticky
);

    wire signed [31:0] baseband_i;
    wire signed [31:0] baseband_q;
    wire               baseband_valid;
    wire               adapter_in_ready;

    // 便于直接在综合网表中标记并观察关键节点。
    (* mark_debug = "true" *) wire signed [31:0] baseband_i_dbg;
    (* mark_debug = "true" *) wire signed [31:0] baseband_q_dbg;
    (* mark_debug = "true" *) wire               baseband_valid_dbg;

    assign baseband_i_dbg     = baseband_i;
    assign baseband_q_dbg     = baseband_q;
    assign baseband_valid_dbg = baseband_valid;

    ddc_stage1_top u_ddc_stage1 (
        .clk                 (aclk),
        .rst_n               (aresetn),
        .adc_data            (adc_data),
        .adc_valid           (adc_valid),
        .baseband_i          (baseband_i),
        .baseband_q          (baseband_q),
        .baseband_valid      (baseband_valid),
        .fir_overrun_sticky  (fir_overrun_sticky)
    );

    stage1_to_pl2_adapter #(
        .SCALE_SHIFT (SCALE_SHIFT),
        .FIFO_ADDR_W (FIFO_ADDR_W)
    ) u_stage1_to_pl2_adapter (
        .clk              (aclk),
        .rst_n            (aresetn),
        .in_i             (baseband_i),
        .in_q             (baseband_q),
        .in_valid         (baseband_valid),
        .in_ready         (adapter_in_ready),
        .out_i            (m_i),
        .out_q            (m_q),
        .out_valid        (m_valid),
        .out_ready        (m_ready),
        .fifo_level       (fifo_level),
        .overflow_sticky  (fifo_overflow_sticky)
    );

    // 第一级滤波链本身不可暂停，所以 adapter_in_ready 仅用于诊断。
    // 若第二级长时间反压导致 FIFO 填满，overflow_sticky 会永久置位，
    // 直到系统复位。正常设计中第二级 CORDIC 能连续接收，故不应溢出。

endmodule

`default_nettype wire
