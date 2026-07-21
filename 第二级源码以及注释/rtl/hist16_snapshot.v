`timescale 1ns/1ps

// =============================================================================
// 模块名称：hist16_snapshot
// 功能说明：16档直方图统计，并在每个窗口结束时生成稳定快照。
//
// 内部采用两组存储：
//   live[0:15]：统计当前正在接收的窗口；
//   snap[0:15]：保存最近一个完整窗口，供外部异步读取。
//
// 使用双数组的原因：外部writer读取snap时，live仍可以继续统计下一帧，
// 两者互不干扰，不会读取到“正在变化的半帧直方图”。
// =============================================================================
module hist16_snapshot #(
    parameter integer LGN = 13
) (
    input  wire          aclk,       // 工作时钟
    input  wire          aresetn,    // 低有效同步复位
    input  wire [3:0]    bin,        // 当前样本所属档号，范围0～15
    input  wire          in_valid,   // 当前bin有效
    input  wire          bin_enable, // 为0时样本参与窗口计数，但不增加任何bin

    input  wire [3:0]    rd_addr,    // snap数组读取地址
    output reg  [31:0]   rd_data,    // snap[rd_addr]组合读数据
    output reg           window_done // 新快照产生脉冲，宽度1个时钟
);

    localparam integer N = (1 << LGN);

    reg [LGN-1:0] count;       // 当前窗口有效样本计数
    reg [31:0] live [0:15];    // 当前窗口的实时计数
    reg [31:0] snap [0:15];    // 最近完整窗口的冻结快照
    integer k;                 // 复位和快照复制循环变量

    // 组合读取使writer可在同一周期给出地址并获得相应bin数据。
    always @* begin
        rd_data = snap[rd_addr];
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            count       <= {LGN{1'b0}};
            window_done <= 1'b0;

            // 清空实时统计与快照。
            for (k=0; k<16; k=k+1) begin
                live[k] <= 32'd0;
                snap[k] <= 32'd0;
            end
        end else begin
            // window_done为单周期脉冲，默认拉低。
            window_done <= 1'b0;

            // 空拍不进入窗口计数，也不修改直方图。
            if (in_valid) begin
                if (count == N-1) begin
                    // 当前样本是窗口最后一个样本。
                    // 复制live时必须额外计入当前bin，否则最后一个样本会丢失。
                    for (k=0; k<16; k=k+1) begin
                        if (bin_enable && (bin == k[3:0]))
                            snap[k] <= live[k] + 1'b1;
                        else
                            snap[k] <= live[k];

                        // 快照完成后立即清空live，开始统计下一窗口。
                        live[k] <= 32'd0;
                    end

                    count       <= {LGN{1'b0}};
                    window_done <= 1'b1;
                end else begin
                    // 普通样本只增加对应bin；被门限屏蔽时不增加bin。
                    if (bin_enable)
                        live[bin] <= live[bin] + 1'b1;

                    // 即使bin_enable=0，该样本仍属于固定长度时间窗口。
                    count <= count + 1'b1;
                end
            end
        end
    end

endmodule
