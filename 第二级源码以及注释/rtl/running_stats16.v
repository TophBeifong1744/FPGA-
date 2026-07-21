`timescale 1ns/1ps

// =============================================================================
// 模块名称：running_stats16
// 功能说明：
//   对连续输入的 16 位有符号样本按固定窗口进行统计，输出：
//     1. mean_num = sum(x)
//     2. var_num  = N * sum(x^2) - sum(x)^2 = N^2 * variance
//
//   为避免 FPGA 内部实现除法，本模块只输出均值分子和方差分子。
//   PS 端若需要实际均值和方差，可按下面公式换算：
//     mean     = mean_num / N
//     variance = var_num  / (N * N)
//
// 窗口长度：
//   N = 2^LGN。默认 LGN=13，因此每 8192 个有效样本形成一帧。
//
// 时序设计：
//   原始版本把平方、移位和 64 位减法放在同一周期内，在 100 MHz 下
//   容易形成长组合路径。本版本把窗口结算拆成三个阶段：
//     阶段0：锁存本窗口最终 sum 和 sumsq；
//     阶段1：并行计算 sum^2 和 N*sumsq；
//     阶段2：执行 64 位减法并输出结果。
//   新窗口的正常累加不会被结算流水线阻塞，因此仍可每个时钟接收一个样本。
//
// 语言与工具：纯 Verilog-2001，适用于 Vivado 2018.3。
// =============================================================================
module running_stats16 #(
    parameter integer LGN = 13          // 窗口长度的以2为底的对数
) (
    input  wire                aclk,    // 模块工作时钟
    input  wire                aresetn, // 低有效同步复位
    input  wire signed [15:0]  x,       // 当前16位有符号统计样本
    input  wire                in_valid,// x 有效；只有该信号为1时才计数和累加

    output reg  signed [31:0]  mean_num,// 当前已完成窗口的 sum(x)
    output reg  [63:0]         var_num, // 当前已完成窗口的方差分子
    output reg                 window_done // 结果更新脉冲，宽度为1个时钟
);

    // 窗口包含的有效样本数。LGN=13 时 N=8192。
    localparam integer N = (1 << LGN);

    // -------------------------------------------------------------------------
    // 实时累加区：用于正在接收的当前窗口。
    // -------------------------------------------------------------------------
    reg [LGN-1:0]     count;  // 已接收样本计数，范围0～N-1
    reg signed [31:0] sum;    // 当前窗口的 sum(x)
    reg [47:0]        sumsq;  // 当前窗口的 sum(x^2)

    // 将16位输入进行符号扩展，便于后续32位加法。
    wire signed [31:0] x_ext;
    assign x_ext = {{16{x[15]}}, x};

    // 当前样本平方。16位输入平方最多需要32位。
    // Vivado通常会将该乘法映射到DSP48资源。
    wire signed [31:0] x_square_signed;
    wire        [31:0] x_square;
    assign x_square_signed = x_ext * x_ext;
    assign x_square        = x_square_signed[31:0];

    // 将当前有效样本加入累加器后得到的“下一值”。
    // 在窗口最后一个样本到来时，必须使用这些下一值进行结算，
    // 否则会漏掉窗口中的最后一个样本。
    wire signed [31:0] sum_next;
    wire        [47:0] sumsq_next;
    assign sum_next   = sum   + x_ext;
    assign sumsq_next = sumsq + {16'd0, x_square};

    // -------------------------------------------------------------------------
    // 结算流水线阶段0：锁存一个完整窗口的最终累加结果。
    // -------------------------------------------------------------------------
    reg signed [31:0] final_sum;
    reg        [47:0] final_sumsq;
    reg               final_valid;

    // -------------------------------------------------------------------------
    // 结算流水线阶段1：并行形成公式中的两个64位项。
    // -------------------------------------------------------------------------
    reg signed [31:0] mean_pipe;
    reg        [63:0] n_sumsq_pipe;

    // 提示综合器优先使用DSP资源实现平方运算。
    (* use_dsp = "yes" *) reg [63:0] sum_square_pipe;
    reg                         calc_valid;

    // final_sum^2。结果恒为非负数，但乘法输入保持有符号解释，
    // 以便负的 final_sum 也能得到正确平方值。
    wire signed [63:0] final_sum_square;
    assign final_sum_square = $signed(final_sum) * $signed(final_sum);

    // N=2^LGN，因此乘以N可以直接通过左移完成，无需乘法器。
    wire [63:0] final_n_sumsq;
    assign final_n_sumsq = ({16'd0, final_sumsq} << LGN);

    // -------------------------------------------------------------------------
    // 主时序过程。
    // 所有状态和输出均在 aclk 上升沿更新；aresetn 为低时同步清零。
    // -------------------------------------------------------------------------
    always @(posedge aclk) begin
        if (!aresetn) begin
            // 清空当前窗口累加器。
            count           <= {LGN{1'b0}};
            sum             <= 32'sd0;
            sumsq           <= 48'd0;

            // 清空窗口结算流水线。
            final_sum       <= 32'sd0;
            final_sumsq     <= 48'd0;
            final_valid     <= 1'b0;
            mean_pipe       <= 32'sd0;
            n_sumsq_pipe    <= 64'd0;
            sum_square_pipe <= 64'd0;
            calc_valid      <= 1'b0;

            // 清空模块可见输出。
            mean_num        <= 32'sd0;
            var_num         <= 64'd0;
            window_done     <= 1'b0;
        end else begin
            // valid/done均设计成单周期脉冲，默认每周期先拉低。
            final_valid <= 1'b0;
            window_done <= 1'b0;

            // 流水线阶段1：对阶段0锁存的完整窗口执行平方和移位。
            calc_valid <= final_valid;
            if (final_valid) begin
                mean_pipe       <= final_sum;
                n_sumsq_pipe    <= final_n_sumsq;
                sum_square_pipe <= final_sum_square[63:0];
            end

            // 流水线阶段2：完成方差分子的减法并更新输出。
            // window_done 与 mean_num/var_num 同周期有效。
            if (calc_valid) begin
                mean_num    <= mean_pipe;
                var_num     <= n_sumsq_pipe - sum_square_pipe;
                window_done <= 1'b1;
            end

            // 只有 in_valid=1 才把 x 计入窗口，输入空拍不会改变统计结果。
            if (in_valid) begin
                if (count == N-1) begin
                    // 当前x是本窗口最后一个样本：锁存包含当前x的最终结果。
                    final_sum   <= sum_next;
                    final_sumsq <= sumsq_next;
                    final_valid <= 1'b1;

                    // 立即清空实时累加器，下一有效样本属于下一窗口。
                    count <= {LGN{1'b0}};
                    sum   <= 32'sd0;
                    sumsq <= 48'd0;
                end else begin
                    // 普通样本：更新计数、和值与平方和。
                    count <= count + 1'b1;
                    sum   <= sum_next;
                    sumsq <= sumsq_next;
                end
            end
        end
    end

endmodule
