`timescale 1ns/1ps
`default_nettype none

//======================================================================
// 模块名称：adc_signal_source
//
// 功能：
//   以固定采样率生成 CW / AM / FM 离散采样值，并量化为
//   双极性有符号 ADC 数据。
//
// 兼容性：
//   - 使用 Verilog-2001 风格端口与数据类型；
//   - 不使用 package、logic、longint、int unsigned 等较新的语法；
//   - real、$sin、$cos、$rtoi 仅用于仿真，本模块不可综合。
//
// 注意：
//   本文件应只加入 Vivado 的 Simulation Sources。
//======================================================================

module adc_signal_source #(
    parameter integer ADC_BITS             = 14,
    parameter integer SAMPLE_RATE_HZ        = 60000000,
    parameter integer CARRIER_FREQ_HZ       = 2000000,
    parameter real    ADC_FULL_SCALE_PEAK_V = 0.5,
    parameter real    CARRIER_PEAK_V        = 0.05,
    parameter real    INITIAL_PHASE_RAD     = 0.0
) (
    input  wire                         clk,
    input  wire                         rst_n,
    input  wire                         enable,
    input  wire                         sample_restart,

    // 0=CW，1=AM，2=FM
    input  wire [1:0]                   signal_mode,

    // 为提高 Vivado 2018.3 兼容性，参数控制端口统一为 32 bit
    input  wire [31:0]                  mod_freq_hz,
    input  wire [31:0]                  am_index_milli,
    input  wire [31:0]                  fm_index_milli,

    output reg signed [ADC_BITS-1:0]    adc_data,
    output reg                          adc_valid
);

    localparam real TWO_PI = 6.28318530717958647692;
    localparam integer ADC_CODE_MAX = (1 << (ADC_BITS - 1)) - 1;
    localparam integer ADC_CODE_MIN = -(1 << (ADC_BITS - 1));

    integer sample_index;

    real t_sec;
    real carrier_phase_rad;
    real mod_phase_rad;
    real am_index;
    real fm_index;
    real sample_voltage_v;
    real scaled_adc_code;

    integer rounded_adc_code;
    integer saturated_adc_code;

    //------------------------------------------------------------------
    // 每个采样时钟产生一个量化样本
    //------------------------------------------------------------------
    always @(posedge clk) begin
        if (!rst_n) begin
            sample_index <= 0;
            adc_data     <= {ADC_BITS{1'b0}};
            adc_valid    <= 1'b0;
        end
        else if (sample_restart) begin
            sample_index <= 0;
            adc_data     <= {ADC_BITS{1'b0}};
            adc_valid    <= 1'b0;
        end
        else if (enable) begin
            // 使用样本编号计算时间，避免 60 MHz 时钟的 ps 级延时舍入
            t_sec = sample_index * (1.0 / SAMPLE_RATE_HZ);

            carrier_phase_rad =
                TWO_PI * CARRIER_FREQ_HZ * t_sec + INITIAL_PHASE_RAD;

            mod_phase_rad =
                TWO_PI * mod_freq_hz * t_sec;

            am_index = am_index_milli / 1000.0;
            fm_index = fm_index_milli / 1000.0;

            case (signal_mode)
                2'd0: begin
                    // CW：
                    // u(t)=Ac*cos(2*pi*fc*t+phi0)
                    sample_voltage_v =
                        CARRIER_PEAK_V * $cos(carrier_phase_rad);
                end

                2'd1: begin
                    // AM：
                    // u(t)=Ac*[1+ma*cos(2*pi*F*t)]
                    //      *cos(2*pi*fc*t+phi0)
                    sample_voltage_v =
                        CARRIER_PEAK_V
                        * (1.0 + am_index * $cos(mod_phase_rad))
                        * $cos(carrier_phase_rad);
                end

                2'd2: begin
                    // FM：
                    // u(t)=Ac*cos[2*pi*fc*t
                    //              +mf*sin(2*pi*F*t)+phi0]
                    sample_voltage_v =
                        CARRIER_PEAK_V
                        * $cos(
                            carrier_phase_rad
                            + fm_index * $sin(mod_phase_rad)
                        );
                end

                default: begin
                    sample_voltage_v = 0.0;
                end
            endcase

            // 电压映射到 ADC 码值
            scaled_adc_code =
                sample_voltage_v
                * ADC_CODE_MAX
                / ADC_FULL_SCALE_PEAK_V;

            // 四舍五入
            if (scaled_adc_code >= 0.0)
                rounded_adc_code = $rtoi(scaled_adc_code + 0.5);
            else
                rounded_adc_code = $rtoi(scaled_adc_code - 0.5);

            // 饱和
            if (rounded_adc_code > ADC_CODE_MAX)
                saturated_adc_code = ADC_CODE_MAX;
            else if (rounded_adc_code < ADC_CODE_MIN)
                saturated_adc_code = ADC_CODE_MIN;
            else
                saturated_adc_code = rounded_adc_code;

            adc_data  <= saturated_adc_code;
            adc_valid <= 1'b1;
            sample_index <= sample_index + 1;
        end
        else begin
            adc_data  <= {ADC_BITS{1'b0}};
            adc_valid <= 1'b0;
        end
    end

endmodule

`default_nettype wire
