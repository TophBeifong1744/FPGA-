# PL2 完整 2PSK 接收链

## 范围

本次新增内容只覆盖 PL2 的 2PSK 接收：二阶 Costas 载波同步、6/8/10 kbps 码率判定、位定时恢复、二进制码元和双极性 NRZ 输出。未修改一级 ADC/DDC/CIC/FIR、PS 六类最终决策树、AM/FM 最终参数计算、Smart MUX、DAC/显示和真实硬件阈值标定。

正式集成顶层为 `demod_pool_core_bpsk.v`。它包装原 `demod_pool_core.v`，保留原特征接口和真实 `cordic_translate_0`，并行加入 2PSK 接收支路；因此旧特征逻辑不需要改写。

## 固定点和相位格式

- 输入 `s_i/s_q`：16 位有符号 Q1.14，采样率按 accepted sample 计为 1 MSPS。
- 原 CORDIC 相位：24 位 Signed Fraction / Scaled Radians，`pi=2^21`，`2*pi=2^22`。
- Costas NCO：24 位无符号 Q0.24 周相位，`0x400000=pi/2`、`0x800000=pi`。它与 CORDIC 相位是不同格式，不直接混用。
- NCO 正弦/余弦：256 相位点、Q1.15 四分之一波表。
- 混频：两个 16×16 乘积先扩展到有符号 33 位相加，再对称舍入并饱和回 Q1.14。
- Costas 误差：`sign(I_lpf)*Q_lpf`；比例项左移 5，积分项算术右移 3；频率字限幅为 ±419430，对应 1 MSPS 下约 ±25 kHz。
- 基带低通：一阶 IIR，`y += (x-y)>>>3`。
- 位定时：32 位小数相位累加器；6/8/10 kbps 步长分别为 25769804、34359738、42949673。

## valid 规则

2PSK 支路只在 `s_valid && s_ready` 时接收样点。Costas 的相位、频率、低通和锁定计数只在 accepted sample 更新，时钟周期中的 valid 空洞不会被当成额外样点。包装顶层没有新增反压，`s_ready` 仍由原 CORDIC 独占产生，两条并行支路看到同一输入序列。

## 新输出

| 端口 | 含义 |
|---|---|
| `bpsk_carrier_locked` | Costas 载波锁定 |
| `bpsk_timing_locked` | 位定时锁定 |
| `bpsk_rate_code[1:0]` | 0 未知、1=6 kbps、2=8 kbps、3=10 kbps |
| `bpsk_bit_data` | 当前判决二进制码元 |
| `bpsk_bit_valid` | 每个有效码元一个周期脉冲 |
| `bpsk_symbol_strobe` | 码元中心抽样脉冲，与 `bpsk_bit_valid` 对齐 |
| `bpsk_nrz_out[15:0]` | Q1.14 双极性 NRZ，默认 ±8192 |
| `bpsk_sample_valid` | 锁定后每个恢复基带样点的有效脉冲 |

BPSK 存在不可消除的 180° 全局相位模糊，因此整段输出可能整体取反；示波器码形和码率不受影响，误码测试按原序列与全局反相二者中的较小值计算。

## 运行验证

定点参考模型：

```powershell
F:\STUDY\IT\Anaconda3\python.exe .\pl2\2023_step2_by_ygw\verification\bpsk_fixed_reference.py
```

三个 XSim 回归：

```powershell
D:\Vivado\2018.3\bin\vivado.bat -mode batch -source .\pl2\2023_step2_by_ygw\verification\run_all_bpsk_xsim.tcl
```

OOC 综合/100 MHz 时序：

```powershell
D:\Vivado\2018.3\bin\vivado.bat -mode batch -source .\pl2\2023_step2_by_ygw\verification\run_bpsk_ooc_project.tcl
```

当前机器的 Vivado 2018.3 综合进程连单触发器设计也会在 RTL elaboration 后以 `TclStackFree: incorrect freePtr` 崩溃；因此当前已有功能仿真结论，但没有声称综合/时序通过。修复或重装 Vivado 后必须执行最后一条命令并检查 `bpsk_ooc_utilization.rpt`、`bpsk_ooc_timing.rpt`。

