# Zynq-7020 第二级“绝对并行特征提取/解调池层”开发与配置说明

> 完整模块连接、管理原理和逐信号说明见
> [`MODULE_CONNECTION_GUIDE.md`](MODULE_CONNECTION_GUIDE.md)。本修订版writer使用
> 32位字节地址，统计模块使用100 MHz友好的结算流水线。

## 1. 固定接口假设

- Vivado 2018.3，器件 Zynq-7020。
- PL 处理时钟 100 MHz；第一级 DDC/CIC/FIR 输出约 1 MSPS。
- 输入为同一时钟域下的 16 位有符号复数基带，`I/Q` 按 CORDIC Signed Fraction 的 Q1.14 表示，范围限制在 `[-1,+1)`。
- `s_valid` 只在新抽取样本到达时拉高；只有 `s_valid && s_ready` 时样本才被接收。
- 窗长默认 `N=8192`，在 1 MSPS 下约 8.192 ms。

## 2. 数据通路

同一 I/Q 流进入一个 CORDIC Translate 核。这个核一次同时输出幅度和相位，因此逻辑上仍是完全并行，但比放两个 CORDIC 更省 LUT。随后：

1. 幅度支路：`mag -> 滑窗统计 + 16-bin 直方图`。
2. 频率支路：`phase -> 相邻差分 -> +/-pi 回绕 -> 滑窗统计 + 16-bin 直方图`。
3. 2PSK 支路：`abs(dphi)` 检测接近 pi 的瞬时相位跳变；幅度低于门限时禁止检测。

CORDIC 24 位 Scaled Radians 的换算为：

```text
magnitude = mag_raw / 2^22
phase_rad = phase_raw / 2^21 * pi
f_inst_hz = dphi_raw * Fs / 2^22
```

`var_num` 没做除法：

```text
var_num = N*sum(x^2) - sum(x)^2 = N^2*variance
```

PS 端若需要真实方差再除以 `N^2`，分类阈值也可直接对 `var_num` 标定。

## 3. CORDIC IP 配置（必须与顶层端口一致）

在 IP Catalog 搜索 `CORDIC`，命名为 `cordic_translate_0`：

| 配置项 | 选择 |
|---|---|
| Functional Selection | Translate |
| Architectural Configuration | Parallel |
| Pipelining Mode | Maximum |
| Data Format | Signed Fraction |
| Phase Format | Scaled Radians |
| Input Width | 16 |
| Output Width | 24 |
| Coarse Rotation | Enable |
| Amplitude Compensation Scaling | Enable |
| Round Mode | Round to Nearest Even |
| Register Inputs/Outputs | Enable |
| AXI4-Stream Flow Control | Blocking |
| ARESETn | Enable |
| ACLKEN/TUSER/TLAST | Disable（本层不用） |

Translate 输出打包为 48 位：`m_axis_dout_tdata[23:0]=X_OUT(幅度)`，`[47:24]=PHASE_OUT`。输入为 `{Q,I}`，即 `I` 在低 16 位、`Q` 在高 16 位。

## 4. Block Design 中推荐 IP 与配置

### Processing System 7

1. 加入 `ZYNQ7 Processing System`，应用开发板 preset；没有 preset 时必须使用板卡厂家提供的 DDR/MIO 配置。
2. `Clock Configuration`：使能 `FCLK_CLK0=100 MHz`。
3. 使能 `M_AXI_GP0`，供 PS 读取控制/特征。
4. 若波形送 DDR，额外使能 `S_AXI_HP0` 和 `IRQ_F2P`。

### Processor System Reset

- `slowest_sync_clk` 接 `FCLK_CLK0`。
- 复位连接直接使用 Vivado 的 `Run Connection Automation`，让工具按该 IP 的极性参数连接 `FCLK_RESET0_N`，不要手工猜反相关系。
- `peripheral_aresetn` 接本核心、CORDIC、FIFO 的低有效复位。

### 特征寄存器读取（推荐 BRAM 方案）

- `AXI BRAM Controller`：32-bit data width，`Number of BRAM Interfaces=1`，
  `BRAM Instance=External`，`Read Latency=1`。
- `Block Memory Generator`：`Mode=BRAM Controller`，True Dual Port RAM，
  A/B均为32-bit，深度与AXI BRAM Controller地址段保持一致，开启4位字节写使能。
- Port A 接 AXI BRAM Controller；Port B 由一个“feature_writer”状态机在 `frame_done` 后写入。
- 本代码包已给出 `rtl/feature_bram_writer.v`；其 `bram_*` 端口接 BMG Port B 的
  `enb/web/addrb/dinb`，`clkb` 接同一 `FCLK_CLK0`。`bram_addr[31:0]`是字节地址，
  writer内部已执行`word_index<<2`。
- PS 通过 `M_AXI_GP0 -> AXI Interconnect -> AXI BRAM Controller` 读取。

