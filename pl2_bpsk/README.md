# PL2：并行特征提取与完整 2PSK 解调

本目录是“2023 年全国大学生电子设计竞赛 D 题——信号调制方式识别与参数估计装置”的第二级 PL 实现。

PL2 接收第一级输出的低速复基带 I/Q：一条支路并行生成 AM、FM、CW、2ASK、2PSK、2FSK 分类所需的幅度、瞬时频率、统计量和直方图；另一条支路对 2PSK 完成 Costas 载波同步、6/8/10 kbps 码率识别、位定时恢复、二进制码元和双极性 NRZ 输出。

推荐综合顶层：

```text
demod_pool_core_bpsk.v
```

当前 Vivado 工程的 Design Sources Top 已设置为 `demod_pool_core_bpsk`，集成仿真顶层为 `tb_demod_pool_core_bpsk`。

## 1. 整体效果

```text
PL1：1 MSPS、signed 16-bit Q1.14 复基带 I/Q
                          │
                          ▼
              demod_pool_core_bpsk
                          │
          ┌───────────────┴───────────────┐
          │                               │
          ▼                               ▼
   原并行特征提取支路                完整 2PSK 接收支路
   CORDIC 幅度/相位                  复数 Costas 环
   相位差分与回绕                    6/8/10 kbps 识别
   均值/方差/直方图                  位定时恢复
   2PSK 相位尖峰检测                 中心判决
          │                               │
          ▼                               ▼
   mag/dphi/var/hist/               bit/bit_valid/NRZ/
   spike_count/psk_flag             载波锁定/定时锁定/码率
```

| 输入 | PL2 当前效果 | 尚未在本级完成 |
|---|---|---|
| AM | `mag_out` 恢复包络，输出幅度统计量和直方图 | 调幅系数最终计算 |
| FM | `dphi_out` 反映瞬时相位增量，输出频率统计量和直方图 | 最大频偏、调频系数最终计算 |
| CW | 提供幅度/频率低方差特征 | PS 最终类别判决 |
| 2ASK | 提供幅度双电平特征和幅度直方图 | 最终码元恢复和码速率计算 |
| 2FSK | 提供频率双电平特征和频率直方图 | 最终码元恢复和码速率计算 |
| 2PSK | 相位尖峰候选标志；完整载波同步、码率、位同步、bit 和 NRZ | 协议级极性消歧、真实硬件标定 |

PL2 不在 PL 内硬编码六类信号的最终决策树；它输出分类特征及完整 2PSK 解调结果。

## 2. 输入接口与有效时序

| 端口 | 位宽 | 含义 |
|---|---:|---|
| `aclk` | 1 | PL 时钟，可使用 60 MHz 或 100 MHz |
| `aresetn` | 1 | 同步低有效复位 |
| `s_i` | signed 16 | I 路复基带，Q1.14 |
| `s_q` | signed 16 | Q 路复基带，Q1.14 |
| `s_valid` | 1 | 当前 I/Q 样点有效 |
| `s_ready` | 1 | PL2 可以接收当前样点 |

预期上游链路为：

```text
ADC -> 2 MHz DDC -> CIC/FIR/低通抽取 -> 1 MSPS 复基带 I/Q -> Q1.14
```

当前 BPSK 环路与码率常数按 **1 MSPS 有效采样率**设计。有效采样率由成功握手的样点定义，不是 `aclk` 频率：

```verilog
sample_accept = s_valid && s_ready;
```

只有 `sample_accept=1` 时两条支路才接收新样点。`s_valid=1 && s_ready=0` 时，上游必须保持 I/Q 不变。若上下级不在同一时钟域，应加入异步 AXI4-Stream FIFO。

## 3. 固定点和相位格式

输入 I/Q 为 signed Q1.14：

```text
实际值 = 整数值 / 16384
+0.5 -> +8192
-0.5 -> -8192
```

原特征核的 Xilinx CORDIC 输出 24 位 Scaled Radians：

```text
pi   = 2^21
2*pi = 2^22
magnitude = mag_out / 2^22
phase_rad = phase_raw / 2^21 * pi
f_inst_hz = dphi_out * Fs / 2^22
```

