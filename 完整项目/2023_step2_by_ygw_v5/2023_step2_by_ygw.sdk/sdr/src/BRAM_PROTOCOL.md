# 当前 VDMA 工程的 PL–PS BRAM 协议

本工程按 Vivado Address Editor 中的地址使用硬件：

| 模块 | 地址 |
|---|---:|
| AXI BRAM Controller | `0x4000_0000`～`0x4000_1FFF` |
| Smart MUX AXI GPIO | `0x4120_0000` |
| AXI VDMA S_AXI_LITE | `0x4300_0000` |

当前硬件没有 AXI DMA，因此参考项目中“AXI DMA 获取解调波形”的代码
不能直接使用。这里改为由 PL 将特征和当前 MUX 支路的内部计算样本一起
写入 8 KB BRAM。PS 读取样本只用于参数估计，RGB 屏只显示最终类型和
参数，不显示波形。

## BRAM 布局

| BRAM 偏移 | 内容 |
|---:|---|
| `0x000` | 完整帧序号 `sequence`，0 表示无有效帧 |
| `0x004` | 幅度方差低 32 位 |
| `0x008` | 幅度方差高 32 位 |
| `0x00C` | 频率方差低 32 位 |
| `0x010` | 频率方差高 32 位 |
| `0x014` | 有效样本数，允许范围 `1024～1984`，建议固定为 `1984` |
| `0x018` | 波形状态：bit31=`valid`，bit7:0=`MUX channel` |
| `0x01C` | bit31=`2PSK_FLAG` |
| `0x020～0x05C` | 16 桶幅度直方图 |
| `0x060～0x09C` | 16 桶频率直方图 |
| `0x0A0～0x0FF` | 保留 |
| `0x100～0x1FFF` | 最多 1984 个有符号 Q22、32 位样本 |

MUX 通道值：

| 通道 | 支路 |
|---:|---|
| 1 | AM 幅度包络 |
| 2 | FM 鉴频 / CW |
| 4 | 2ASK 解调 |
| 5 | 2PSK 解调 |
| 6 | 2FSK 鉴频 |

## PL 写入顺序

为了避免 PS 读到半帧数据，PL 必须按以下顺序提交：

1. 保持旧 `sequence`，写特征、直方图、样本数和全部样本；
2. 在样本有效后写 `0x018`，置 bit31 并写入实际 MUX 通道；
3. 最后更新 `sequence`，且每个完整帧必须变化；
4. 写下一帧前先清除 `0x018` 的 valid 位。

PS 会在读取前后各检查一次 `sequence`；两次不一致时丢弃该帧。

## 定点与算法配置

- 样本默认是有符号 Q22，PS 除以 `4194304.0`。
- 采样率默认 `1 MHz`。
- 鉴频支路默认单位为 `cycles/sample`。
- 如果 PL 输出 `radians/sample`，需要将
  `DISCRIMINATOR_HZ_PER_UNIT` 改为
  `SAMPLE_RATE / (2 * DSP_PI)`。
- DSP 使用 `sinf/cosf/sqrtf/roundf`，SDK 链接器必须加入数学库 `m`。

如果 PL 只写特征、不写 `0x014`、`0x018` 和样本区，PS 仍可识别信号
类型，但 RGB 屏会停留在 `WAITING FOR PARAMETERS`，不会输出伪造参数。
