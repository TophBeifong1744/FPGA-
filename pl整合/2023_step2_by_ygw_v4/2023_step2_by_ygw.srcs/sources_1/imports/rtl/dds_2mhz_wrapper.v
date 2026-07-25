`timescale 1ns/1ps
`default_nettype none

//======================================================================
// 2023 电赛 D 题：第一级步骤3
// 固定频率正交 LUT-NCO
//
// 环境：Vivado 2018.3 / XC7Z020-CLG400-2
//
// Fs = 60 MHz，Fc = 2 MHz，因此每个载波周期正好30个采样点。
// 本模块使用30点查找表产生：
//   lo_cos     = cos(2*pi*Fc*t)
//   lo_neg_sin = -sin(2*pi*Fc*t)
//
// 特点：
//   - 完全可综合；
//   - 不依赖DDS Compiler、XCI或加密仿真模型；
//   - 输出频率精确为60 MHz / 30 = 2 MHz；
//   - 适合本赛题固定2 MHz载频；
//   - 复位释放后每个时钟输出一组有效正交样本。
//======================================================================

module dds_2mhz_wrapper (
    input  wire               clk,
    input  wire               rst_n,

    output reg signed [15:0]  lo_cos,
    output reg signed [15:0]  lo_neg_sin,
    output reg                lo_valid
);

    reg [4:0] phase_index;

    always @(posedge clk) begin
        if (!rst_n) begin
            phase_index <= 5'd0;
            lo_cos      <= 16'sd0;
            lo_neg_sin  <= 16'sd0;
            lo_valid    <= 1'b0;
        end
        else begin
            lo_valid <= 1'b1;

            case (phase_index)
                5'd 0: begin lo_cos <= 16'sd32767; lo_neg_sin <= 16'sd0; end
                5'd 1: begin lo_cos <= 16'sd32051; lo_neg_sin <= -16'sd6813; end
                5'd 2: begin lo_cos <= 16'sd29934; lo_neg_sin <= -16'sd13328; end
                5'd 3: begin lo_cos <= 16'sd26509; lo_neg_sin <= -16'sd19260; end
                5'd 4: begin lo_cos <= 16'sd21925; lo_neg_sin <= -16'sd24351; end
                5'd 5: begin lo_cos <= 16'sd16384; lo_neg_sin <= -16'sd28377; end
                5'd 6: begin lo_cos <= 16'sd10126; lo_neg_sin <= -16'sd31163; end
                5'd 7: begin lo_cos <= 16'sd3425; lo_neg_sin <= -16'sd32587; end
                5'd 8: begin lo_cos <= -16'sd3425; lo_neg_sin <= -16'sd32587; end
                5'd 9: begin lo_cos <= -16'sd10126; lo_neg_sin <= -16'sd31163; end
                5'd10: begin lo_cos <= -16'sd16383; lo_neg_sin <= -16'sd28377; end
                5'd11: begin lo_cos <= -16'sd21925; lo_neg_sin <= -16'sd24351; end
                5'd12: begin lo_cos <= -16'sd26509; lo_neg_sin <= -16'sd19260; end
                5'd13: begin lo_cos <= -16'sd29934; lo_neg_sin <= -16'sd13328; end
                5'd14: begin lo_cos <= -16'sd32051; lo_neg_sin <= -16'sd6813; end
                5'd15: begin lo_cos <= -16'sd32767; lo_neg_sin <= 16'sd0; end
                5'd16: begin lo_cos <= -16'sd32051; lo_neg_sin <= 16'sd6813; end
                5'd17: begin lo_cos <= -16'sd29934; lo_neg_sin <= 16'sd13328; end
                5'd18: begin lo_cos <= -16'sd26509; lo_neg_sin <= 16'sd19260; end
                5'd19: begin lo_cos <= -16'sd21925; lo_neg_sin <= 16'sd24351; end
                5'd20: begin lo_cos <= -16'sd16384; lo_neg_sin <= 16'sd28377; end
                5'd21: begin lo_cos <= -16'sd10126; lo_neg_sin <= 16'sd31163; end
                5'd22: begin lo_cos <= -16'sd3425; lo_neg_sin <= 16'sd32587; end
                5'd23: begin lo_cos <= 16'sd3425; lo_neg_sin <= 16'sd32587; end
                5'd24: begin lo_cos <= 16'sd10126; lo_neg_sin <= 16'sd31163; end
                5'd25: begin lo_cos <= 16'sd16384; lo_neg_sin <= 16'sd28377; end
                5'd26: begin lo_cos <= 16'sd21925; lo_neg_sin <= 16'sd24351; end
                5'd27: begin lo_cos <= 16'sd26509; lo_neg_sin <= 16'sd19260; end
                5'd28: begin lo_cos <= 16'sd29934; lo_neg_sin <= 16'sd13328; end
                5'd29: begin lo_cos <= 16'sd32051; lo_neg_sin <= 16'sd6813; end
                default: begin
                    lo_cos     <= 16'sd0;
                    lo_neg_sin <= 16'sd0;
                end
            endcase

            if (phase_index == 5'd29)
                phase_index <= 5'd0;
            else
                phase_index <= phase_index + 5'd1;
        end
    end

endmodule

`default_nettype wire