建议地址表：

| Word | 内容 |
|---:|---|
| 0 | frame sequence/status |
| 1-2 | `var_mag_num` low/high |
| 3-4 | `var_freq_num` low/high |
| 5 | `mean_mag_num` |
| 6 | `mean_freq_num` |
| 7 | `{psk_flag, psk_spike_count[30:0]}` |
| 8-23 | HIST_MAG[0..15] |
| 24-39 | HIST_FREQ[0..15] |

写快照时应最后更新 word 0 的 sequence；PS 连读两次 sequence 一致才接受这帧，避免读到一半被 PL 更新。

### 波形送 PS（按需加入）

- `AXI DMA`：关闭 Scatter Gather；关闭 MM2S；使能 S2MM；Stream width 32；Simple DMA。
- `AXI4-Stream Data FIFO`：TDATA width 32，depth 1024 或 4096，Packet Mode 关闭。
- 在本层后加 frame packer，每 8192 点产生一次 `TLAST`；FIFO -> DMA `S_AXIS_S2MM`。
- DMA `M_AXI_S2MM -> PS S_AXI_HP0`，DMA Lite 控制口 -> GP0，S2MM 中断 -> `xlconcat -> IRQ_F2P`。

## 5. 导入和例化

1. 将 `rtl/*.v` 加入 Design Sources，文件类型选择 Verilog。
2. 按上表生成 `cordic_translate_0`，Generate Output Products。
3. 在第一级顶层中例化 `demod_pool_core`，把 FIR 输出 `I/Q/valid` 接入。
4. 若上游不能响应 back-pressure，必须保证 CORDIC `s_ready` 始终为 1，或在两级间加 AXI4-Stream FIFO；不能忽略 `s_ready` 后继续丢样本。
5. 先用 ILA 观察 `mag_out/dphi_out/feature_valid/frame_done`，再连接特征 BRAM和 DMA。

顶层连接关系示意（端口可按你们第一级命名修改）：

```verilog
wire [3:0]  hma, hfa;
wire [31:0] hmd, hfd;
wire [63:0] vm, vf;
wire signed [31:0] mm, mf;
wire [31:0] spike_n;
wire psk, feat_done;

demod_pool_core u_pool (
  .aclk(FCLK_CLK0), .aresetn(peripheral_aresetn),
  .s_i(fir_i), .s_q(fir_q), .s_valid(fir_valid), .s_ready(fir_ready),
  .mean_mag_num(mm), .var_mag_num(vm),
  .mean_freq_num(mf), .var_freq_num(vf),
  .psk_spike_count(spike_n), .psk_flag(psk), .frame_done(feat_done),
  .hist_mag_rd_addr(hma), .hist_mag_rd_data(hmd),
  .hist_freq_rd_addr(hfa), .hist_freq_rd_data(hfd),
  .mag_out(), .dphi_out(), .feature_valid()
);

feature_bram_writer u_writer (
  .aclk(FCLK_CLK0), .aresetn(peripheral_aresetn), .frame_done(feat_done),
  .var_mag_num(vm), .var_freq_num(vf),
  .mean_mag_num(mm), .mean_freq_num(mf),
  .psk_spike_count(spike_n), .psk_flag(psk),
  .hist_mag_rd_addr(hma), .hist_mag_rd_data(hmd),
  .hist_freq_rd_addr(hfa), .hist_freq_rd_data(hfd),
  .bram_en(bmg_enb), .bram_we(bmg_web),
  .bram_addr(bmg_addrb), .bram_wdata(bmg_dinb), .busy()
);
```

## 6. 初始阈值与标定

- `MAG_GATE=0.05*2^22=209715`：只用于屏蔽低幅度相位噪声。
- `SPIKE_TH=0.45*pi`：24 位 Scaled Radians 下约为 943718。
- `MIN_SPIKES=4`：8192 点窗的起始值。
- 这些不是最终赛场阈值。对 AM/FM/CW/2ASK/2PSK/2FSK 每类至少采 30 帧，保存 `var/hist/spike_count`，再确定分类边界。

## 7. 重要工程提醒

- 直方图双峰只是一种特征，不要让 PL 直接用一个未经标定的硬阈值给出最终类别；PL 输出统计量，PS 做最终判决更稳。
- 2ASK 的低电平附近相位没有意义，必须用 `MAG_GATE` 屏蔽，否则会被误判为 2PSK。
- 若第一级 DDC 后仍有较大载波频偏，先在 PS 端减去 `mean_freq_num/N`，或在 PL 加慢速频偏跟踪；不要把直流频偏当 FM/FSK。
- 完整 Costas 环主要用于输出干净的 2PSK 二进制波形；仅做“识别”时，门控相位尖峰检测可以先完成本层闭环。Costas 环建议在基础链路稳定后另加，避免一开始同时调环路增益、NCO 和判决阈值。
