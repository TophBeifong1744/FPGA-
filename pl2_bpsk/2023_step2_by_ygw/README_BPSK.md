# PL2 完整 2PSK 解调模块

本目录实现“2023 年全国大学生电子设计竞赛 D 题——信号调制方式识别与参数估计装置”第二级中的完整 2PSK 接收链。

本次实现包括：

- 二阶判决导向 Costas 环和残余载波同步；
- 6 kbps、8 kbps、10 kbps 自动码率识别；
- 小数采样周期下的位定时恢复；
- 最终二进制码元输出；
- 双极性 NRZ 波形输出；
- 载波失锁、信号中断和重新捕获；
- 与原幅度、频率、相位特征提取模块并行运行。

本目录暂不包括一级 ADC/DDC/CIC/FIR、PS 六类最终决策树、AM/FM 最终参数计算、Smart MUX、DAC/显示以及真实硬件阈值标定。

## 1. 推荐顶层

完整 PL2 推荐使用：

```text
demod_pool_core_bpsk.v
```

该模块包装原来的 `demod_pool_core.v`：

```text
                   +---------------------------+
I/Q + valid/ready ->| demod_pool_core_bpsk      |
                   |                           |
                   |  +---------------------+  |--> mag/dphi/统计量/psk_flag
                   |  | demod_pool_core     |  |
                   |  +---------------------+  |
                   |                           |
                   |  +---------------------+  |--> bit/NRZ/锁定/码率
                   |  | bpsk_rx_chain       |  |
                   |  +---------------------+  |
                   +---------------------------+
```

原 `demod_pool_core.v` 没有被改写，因此原 AM/FM/ASK/FSK 特征接口保持不变。

## 2. 输入数据要求

| 信号 | 位宽 | 说明 |
|---|---:|---|
| `aclk` | 1 | PL 时钟，可使用 60 MHz 或 100 MHz |
| `aresetn` | 1 | 同步低有效复位 |
| `s_i` | 16 signed | 同相基带，Q1.14 |
| `s_q` | 16 signed | 正交基带，Q1.14 |
| `s_valid` | 1 | 当前 I/Q 样点有效 |
| `s_ready` | 1 | PL2 可以接收当前样点 |

输入样点必须已经完成：

```text
ADC -> 2 MHz DDC -> CIC/FIR 抽取 -> 1 MSPS 复基带 I/Q -> Q1.14
```

只有以下条件成立时样点才会被接收：

```verilog
s_valid && s_ready
```

当 `s_valid=1` 且 `s_ready=0` 时，上游必须保持 `s_i/s_q` 不变，直到握手完成。

## 3. 固定点和相位格式

### 3.1 输入格式

`s_i/s_q` 使用 16 位有符号 Q1.14：

```text
实际值 = 整数值 / 16384
```

例如：

| 实际值 | Q1.14 整数 |
|---:|---:|
| +0.5 | +8192 |
| 0 | 0 |
| -0.5 | -8192 |

### 3.2 原 CORDIC 相位

原 `cordic_translate_0` 输出 24 位 Scaled Radians：

```text
pi     = 2^21
2*pi   = 2^22
```

### 3.3 Costas NCO 相位

Costas 环内部 NCO 使用 24 位无符号 Q0.24 周相位：

```text
0x000000 = 0
0x400000 = pi/2
0x800000 = pi
0xC00000 = 3*pi/2
```

CORDIC Scaled Radians 与 NCO 周相位是两种不同格式，不能直接混用。

## 4. 2PSK 输出接口

| 输出 | 含义 |
|---|---|
| `bpsk_carrier_locked` | Costas 环已经锁定载波 |
| `bpsk_timing_locked` | 已完成码率判定和位定时锁定 |
| `bpsk_rate_code[1:0]` | 当前识别到的码率 |
| `bpsk_bit_data` | 当前二进制判决结果 |
| `bpsk_bit_valid` | 当前码元有效，单时钟周期脉冲 |
| `bpsk_symbol_strobe` | 码元中心抽样脉冲，与 `bpsk_bit_valid` 对齐 |
| `bpsk_nrz_out[15:0]` | Q1.14 双极性 NRZ 波形 |
| `bpsk_sample_valid` | 当前 NRZ 样点有效 |

码率编码为：

| `bpsk_rate_code` | 码率 |
|---:|---:|
| `2'b00` | 未识别/未锁定 |
| `2'b01` | 6 kbps |
| `2'b10` | 8 kbps |
| `2'b11` | 10 kbps |

读取二进制码元：

```verilog
always @(posedge aclk) begin
    if (!aresetn) begin
        received_bit <= 1'b0;
    end else if (bpsk_carrier_locked &&
                 bpsk_timing_locked &&
                 bpsk_bit_valid) begin
        received_bit <= bpsk_bit_data;
    end
end
```

`bpsk_nrz_out` 默认输出：

```text
bit 1 -> +8192 -> Q1.14 的 +0.5
bit 0 -> -8192 -> Q1.14 的 -0.5
```

## 5. 模块说明

| 文件 | 功能 |
|---|---|
| `bpsk_nco_lut.v` | 256 相位点、Q1.15 正弦/余弦 NCO |
| `bpsk_costas_loop.v` | 复数混频、低通、相位检测、PI 环路和锁定判断 |
| `bpsk_rate_detector.v` | 根据 NRZ 跳变间隔识别 6/8/10 kbps |
| `bpsk_timing_recovery.v` | 小数分频位定时、码元中心抽样和 NRZ 输出 |
| `bpsk_rx_chain.v` | 连接 Costas、码率检测和位定时模块 |
| `demod_pool_core_bpsk.v` | 原特征核与完整 2PSK 接收链的集成顶层 |