Costas 环内部 NCO 使用另一种 24 位无符号 Q0.24 周相位：

```text
0x000000 = 0
0x400000 = pi/2
0x800000 = pi
0xC00000 = 3*pi/2
```

这两种相位格式不能直接混用。

## 4. 并行特征提取支路

### 4.1 幅度和瞬时频率

一个 CORDIC Translate IP 同时计算：

```text
mag[n]   = sqrt(I[n]^2 + Q[n]^2)
phase[n] = atan2(Q[n], I[n])
dphi[n]  = wrap(phase[n] - phase[n-1])
```

`phase_diff_wrap.v` 把相位差回绕到 `[-pi,+pi)`。

| 输出 | 含义 |
|---|---|
| `mag_out` | AM/2ASK 幅度或包络候选波形 |
| `dphi_out` | signed 瞬时相位增量，FM/2FSK 候选波形 |
| `feature_valid` | 当前 `mag_out/dphi_out` 有效 |

相位差需要前后两个点，因此复位后的第一个 accepted sample 不产生 `feature_valid`：

```text
feature_valid 数量 = accepted sample 数量 - 1
```

### 4.2 统计量、直方图和窗口

默认 `LGN=13`，每 8192 个有效特征更新一次：

| 输出 | 含义 |
|---|---|
| `mean_mag_num` | 幅度累加值 |
| `var_mag_num` | 幅度方差分子 |
| `mean_freq_num` | 相位增量累加值 |
| `var_freq_num` | 频率方差分子 |
| `hist_mag_rd_data` | 16 档幅度直方图读数据 |
| `hist_freq_rd_data` | 16 档频率直方图读数据 |
| `frame_done` | 特征帧完成，单周期脉冲 |

方差采用无除法形式：

```text
var_num = N * sum(x^2) - sum(x)^2 = N^2 * variance
```

### 4.3 2PSK 相位尖峰特征

`psk_spike_detector.v` 对接近 pi 的相位跳变计数：

- `psk_spike_count`：完成窗口内的尖峰数量；
- `psk_flag`：尖峰数量达到起始门限后的 2PSK 候选标志；
- `MAG_GATE`：屏蔽低幅度区，避免把 2ASK 低电平附近的随机相位误判为 2PSK。

`psk_flag` 是识别特征，不等同于二进制解调结果；完整解调由下面的 BPSK 支路完成。

## 5. 完整 2PSK 接收支路

### 5.1 Costas 载波同步

`bpsk_costas_loop.v` 包括 24 位 NCO、复数下变频、一阶低通、判决导向误差 `sign(I)*Q`、二阶 PI 环路以及锁定/失锁判断。默认频率字限幅对应 `Fs=1 MHz` 下约 `±25 kHz`。

环路状态只在 accepted sample 时更新，因此 valid 空洞不会被当成额外样点。

### 5.2 码率识别

`bpsk_rate_detector.v` 根据恢复后硬判决的跳变间隔，在三种码率中评分：

| `bpsk_rate_code` | 码率 |
|---:|---:|
| `2'b00` | 未识别/未锁定 |
| `2'b01` | 6 kbps |
| `2'b10` | 8 kbps |
| `2'b11` | 10 kbps |

### 5.3 位定时和最终输出

`bpsk_timing_recovery.v` 使用 32 位小数相位累加器，在估计的码元中心判决。

| 输出 | 含义 | 正常标准 |
|---|---|---|
| `bpsk_carrier_locked` | Costas 环锁定 | 捕获后为 1 并保持 |
| `bpsk_timing_locked` | 位定时锁定 | 码率确定后为 1 |
| `bpsk_rate_code` | 码率编码 | 与输入 6/8/10 kbps 对应 |
| `bpsk_bit_data` | 当前二进制码元 | 只在 `bpsk_bit_valid=1` 时读取 |
| `bpsk_bit_valid` | 码元有效脉冲 | 每码元一个时钟周期 |
| `bpsk_symbol_strobe` | 中心抽样脉冲 | 必须与 `bpsk_bit_valid` 对齐 |
| `bpsk_nrz_out` | Q1.14 双极性 NRZ | bit 1 为 +8192，bit 0 为 -8192 |
| `bpsk_sample_valid` | 恢复基带样点有效 | 锁定后随有效样点产生 |

