# 第二级：绝对并行特征提取（解调池层）

## 1. 模块定位

本目录实现信号调制方式识别与参数估计系统的第二级——**绝对并行特征提取/解调池层**。

本级位于第一级“前端降频与抽取”和第三级“智能识别与路由分配”之间：接收第一级输出的低速复基带 `I/Q` 样本，在 FPGA PL 内并行提取幅度、相位增量、统计量和 2PSK 相位跳变特征，再交给第三级 PS 程序完成 AM、FM、CW、2ASK、2PSK、2FSK 的最终判决。

本级只负责**产生可靠特征和候选解调波形**，不在 PL 内硬编码最终调制类型。

```text
模拟调制信号
    │
    ▼
第一级：ADC → DDC → CIC/FIR抽取 → 低速复基带I/Q
    │
    ▼
第二级：CORDIC → 幅度/频率/相位特征并行提取（本目录）
    │
    ├── 幅度波形 mag
    ├── 瞬时频率波形 dphi
    ├── VAR_MAG / HIST_MAG
    ├── VAR_FREQ / HIST_FREQ
    └── 2PSK_FLAG / spike_count
    │
    ▼
第三级：PS端决策树 → 调制类型识别 → Smart MUX
    │
    ▼
第四级：参数估计、显示及DAC输出
```

## 2. 本级已完成的功能

### 2.1 复数幅度与相位计算

使用一个 Xilinx CORDIC Translate IP 同时计算：

```text
magnitude = sqrt(I^2 + Q^2)
phase     = atan2(Q, I)
```

CORDIC 采用全并行流水线结构，可连续接收样本。一个 CORDIC 同时产生幅度和相位，避免重复例化两个计算核。

### 2.2 幅度支路

幅度支路输出：

- `mag_out`：复基带幅度，可作为 AM 包络或 2ASK 电平候选波形；
- `mean_mag_num`：一个统计窗内的幅度累加值；
- `var_mag_num`：幅度方差的无除法表达；
- `HIST_MAG[0..15]`：16 档幅度直方图。

幅度方差用于判断信号是否存在明显幅度变化；幅度直方图用于区分连续幅度变化的 AM 与离散双电平的 2ASK。

### 2.3 频率支路

对相邻相位作差并执行 `±π` 回绕：

```text
dphi[n] = wrap(phase[n] - phase[n-1])
```

频率支路输出：

- `dphi_out`：瞬时相位增量，可作为 FM/2FSK 的候选解调波形；
- `mean_freq_num`：相位增量均值，用于估计残余载波频偏；
- `var_freq_num`：频率变化方差；
- `HIST_FREQ[0..15]`：16 档频率直方图。

频率方差用于判断是否存在频率调制；频率直方图用于区分连续变化的 FM 与离散双频的 2FSK。

### 2.4 2PSK 相位尖峰检测

2PSK 码元发生极性翻转时，复基带相位会产生接近 `π` 的瞬时跳变。本级统计一个窗口内的大相位跳变次数，并输出：

- `psk_spike_count`：相位尖峰数量；
- `psk_flag`：尖峰数量达到门限后的 2PSK 候选标志。

相位尖峰检测带有幅度门控。幅度低于 `MAG_GATE` 时不统计相位尖峰，防止 2ASK 低电平附近的随机相位被误判为 2PSK。

### 2.5 滑窗统计和原子快照

默认统计窗长为 8192 个有效样本。窗口结束后：

- 方差、均值、直方图和尖峰数量同时更新；
- `frame_done` 输出一个时钟周期高电平；
- `feature_bram_writer.v` 将一整帧特征写入双口 BRAM；
- BRAM 的帧序号最后更新，避免 PS 读取到一半更新的数据。

## 3. 默认运行条件

| 项目 | 默认值 | 说明 |
|---|---:|---|
| FPGA/SoC | Zynq-7020 | 处理逻辑位于 PL |
| 开发工具 | Vivado 2018.3 | 源文件为 Verilog `.v` |
| PL 时钟 | 100 MHz | 由 PS `FCLK_CLK0` 提供 |
| 输入有效采样率 | 约 1 MSPS | 由第一级抽取结果决定 |
| I/Q 位宽 | 16 bit signed | CORDIC Signed Fraction |
| I/Q 推荐格式 | Q1.14 | 数值范围限制在 `[-1,+1)` |
| CORDIC 输出宽度 | 24 bit | 幅度与相位各 24 bit |
| 统计窗长 | 8192 点 | 1 MSPS 下约 8.192 ms |
| 直方图档数 | 16 | 幅度和频率各 16 档 |