## 6. 顶层实例化示例

```verilog
demod_pool_core_bpsk u_pl2 (
    .aclk                  (pl_clk),
    .aresetn               (pl_resetn),

    .s_i                   (pl1_i_q14),
    .s_q                   (pl1_q_q14),
    .s_valid               (pl1_valid),
    .s_ready               (pl1_ready),

    .mag_out               (mag_out),
    .dphi_out              (dphi_out),
    .feature_valid         (feature_valid),
    .mean_mag_num          (mean_mag_num),
    .var_mag_num           (var_mag_num),
    .mean_freq_num         (mean_freq_num),
    .var_freq_num          (var_freq_num),
    .psk_spike_count       (psk_spike_count),
    .psk_flag              (psk_flag),
    .frame_done            (frame_done),

    .hist_mag_rd_addr      (hist_mag_rd_addr),
    .hist_mag_rd_data      (hist_mag_rd_data),
    .hist_freq_rd_addr     (hist_freq_rd_addr),
    .hist_freq_rd_data     (hist_freq_rd_data),

    .bpsk_carrier_locked   (bpsk_carrier_locked),
    .bpsk_timing_locked    (bpsk_timing_locked),
    .bpsk_rate_code        (bpsk_rate_code),
    .bpsk_bit_data         (bpsk_bit_data),
    .bpsk_bit_valid        (bpsk_bit_valid),
    .bpsk_symbol_strobe    (bpsk_symbol_strobe),
    .bpsk_nrz_out          (bpsk_nrz_out),
    .bpsk_sample_valid     (bpsk_sample_valid)
);
```

## 7. 仿真方法

### 7.1 定点参考模型

在仓库根目录执行：

```powershell
F:\STUDY\IT\Anaconda3\python.exe `
  .\pl2\2023_step2_by_ygw\verification\bpsk_fixed_reference.py
```

该模型检查：

- Q1.14 量化和饱和；
- 24 位相位格式；
- Costas 环路增益和频率限幅；
- 6/8/10 kbps 小数定时步长；
- valid 空洞期间状态保持；
- 不同初相、频偏、幅度和噪声下的 BER。

### 7.2 全部 XSim 回归

```powershell
D:\Vivado\2018.3\bin\vivado.bat `
  -mode batch `
  -source .\pl2\2023_step2_by_ygw\verification\run_all_bpsk_xsim.tcl
```

回归包括：

1. `tb_bpsk_rx_chain`：三种码率和 ±5 kHz 频偏；
2. `tb_bpsk_reacquire`：信号中断、失锁和改变码率后的重新捕获；
3. `tb_demod_pool_core_bpsk`：使用工程内真实 Xilinx CORDIC 的集成测试。

测试结果记录在：

```text
verification/TEST_RESULTS.md
```

## 8. 当前测试结果

- 定点模型：48/48 通过；
- 6/8/10 kbps、±5 kHz RTL 回归：全部通过，无码 BER=0；
- 失锁和重新捕获：通过，无码 BER=0；
- 真实 CORDIC 集成：37500 个输入对应 37499 个 `feature_valid`，首相位样点抑制正确；
- 原 `psk_flag` 回归：通过。

BPSK 存在固有的 180° 全局相位模糊，因此整段二进制序列可能全部取反。示波器显示码形和码率不受影响；若后续通信协议要求固定极性，需要增加前导码或差分编码。

## 9. Block Design 注意事项

新增源码已经加入 `2023_step2_by_ygw.xpr`，但当前 `design_1` Block Design 仍使用原模块，而且输入仍为常量零。

要在硬件中真正使用新解调链，需要执行以下任一操作：

1. 在新的 FPGA 顶层直接实例化 `demod_pool_core_bpsk`；或
2. 在 Block Design 中用 `demod_pool_core_bpsk` 替换原 `demod_pool_core`；或
3. 把 `bpsk_rx_chain` 作为独立 Module Reference 并联到原 I/Q 输入。

随后连接 PL1 的：

```text
I/Q Q1.14 + valid + ready
```

不要直接手工修改 Vivado 自动生成的 `design_1.v`。

## 10. 综合器状态

已提供 OOC 综合脚本：

```powershell
D:\Vivado\2018.3\bin\vivado.bat `
  -mode batch `
  -source .\pl2\2023_step2_by_ygw\verification\run_bpsk_ooc_project.tcl
```

当前机器的 Vivado 2018.3 综合进程存在运行时故障：即使仅综合一个 D 触发器，也会在 RTL elaboration 后报告：

```text
TclStackFree: incorrect freePtr. Call out of sequence?
```

因此当前没有声称综合、资源或时序已经通过。修复或重装 Vivado 后，需要重新运行上述脚本并确认：

```text
WNS >= 0
TNS = 0
```

## 11. 更多资料

- `../BPSK_RECEIVER.md`：固定点、接口和设计说明；
- `verification/TEST_RESULTS.md`：已执行测试和结果；
- `verification/run_all_bpsk_xsim.tcl`：全部仿真回归；
- `verification/run_bpsk_ooc_project.tcl`：OOC 综合和时序检查。
