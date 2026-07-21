`timescale 1ns/1ps

// =============================================================================
// 文件名称：cordic_translate_0_stub.v
// 文件用途：
//   仅用于没有生成Xilinx CORDIC IP时进行语法检查或层次展开。
//   该stub不计算真实幅度与相位，输出数据始终为0，因此不能用于算法验证。
//
// 使用限制：
//   1. Vivado工程已经包含真实cordic_translate_0.xci时，不要加入本文件；
//   2. 真实IP和stub同时编译会产生“模块重复定义”错误；
//   3. 本文件只能加入Simulation Sources或临时语法检查文件集。
// =============================================================================
module cordic_translate_0 (
    input  wire        aclk,                     // 保留真实IP端口，stub内部未使用
    input  wire        aresetn,                  // 保留真实IP端口，stub内部未使用
    input  wire        s_axis_cartesian_tvalid, // 输入I/Q有效
    output wire        s_axis_cartesian_tready, // stub始终跟随下游ready
    input  wire [31:0] s_axis_cartesian_tdata,  // {Q[15:0],I[15:0]}
    output wire        m_axis_dout_tvalid,      // stub将输入valid直接透传
    input  wire        m_axis_dout_tready,      // 下游接收能力
    output wire [47:0] m_axis_dout_tdata        // 真实IP应输出{phase,mag}
);

    // 简化握手模型：只有下游ready时才允许上游发送。
    assign s_axis_cartesian_tready = m_axis_dout_tready;

    // 不模拟IP流水线延迟，仅透传valid，方便模块层次和端口检查。
    assign m_axis_dout_tvalid = s_axis_cartesian_tvalid;

    // stub不包含CORDIC算法，因此输出固定为0。
    assign m_axis_dout_tdata = 48'd0;

endmodule
