`timescale 1ns/1ps

// =============================================================================
// 模块名称：phase_diff_wrap
// 功能说明：
//   保存上一有效相位，计算当前相位与上一相位的差值，并把差值包裹到
//   [-pi,+pi)附近，消除CORDIC相位跨越+pi/-pi边界时产生的2pi跳变。
//
// Scaled Radians格式：
//   对PHASE_W=24，整数值2^21代表pi，2^22代表2*pi。
//   本模块只在in_valid为1时更新上一相位；输入空拍不会破坏相邻关系。
// =============================================================================
module phase_diff_wrap #(
    parameter integer PHASE_W = 24
) (
    input  wire                       aclk,
    input  wire                       aresetn,
    input  wire signed [PHASE_W-1:0] phase_in, // 当前CORDIC相位
    input  wire                       in_valid, // phase_in有效
    output reg  signed [PHASE_W-1:0] dphi_out, // 包裹后的相邻相位差
    output reg                        out_valid // dphi_out有效
);

    // Scaled Radians格式包含3个整数相关位，其余为小数位。
    localparam integer FRAC_W = PHASE_W - 3;

    // 使用PHASE_W+1位常量和中间变量，防止相减和加减2pi时溢出。
    localparam signed [PHASE_W:0] PI_RAW =
        ({{PHASE_W{1'b0}}, 1'b1} <<< FRAC_W);
    localparam signed [PHASE_W:0] TWO_PI_RAW =
        ({{PHASE_W{1'b0}}, 1'b1} <<< (FRAC_W+1));

    reg signed [PHASE_W-1:0] phase_z1;     // 上一个有效相位
    reg                       have_prev;    // 是否已有可用于求差的上一相位
    reg signed [PHASE_W:0]   raw_diff;     // 未包裹差值
    reg signed [PHASE_W:0]   wrapped_diff; // 包裹后的扩展位宽差值

    // 组合计算当前相位差，并按范围决定是否补偿正负2pi。
    always @* begin
        // 两个操作数先符号扩展一位，避免PHASE_W位减法溢出。
        raw_diff = {phase_in[PHASE_W-1], phase_in} -
                   {phase_z1[PHASE_W-1], phase_z1};

        if (raw_diff >= PI_RAW)
            wrapped_diff = raw_diff - TWO_PI_RAW;
        else if (raw_diff < -PI_RAW)
            wrapped_diff = raw_diff + TWO_PI_RAW;
        else
            wrapped_diff = raw_diff;
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            phase_z1  <= {PHASE_W{1'b0}};
            have_prev <= 1'b0;
            dphi_out  <= {PHASE_W{1'b0}};
            out_valid <= 1'b0;
        end else begin
            // out_valid只在产生新相位差的周期拉高。
            out_valid <= 1'b0;

            if (in_valid) begin
                // 保存当前相位，作为下一有效样本的上一相位。
                phase_z1 <= phase_in;

                // 第一个相位没有前驱，因此数据可以计算但不能声明有效。
                dphi_out  <= wrapped_diff[PHASE_W-1:0];
                out_valid <= have_prev;
                have_prev <= 1'b1;
            end
        end
    end

endmodule