如果第一级输出采样率、位宽或定点格式改变，必须同步修改本级的频率换算、直方图分档和检测阈值。

## 4. 与第一级的输入接口

顶层模块为：

```text
demod_pool_core.v
```

主要输入端口：

| 端口 | 位宽 | 方向 | 含义 |
|---|---:|---|---|
| `aclk` | 1 | 输入 | PL 处理时钟，改成 60 MHz |
| `aresetn` | 1 | 输入 | 同步低有效复位 |
| `s_i` | 16 | 输入 | 第一级输出的 I 路基带样本 |
| `s_q` | 16 | 输入 | 第一级输出的 Q 路基带样本 |
| `s_valid` | 1 | 输入 | 当前 I/Q 样本有效 |
| `s_ready` | 1 | 输出 | 本级可以接收样本 |

样本只在以下条件同时成立时完成传输：

```text
s_valid == 1 && s_ready == 1
```

第一级必须满足：

1. `s_i`、`s_q` 和 `s_valid` 对齐；
2. 当 `s_valid=1` 且 `s_ready=0` 时保持 I/Q 不变，直到握手完成；
3. I/Q 已经完成 2 MHz 载波下变频、低通滤波和抽取；
4. I/Q 需要归一化到 CORDIC 允许的输入范围；
5. 如果上下级不在同一时钟域，中间必须加入异步 AXI4-Stream FIFO。

如果第一级不能响应 `s_ready`，应在两级之间加入 AXI4-Stream Data FIFO，不能直接忽略反压，否则会出现丢样本和错误相位差分。

## 5. 向第三级提供的输出

### 5.1 实时波形接口

| 端口 | 位宽 | 含义 |
|---|---:|---|
| `mag_out` | 24 | 幅度波形，AM/2ASK 候选解调结果 |
| `dphi_out` | 24 signed | 相邻样本的回绕相位差，FM/2FSK 候选解调结果 |
| `feature_valid` | 1 | `mag_out` 和 `dphi_out` 当前有效 |

`mag_out` 和 `dphi_out` 与 `feature_valid` 对齐。第三级或后续 DMA 只能在 `feature_valid=1` 时采样。

### 5.2 特征接口

| 端口 | 位宽 | 含义 |
|---|---:|---|
| `mean_mag_num` | 32 signed | 窗内幅度累加值 |
| `var_mag_num` | 64 | 幅度方差分子 |
| `mean_freq_num` | 32 signed | 窗内相位增量累加值 |
| `var_freq_num` | 64 | 频率方差分子 |
| `psk_spike_count` | 32 | 窗内大相位跳变次数 |
| `psk_flag` | 1 | 2PSK 候选标志 |
| `frame_done` | 1 | 一帧特征统计完成脉冲 |

方差采用无除法形式：

```text
var_num = N × sum(x^2) - sum(x)^2
```

它等于 `N^2 × variance`。第三级可以直接对 `var_num` 标定分类阈值，不必在 PL 中实现除法器。

### 5.3 直方图读取接口

| 端口 | 位宽 | 含义 |
|---|---:|---|
| `hist_mag_rd_addr` | 4 | 幅度直方图读取地址 0～15 |
| `hist_mag_rd_data` | 32 | 对应幅度档的样本数量 |
| `hist_freq_rd_addr` | 4 | 频率直方图读取地址 0～15 |
| `hist_freq_rd_data` | 32 | 对应频率档的样本数量 |

`feature_bram_writer.v` 已将上述接口转换为一帧连续 BRAM 数据，PS 通常不需要直接控制直方图地址。

## 6. PS 端特征 BRAM 地址表

| Word 地址 | 内容 |
|---:|---|
| 0 | 完整特征帧序号 `sequence` |
| 1 | `var_mag_num[31:0]` |
| 2 | `var_mag_num[63:32]` |
| 3 | `var_freq_num[31:0]` |
| 4 | `var_freq_num[63:32]` |
| 5 | `mean_mag_num` |
| 6 | `mean_freq_num` |
| 7 | `{psk_flag, psk_spike_count[30:0]}` |
| 8～23 | `HIST_MAG[0..15]` |
| 24～39 | `HIST_FREQ[0..15]` |

PS 推荐读取流程：

1. 读取 word 0，记为 `seq_before`；
2. 读取 word 1～39；
3. 再读一次 word 0，记为 `seq_after`；
4. 只有 `seq_before == seq_after` 且序号发生更新时，才接受该帧特征。

## 7. 定点数据换算

CORDIC 配置为 24 位 Scaled Radians 时：

```text
magnitude = mag_out / 2^22
phase_rad = phase_raw / 2^21 × π
f_inst_hz = dphi_out × Fs / 2^22
```