BPSK Costas 环存在固有的 180° 全局相位模糊，输出序列可能整体反相。若系统要求固定 0/1 极性，需要在后级增加前导码、差分编码/解码或其他协议消歧。

## 6. 推荐顶层及 BRAM

`demod_pool_core_bpsk.v` 包装原 `demod_pool_core.v`，保持原有特征接口，同时把相同的 accepted I/Q 并行送入 `bpsk_rx_chain.v`。

```text
PL1 I/Q Q1.14 + valid/ready
              │
              ▼
demod_pool_core_bpsk
   ├── mag/dphi/mean/var/hist/spike/psk_flag -> PS 分类和参数估计
   └── BPSK bit/NRZ/lock/rate              -> 缓存、显示或协议处理
```

`feature_bram_writer.v` 是可选独立模块，没有在 `demod_pool_core_bpsk` 内自动例化。需要 PS 读取特征 BRAM 时，应在 Block Design 或更高层中单独连接。

建议 BRAM word 地址：

| Word | 内容 |
|---:|---|
| 0 | 完整帧序号 `sequence` |
| 1～2 | `var_mag_num` 低/高 32 位 |
| 3～4 | `var_freq_num` 低/高 32 位 |
| 5 | `mean_mag_num` |
| 6 | `mean_freq_num` |
| 7 | `{psk_flag, psk_spike_count[30:0]}` |
| 8～23 | `HIST_MAG[0..15]` |
| 24～39 | `HIST_FREQ[0..15]` |

## 7. 源码结构

Vivado 工程：

```text
2023_step2_by_ygw/2023_step2_by_ygw.xpr
```

实际 RTL：

```text
2023_step2_by_ygw/2023_step2_by_ygw.srcs/sources_1/imports/rtl/
```

| 文件 | 功能 |
|---|---|
| `demod_pool_core_bpsk.v` | 推荐 PL2 顶层，集成原特征核和 BPSK 链 |
| `demod_pool_core.v` | CORDIC、统计、直方图和尖峰检测原顶层 |
| `phase_diff_wrap.v` | 相位差分及 ±pi 回绕 |
| `running_stats16.v` | 均值/方差分子 |
| `hist16_snapshot.v` | 16 档直方图及窗口快照 |
| `psk_spike_detector.v` | 带幅度门控的 PSK 尖峰检测 |
| `feature_bram_writer.v` | 可选特征 BRAM 写入状态机 |
| `bpsk_nco_lut.v` | 256 相位点 Costas NCO |
| `bpsk_costas_loop.v` | 载波同步、混频、低通、PI 环和锁定检测 |
| `bpsk_rate_detector.v` | 6/8/10 kbps 自动识别 |
| `bpsk_timing_recovery.v` | 位定时、中心判决和 NRZ 输出 |
| `bpsk_rx_chain.v` | BPSK 子模块连接层 |

## 8. 仿真方法

正确设置：

```text
Design Sources Top     = demod_pool_core_bpsk
Simulation Sources Top = 对应 testbench
```

不要把 DUT `demod_pool_core_bpsk` 本身设置成仿真顶层，否则没有时钟、复位和 I/Q 激励。

| 仿真顶层 | 作用 |
|---|---|
| `tb_bpsk_rx_chain` | 6/8/10 kbps 和 ±5 kHz 频偏回归 |
| `tb_bpsk_reacquire` | 信号中断、失锁及改变码率后的重新捕获 |
| `tb_demod_pool_core_bpsk` | 使用真实 Xilinx CORDIC 的完整集成回归 |

GUI 中应选择 **Run All**。集成测试约在 1.88 ms 仿真时间结束；只运行默认 1000 ns 时，锁定和码元输出仍为 0 是正常现象。

批量运行全部 XSim：

```powershell
D:\Vivado\2018.3\bin\vivado.bat `
  -mode batch `
  -source .\pl2\2023_step2_by_ygw\verification\run_all_bpsk_xsim.tcl
```

