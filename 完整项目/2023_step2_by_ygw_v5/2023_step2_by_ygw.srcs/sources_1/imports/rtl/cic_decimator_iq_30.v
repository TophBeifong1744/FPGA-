`timescale 1ns/1ps
`default_nettype none

//======================================================================
// 2023 电赛 D 题：第一级步骤5
// 模块名称：cic_decimator_iq_30
//
// 功能：
//   对I/Q两路30 bit signed混频结果执行三级CIC抽取。
//   输入采样率：60 MHz
//   抽取倍数：30
//   输出采样率：2 MHz
//
// CIC参数：
//   R = 30
//   N = 3
//   M = 1
//
// 位宽：
//   输入：30 bit signed
//   CIC最大直流增益：(R*M)^N = 30^3 = 27000
//   位宽增长：ceil(log2(27000)) = 15 bit
//   内部及输出：30 + 15 = 45 bit signed
//
// 结构：
//   60 MHz：三级积分器
//   每30个有效输入抽取一次
//   2 MHz：三级梳状器
//
// 说明：
//   - 完全可综合；
//   - 不依赖CIC Compiler IP或XCI；
//   - I/Q共用一个抽取计数器，保证输出严格同步；
//   - CIC内部允许二进制补码自然回绕，梳状器会消除回绕影响；
//   - 本步骤保留45 bit全精度，不在CIC内部截位。
//======================================================================

module cic_decimator_iq_30 (
    input  wire                         clk,
    input  wire                         rst_n,

    input  wire signed [29:0]           in_i,
    input  wire signed [29:0]           in_q,
    input  wire                         in_valid,

    output reg signed [44:0]            out_i,
    output reg signed [44:0]            out_q,
    output reg                          out_valid
);

    localparam integer INPUT_WIDTH = 30;
    localparam integer ACC_WIDTH   = 45;
    localparam integer DECIMATION  = 30;

    wire signed [ACC_WIDTH-1:0] in_i_ext;
    wire signed [ACC_WIDTH-1:0] in_q_ext;

    assign in_i_ext =
        {{(ACC_WIDTH-INPUT_WIDTH){in_i[INPUT_WIDTH-1]}}, in_i};

    assign in_q_ext =
        {{(ACC_WIDTH-INPUT_WIDTH){in_q[INPUT_WIDTH-1]}}, in_q};

    //------------------------------------------------------------------
    // 三级积分器：运行在输入采样率60 MHz
    //------------------------------------------------------------------
    reg signed [ACC_WIDTH-1:0] integrator1_i;
    reg signed [ACC_WIDTH-1:0] integrator2_i;
    reg signed [ACC_WIDTH-1:0] integrator3_i;

    reg signed [ACC_WIDTH-1:0] integrator1_q;
    reg signed [ACC_WIDTH-1:0] integrator2_q;
    reg signed [ACC_WIDTH-1:0] integrator3_q;

    //------------------------------------------------------------------
    // 三级梳状器延迟：只在抽取时刻更新
    //------------------------------------------------------------------
    reg signed [ACC_WIDTH-1:0] comb1_delay_i;
    reg signed [ACC_WIDTH-1:0] comb2_delay_i;
    reg signed [ACC_WIDTH-1:0] comb3_delay_i;

    reg signed [ACC_WIDTH-1:0] comb1_delay_q;
    reg signed [ACC_WIDTH-1:0] comb2_delay_q;
    reg signed [ACC_WIDTH-1:0] comb3_delay_q;

    //------------------------------------------------------------------
    // 当前抽取时刻的三级梳状差分
    //------------------------------------------------------------------
    wire signed [ACC_WIDTH-1:0] comb1_calc_i;
    wire signed [ACC_WIDTH-1:0] comb2_calc_i;
    wire signed [ACC_WIDTH-1:0] comb3_calc_i;

    wire signed [ACC_WIDTH-1:0] comb1_calc_q;
    wire signed [ACC_WIDTH-1:0] comb2_calc_q;
    wire signed [ACC_WIDTH-1:0] comb3_calc_q;

    assign comb1_calc_i = integrator3_i - comb1_delay_i;
    assign comb2_calc_i = comb1_calc_i  - comb2_delay_i;
    assign comb3_calc_i = comb2_calc_i  - comb3_delay_i;

    assign comb1_calc_q = integrator3_q - comb1_delay_q;
    assign comb2_calc_q = comb1_calc_q  - comb2_delay_q;
    assign comb3_calc_q = comb2_calc_q  - comb3_delay_q;

    //------------------------------------------------------------------
    // 0～29有效输入计数
    //------------------------------------------------------------------
    reg [5:0] decim_count;

    always @(posedge clk) begin
        if (!rst_n) begin
            integrator1_i <= 45'sd0;
            integrator2_i <= 45'sd0;
            integrator3_i <= 45'sd0;

            integrator1_q <= 45'sd0;
            integrator2_q <= 45'sd0;
            integrator3_q <= 45'sd0;

            comb1_delay_i <= 45'sd0;
            comb2_delay_i <= 45'sd0;
            comb3_delay_i <= 45'sd0;

            comb1_delay_q <= 45'sd0;
            comb2_delay_q <= 45'sd0;
            comb3_delay_q <= 45'sd0;

            decim_count <= 6'd0;

            out_i     <= 45'sd0;
            out_q     <= 45'sd0;
            out_valid <= 1'b0;
        end
        else begin
            // 默认仅产生一个时钟宽度的有效脉冲
            out_valid <= 1'b0;

            if (in_valid) begin
                // 三级积分器。级间寄存器会增加固定延迟，
                // 但不会改变CIC幅频响应。
                integrator1_i <= integrator1_i + in_i_ext;
                integrator2_i <= integrator2_i + integrator1_i;
                integrator3_i <= integrator3_i + integrator2_i;

                integrator1_q <= integrator1_q + in_q_ext;
                integrator2_q <= integrator2_q + integrator1_q;
                integrator3_q <= integrator3_q + integrator2_q;

                if (decim_count == (DECIMATION-1)) begin
                    decim_count <= 6'd0;

                    // 在2 MHz抽取时刻完成三级梳状差分。
                    comb1_delay_i <= integrator3_i;
                    comb2_delay_i <= comb1_calc_i;
                    comb3_delay_i <= comb2_calc_i;

                    comb1_delay_q <= integrator3_q;
                    comb2_delay_q <= comb1_calc_q;
                    comb3_delay_q <= comb2_calc_q;

                    out_i     <= comb3_calc_i;
                    out_q     <= comb3_calc_q;
                    out_valid <= 1'b1;
                end
                else begin
                    decim_count <= decim_count + 6'd1;
                end
            end
        end
    end

endmodule

`default_nettype wire