其中 `Fs` 是第一级抽取后的实际有效采样率，不是 60 MHz PL 时钟。

例如 `Fs=1 MHz` 时：

```text
f_inst_hz = dphi_out × 1000000 / 4194304
```

`mean_freq_num/N` 对应平均相位增量。第三级在分析 FM/2FSK 前应先减去该均值，以降低残余载波频偏的影响。

## 8. 第三级建议使用方式

本级输出特征可按以下思路使用：

```text
若 psk_flag 明显成立：
    进入 2PSK 候选分支
否则若 VAR_MAG 大、VAR_FREQ 小：
    进入 AM/2ASK 分支，再检查 HIST_MAG 是否呈双峰
否则若 VAR_FREQ 大、VAR_MAG 小：
    进入 FM/2FSK 分支，再检查 HIST_FREQ 是否呈双峰
否则若两种方差均很小：
    进入 CW 候选分支
否则：
    标记为不确定，继续累计下一帧
```

最终阈值不能只依据理论值固定。建议对六种信号、不同调制参数和不同输入幅度分别采集至少 30 帧特征，再由实测分布确定阈值。

## 9. 本级不包含的功能

以下内容不属于当前代码已完成范围：

- 第一级 ADC 驱动、2 MHz DDC、CIC/FIR 抽取；
- PS 端六类调制方式的最终决策树；
- AM 调幅系数、FM 最大频偏、调频系数和码速率的最终计算；
- Smart MUX、DAC 驱动和显示界面；
- 完整 Costas 环和 2PSK 载波同步；
- 2PSK 位定时恢复及最终二进制码元输出；
- 根据真实硬件数据完成的最终阈值标定。

当前 `psk_flag` 是基于相位尖峰的**识别特征**，不等同于已经完成完整的 2PSK 相干解调。

## 10. 源文件说明

| 文件 | 功能 |
|---|---|
| `rtl/demod_pool_core.v` | 本级顶层、CORDIC 例化和各支路连接 |
| `rtl/phase_diff_wrap.v` | 相位差分和 `±π` 回绕 |
| `rtl/running_stats16.v` | 滑窗均值与方差计算 |
| `rtl/hist16_snapshot.v` | 16 档直方图及窗口快照 |
| `rtl/psk_spike_detector.v` | 2PSK 相位尖峰检测 |
| `rtl/feature_bram_writer.v` | 特征帧写入双口 BRAM |
| `sim/cordic_translate_0_stub.v` | 无 CORDIC IP 时的语法/仿真桩，不参与综合 |
| `sim/tb_phase_diff_wrap.v` | 相位跨界回绕测试 |
| `sim/tb_demod_pool_core.v` | 使用真实 CORDIC IP 的 CW/AM/FM/2PSK 完整行为仿真 |
| `sim/tb_feature_bram_writer.v` | 不依赖 Xilinx IP 的特征 BRAM 地址映射仿真 |
| `README_DEVELOPMENT.md` | Vivado IP 配置、Block Design 与例化说明 |

## 11. 联调验收条件

本级与上下级连接后，至少完成以下检查：

- [ ] `s_valid && s_ready` 时 I/Q 样本连续且没有丢点；
- [ ] 输入 CW 时，幅度基本稳定，去除平均频偏后 `dphi_out` 基本稳定；
- [ ] 输入 AM 时，`mag_out` 能观察到正弦包络；
- [ ] 输入 FM 时，`dphi_out` 能观察到正弦变化；
- [ ] 输入 2ASK 时，幅度直方图表现出两个主要电平区；
- [ ] 输入 2FSK 时，频率直方图表现出两个主要频率区；
- [ ] 输入 2PSK 时，`psk_spike_count` 随码元翻转明显增加；
- [ ] 2ASK 低电平不会大量触发 2PSK 尖峰；
- [ ] 每 8192 个有效样本产生一次 `frame_done`；
- [ ] PS 连续两次读取的 BRAM sequence 一致；
- [ ] 切换六种信号时不会出现上一帧特征长期残留。

## 12. 当前交接结论

第二级已经形成从低速复基带 I/Q 到幅度、瞬时频率、幅频统计量及 2PSK 相位跳变特征的完整硬件数据通路，并提供了面向 PS 的原子特征快照接口。

后续人员主要需要完成：

1. 与第一级确认真实 `Fs`、I/Q 位宽和定点格式；
2. 在真实六类信号下采集特征并标定阈值；
3. 在第三级 PS 程序中完成分类、参数估计和 Smart MUX；
4. 如需干净的 2PSK 二进制输出，继续实现 Costas 环和位同步模块。
