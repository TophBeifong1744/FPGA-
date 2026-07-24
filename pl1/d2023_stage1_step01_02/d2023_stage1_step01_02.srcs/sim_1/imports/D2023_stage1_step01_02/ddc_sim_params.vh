`ifndef DDC_SIM_PARAMS_VH
`define DDC_SIM_PARAMS_VH

//======================================================================
// 2023 电赛 D 题：第一级仿真统一参数
// 兼容目标：Vivado 2018.3 / XSim / Zynq-7020
//
// 本文件使用 Verilog 宏，而不使用 SystemVerilog package，
// 以减少 Vivado 2018.3 的编译顺序和语言兼容问题。
//======================================================================

`define CLK_FREQ_HZ             60000000
`define CARRIER_FREQ_HZ         2000000
`define ADC_BITS                14

// 双极性 ADC 模拟满量程：-0.5 V ~ +0.5 V，即 1 Vpp
`define ADC_FULL_SCALE_PEAK_V   0.5

// 赛题规定载波为 100 mVpp，因此峰值为 50 mV
`define CARRIER_PEAK_V          0.05

// 第一轮回归测试参数
`define AM_MOD_FREQ_HZ          1000
`define AM_INDEX_MILLI          600

`define FM_MOD_FREQ_HZ          5000
`define FM_INDEX_MILLI          3000

`define INITIAL_PHASE_RAD       0.0

// 信号类型编码
`define SIG_CW                  2'd0
`define SIG_AM                  2'd1
`define SIG_FM                  2'd2

`endif