定点参考模型：

```powershell
python .\pl2\2023_step2_by_ygw\verification\bpsk_fixed_reference.py
```

## 9. 已验证结果

结果记录在 `2023_step2_by_ygw/verification/TEST_RESULTS.md`：

- 定点参考模型 48/48 通过；
- 覆盖 6/8/10 kbps、-5 kHz～+5 kHz 残余频偏、三个初相、低幅度加噪和 valid 空洞；
- `tb_bpsk_rx_chain` 6/6 通过，最小误码数 0；
- `tb_bpsk_reacquire` 正确失锁和重新捕获，最小误码数 0；
- 真实 CORDIC 集成仿真通过；
- 37500 个 accepted 输入得到 37499 个 `feature_valid`；
- 集成测试得到 4 个统计帧、`psk_flag=1`；
- 8 kbps 输入识别为 `bpsk_rate_code=2`，输出 282 个有效码元，最小误码数 0。

集成回归结束时应看到：

```text
INTEGRATED accepted=37500 feature=37499 frames=4 ... code=2 bits=282 min_errors=0
PASS: tb_demod_pool_core_bpsk real CORDIC integration
```

## 10. 波形验收重点

1. `s_valid && s_ready` 时 I/Q 非零且稳定；
2. `bpsk_carrier_locked` 捕获后保持为 1；
3. Costas 恢复后的 Q 路趋近 0，I 路呈正负双极性；
4. `bpsk_rate_code` 与输入码率一致；
5. `bpsk_timing_locked` 最终为 1；
6. `bpsk_bit_valid == bpsk_symbol_strobe`；
7. `bpsk_nrz_out` 只在 +8192/-8192 两个电平间变化；
8. `feature_valid` 数量等于 accepted sample 数量减 1；
9. 每 8192 个有效特征产生一次 `frame_done`；
10. 误码比较允许全局反相，正向与反相结果中的较小误码数应为 0。

## 11. 常见输出全零原因

- 仿真顶层误设为 `demod_pool_core_bpsk`，没有 testbench 激励；
- 仍在仿真旧 `design_1_wrapper`，旧 Block Design 的输入曾连接常量零；
- 只运行默认 1000 ns，同步环尚未捕获；
- `aresetn` 没有释放；
- 没有发生 `s_valid && s_ready`；
- 输入有效采样率、位宽或 Q1.14 格式不匹配。

## 12. 当前未包含范围

- 第一级 ADC 驱动、2 MHz DDC、CIC/FIR 抽取；
- PS 端六类调制方式的最终决策树；
- AM 调幅系数、FM 最大频偏和调频系数的最终计算；
- 2ASK/2FSK 的最终码元恢复及统一码速率输出；
- Smart MUX、DAC 驱动和显示界面；
- 根据真实硬件数据完成的最终阈值及环路参数标定；
- BPSK 全局 180° 极性的协议级消歧。

## 13. 综合与时序状态

已提供 OOC 综合脚本：

```powershell
D:\Vivado\2018.3\bin\vivado.bat `
  -mode batch `
  -source .\pl2\2023_step2_by_ygw\verification\run_bpsk_ooc_project.tcl
```

当前机器的 Vivado 2018.3 在 RTL elaboration 后会出现 `TclStackFree: incorrect freePtr` 运行时崩溃；该故障对单触发器工程也可以复现，因此不是当前 BPSK RTL 特有问题。

目前可以确认定点模型和 XSim 功能仿真通过，但不能声称综合、资源占用和时序通过。修复 Vivado 环境后必须重新综合并确认：

```text
WNS >= 0
TNS = 0
```

## 14. 相关文档

- `BPSK_RECEIVER.md`：BPSK 固定点和环路设计摘要；
- `README_DEVELOPMENT.md`：CORDIC、Block Design、BRAM 和 PS 连接说明；
- `2023_step2_by_ygw/README_BPSK.md`：BPSK 模块使用手册；
- `2023_step2_by_ygw/verification/TEST_RESULTS.md`：已执行测试结果；
- `2023_step2_by_ygw/verification/run_all_bpsk_xsim.tcl`：全部 XSim 回归脚本。