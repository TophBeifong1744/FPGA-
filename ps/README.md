# 信号调制方式识别与参数估计装置 - Zynq PS 端

## 1. 项目概述

本项目面向 **2023 年全国大学生电子设计竞赛 D 题：信号调制方式识别与参数估计装置**，实现 Zynq Processing System（PS）端的信号类型判决、参数计算、硬件通道路由和结果显示。

系统支持以下六种输入信号：

- AM
- FM
- CW
- 2ASK
- 2PSK
- 2FSK

当前代码已经从早期的“软件模拟特征”版本升级为读取真实 PL 特征、通过 AXI DMA 获取解调波形的版本。

> `前置/README.md`、`前置/23年AI方案4.docx` 和赛题 DOCX 用于保存题目背景及早期方案，不代表当前代码实现。本文件才是当前工程的说明。

---

## 2. 当前系统架构

系统分为 PL 和 PS 两部分。

### 2.1 PL 端职责

PL 端预计完成：

1. 对 2 MHz 输入信号进行采样、数字下变频和抽取滤波；
2. 从复数基带信号中提取幅度、瞬时频率和相位特征；
3. 计算幅度方差、频率方差和 16 桶直方图；
4. 检测 2PSK 的相位翻转；
5. 通过 BRAM 向 PS 提供特征帧；
6. 通过 AXI DMA 向 PS 提供选定支路的解调波形；
7. 根据 PS 下发的 MUX 通道选择解调输出；
8. 接收 PS 下发的 BCD 参数并驱动显示模块。

### 2.2 PS 端职责

PS 端完成：

1. 读取并验证 PL 特征帧；
2. 判断 AM、FM、CW、2ASK、2PSK、2FSK；
3. 连续多帧确认识别结果，避免结果抖动；
4. 控制 Smart MUX 切换解调支路；
5. 通过 AXI DMA 获取解调波形；
6. 计算调幅系数、调频系数、最大频偏、码率和移频键控系数；
7. 将结果输出到串口和 FPGA 显示接口。

### 2.3 当前数据流

```text
输入调制信号
    ↓
PL：DDC、滤波、幅度/频率/相位特征提取
    ↓
BRAM 特征帧
    ↓
read_hardware_features()
    ↓
直方图双窄电平判决 + 方差粗分类 + 2PSK 标志
    ↓
连续 3 帧稳定确认
    ↓
Smart MUX 通道选择
    ↓
AXI DMA 解调波形
    ↓
dsp_algorithms 参数估计
    ↓
串口输出 + AXI GPIO 显示
```

---

## 3. 工程目录

```text
src1/
├── README.md
├── main.c
├── hw_interface.c
├── hw_interface.h
├── histogram_classifier.c
├── histogram_classifier.h
├── dsp_algorithms.c
├── dsp_algorithms.h
├── ui_display.c
├── ui_display.h
├── platform.c
├── platform.h
├── platform_config.h
├── lscript.ld
├── Xilinx.spec
└── 前置/
    ├── README.md
    ├── 23年AI方案4.docx
    └── 2023年全国大学生电子设计竞赛D题_信号调制方式识别与参数估计装置.docx
```

将代码导入 Xilinx SDK 工程时，必须同时加入新增的：

- `histogram_classifier.c`
- `histogram_classifier.h`

否则 `hw_interface.c` 无法链接。

---

## 4. 文件说明

### 4.1 `main.c`

顶层状态机和任务调度。

主要功能：

- 初始化 PS、串口、UI 和 AXI DMA；
- 只处理新且完整的 PL 特征帧；
- 对识别结果进行连续 3 帧确认；
- 在信号类型改变时清空旧参数；
- 切换 MUX 后等待硬件稳定；
- 采集 DMA 波形并调用对应参数算法；
- 每约 100 ms 刷新一次显示。

关键配置：

```c
#define REQUIRED_STABLE_FRAMES 3
#define MUX_SETTLE_US       1000U
#define MAIN_LOOP_DELAY_US 10000U
```

### 4.2 `hw_interface.c/.h`

PL 与 PS 的硬件接口层。

主要功能：

- 初始化 AXI DMA；
- 控制 Smart MUX；
- 采集并转换 DMA 波形；
- 从 BRAM 读取特征帧；
- 检查帧序号，拒绝零帧、重复帧和读取期间发生更新的帧；
- 合并 64 位方差数据；
- 调用直方图分类器；
- 执行信号类型决策树。

DMA 原始数据为 32 位有符号整数，当前按 Q22 形式转换：

```c
real_buffer[i] = (float)dma_raw_buffer[i] / 4194304.0f;
```

DMA 已加入：

- 简单模式检查；
- 启动返回值检查；
- 轮询超时；
- 传输前后缓存失效。

### 4.3 `histogram_classifier.c/.h`

用于区分模拟连续波形和数字双电平波形。

旧算法仅统计“计数超过 2500 的桶数量”，并不能真正判断双峰。正弦 FM 的瞬时频率在正、负最大频偏附近停留时间更长，因此直方图本来就可能两端较高，旧算法会把 FM 误判成 2FSK。

新算法判断的是两个**窄且分离的电平簇**，而不是简单判断有没有两个高桶。

当前初始条件为：

```c
#define HISTOGRAM_MIN_PEAK_DISTANCE    3
#define HISTOGRAM_MIN_TWO_BIN_PERCENT 70U
#define HISTOGRAM_MIN_CLUSTER_PERCENT 60U
#define HISTOGRAM_MIN_BALANCE_PERCENT 10U
```

含义：

- 两个峰至少相隔 3 个桶；
- 最高两个峰桶至少包含总样本的 70%；
- 两个峰邻域至少包含总样本的 60%；
- 较小峰簇至少达到较大峰簇的 10%。

这些阈值已经通过理想 FM、压缩动态范围 FM、理想 2FSK 和带分散样本的 2FSK 仿真，但仍必须使用真实板级直方图进行最终标定。

### 4.4 `dsp_algorithms.c/.h`

参数估计算法。

主要功能：

- 去除直流；
- Goertzel 单频点能量检测；
- 在 1、2、3、4、5 kHz 中识别调制频率；
- 计算 AM 调幅系数；
- 计算 FM 最大频偏和调频系数；
- 在 6、8、10 kbps 中识别数字码率；
- 计算 2FSK 频率间隔和移频键控系数。

当前代码不再创建 2048 点局部工作数组，避免了原版本在 8 KB 主栈上的确定性栈溢出。

Goertzel 现在直接检测准确的目标频率：

```text
1 kHz、2 kHz、3 kHz、4 kHz、5 kHz
```

不再将目标频率吸附到长度为 2048 的 DFT 栅格。

码率估计采用：

- 双阈值滞回；
- 所有有效跳变沿间隔；
- 多符号周期匹配；
- 归一化误差；
- 最优值和次优值置信度检查。

2FSK 的两个频率电平使用一维两中心聚类估计。

### 4.5 `ui_display.c/.h`

显示和结果下发。

主要功能：

- 通过 `xil_printf()` 输出串口界面；
- 将十进制参数转换为 BCD；
- 通过三个 AXI GPIO 向 FPGA 显示模块发送类型和参数。

当前版本已经补充 2FSK 的 `h` 参数下发：

```c
hw_p3 = int_to_bcd((int)(params->h * 1000.0f));
```

### 4.6 `platform.c/.h` 与 `platform_config.h`

Xilinx SDK/BSP 平台初始化代码，主要提供：

- UART 初始化；
- 缓存控制；
- `init_platform()`；
- `cleanup_platform()`。

### 4.7 `lscript.ld`

Cortex-A9 链接脚本。

当前主栈配置为：

```text
_STACK_SIZE = 0x2000 = 8 KB
```

旧代码的多个 2048 点局部浮点数组会超过该限制；当前 DSP 实现已经消除这些大型局部数组。

---

## 5. PL–PS BRAM 数据协议

当前 `hw_interface.c` 使用以下 BRAM 地址：

```c
#define BRAM_BASEADDR 0x40000000
```

特征帧布局：

| 偏移 | 内容 |
|---:|---|
| `0x00` | 帧序号 `sequence` |
| `0x04` | 幅度方差低 32 位 |
| `0x08` | 幅度方差高 32 位 |
| `0x0C` | 频率方差低 32 位 |
| `0x10` | 频率方差高 32 位 |
| `0x1C` | bit31 为 `2PSK_FLAG` |
| `0x20`～`0x5C` | 16 桶幅度直方图 |
| `0x60`～`0x9C` | 16 桶频率直方图 |

方差数据由 PS 组合为 64 位无符号整数，并右移 20 位：

```c
real_var = (float)(var_64 >> 20);
```

### 5.1 帧一致性要求

PS 会在读取前后各读取一次帧序号，只有两次相同才接受该帧。

PL 必须保证：

1. 帧序号不能长期保持为 0；
2. 每一帧完成后必须更新序号；
3. 不能在 PS 读取期间无标志地覆盖整帧数据；
4. 更可靠的正式方案应采用奇偶序号 seqlock、`busy/valid` 握手或双缓冲。

当前 PS 检查能够拒绝读取期间序号发生变化的帧，但不能代替完整的 PL 写入协议。

---

## 6. 硬件地址

### 6.1 Smart MUX

```c
#define GPIO_BASEADDR 0x41200000
```

当前通道映射：

| 通道 | 信号 |
|---:|---|
| 1 | AM |
| 2 | FM / CW |
| 4 | 2ASK |
| 5 | 2PSK |
| 6 | 2FSK |

### 6.2 显示 GPIO

```c
#define AXI_GPIO_0_BASE 0x41210000
#define AXI_GPIO_1_BASE 0x41220000
#define AXI_GPIO_2_BASE 0x41230000
```

建议最终将这些硬编码地址替换为 `xparameters.h` 中由 Vivado 自动生成的宏，避免硬件地址变化后软件仍访问旧地址。

---

## 7. 信号识别逻辑

### 7.1 粗分类

当前方差阈值：

```c
#define MAG_VARIANCE_THRESHOLD    2000000.0f
#define FREQ_VARIANCE_THRESHOLD 300000000.0f
```

决策顺序：

1. `2PSK_FLAG == 1`：判为 2PSK；
2. 幅度方差超过阈值：进入 AM/2ASK 分类；
3. 频率方差超过阈值：进入 FM/2FSK 分类；
4. 其余情况：判为 CW。

### 7.2 细分类

- AM/2ASK：使用幅度直方图双窄电平判据；
- FM/2FSK：使用频率直方图双窄电平判据。

FM 的直方图可能有两个高边缘，但其样本仍连续分布在多个桶中；2FSK 的大部分样本应集中在两个窄电平附近。这是新算法与旧“双峰标志”算法的根本区别。

### 7.3 多帧确认

单帧判决不会立即改变最终结果。

同一结果连续出现 3 帧后，PS 才会：

1. 更新当前信号类型；
2. 清空上一类型的参数；
3. 切换 Smart MUX；
4. 等待 1 ms；
5. 采集解调波形并计算参数。

---

## 8. 参数定义

统一结果结构体：

```c
typedef struct {
    float Rc;
    float F;
    float ma;
    float delta_f;
    float mf;
    float h;
} SignalParams;
```

字段含义：

| 字段 | 含义 | 适用类型 |
|---|---|---|
| `Rc` | 二进制码率 | 2ASK、2PSK、2FSK |
| `F` | 正弦调制信号频率 | AM、FM |
| `ma` | 调幅系数 | AM |
| `delta_f` | 最大频偏或两频率间隔 | FM、2FSK |
| `mf` | 调频系数 | FM |
| `h` | 移频键控系数 | 2FSK |

关系式：

```text
ma = (Vmax - Vmin) / (Vmax + Vmin)
mf = Δfmax / F
h  = |fc1 - fc0| / Rc
```

---

## 9. 鉴频数据单位

当前默认假设 PL 的瞬时频率支路输出单位为：

```text
cycles/sample
```

因此：

```c
#define DISCRIMINATOR_HZ_PER_UNIT SAMPLE_RATE
```

如果 PL 输出实际为：

```text
radians/sample
```

则必须改成：

```c
#define DISCRIMINATOR_HZ_PER_UNIT (SAMPLE_RATE / (2.0f * PI))
```

否则 FM 最大频偏和 2FSK 频率间隔会整体相差约 `2π`。

必须根据 PL 中 CORDIC 相位格式、差分器输出格式和定点缩放确认该配置。

---

## 10. 编译环境

建议环境：

- Vivado 2018.3；
- Xilinx SDK 2018.3；
- Zynq-7000 Cortex-A9；
- Standalone BSP；
- ARM GCC；
- C99 或 GNU99；
- 数学库 `libm`。

代码使用：

```c
sinf()
cosf()
sqrtf()
fabsf()
roundf()
```

SDK 中需要在链接器设置里加入数学库 `m`。

导入步骤：

1. 在 Vivado 中完成硬件设计并导出硬件平台；
2. 在 SDK 中创建 Standalone Application Project；
3. 将根目录下的 `.c` 和 `.h` 文件加入应用工程；
4. 确认 `xparameters.h` 中存在 `XPAR_AXIDMA_0_DEVICE_ID`；
5. 检查 BRAM、MUX 和显示 GPIO 地址；
6. 链接数学库 `m`；
7. 编译并下载程序。

---

## 11. 本次主要更新

更新日期：2026-07-26。

### 11.1 FM/2FSK 识别修复

旧实现：

```c
if (hist_freq[i] > 2500) freq_peaks++;
real_hist_freq_bimodal = (freq_peaks >= 2);
```

问题：

- 统计的是超阈值桶数量，不是真正的峰；
- 使用绝对计数，结果依赖累计样本数；
- 正弦 FM 的直方图天然可能两端高；
- FM 和 2FSK 因此都可能得到双峰标志 1。

新实现：

- 使用总样本数归一化；
- 检查峰间距离；
- 检查两个峰桶的能量集中度；
- 检查峰邻域和双峰平衡性；
- 不再依赖固定计数 2500。

### 11.2 特征帧有效性

- `read_hardware_features()` 改为返回有效状态；
- 零帧不参与判决；
- 重复帧不重复处理；
- 读取期间序号改变的帧直接丢弃；
- 旧特征不再被当作新结果反复使用。

### 11.3 识别稳定性

- 增加连续 3 帧确认；
- 删除未标定的 `RMS/MAE > 1.02` 强制重分类；
- 只有类型真正改变时才切换 MUX；
- 类型改变时清除旧参数。

### 11.4 DMA 安全性

- 检查 DMA 是否为简单模式；
- 检查传输启动结果；
- 增加轮询超时；
- 增加传输完成后的缓存失效；
- DMA 故障不再造成无限等待。

### 11.5 栈溢出修复

旧版本在多个函数中使用：

```c
float temp_buffer[2048];
```

每个数组占 8192 字节，多个函数嵌套时至少需要约 24 KB，而链接脚本主栈只有 8 KB。

当前版本已经改为流式计算，不再使用这些大型局部数组。

### 11.6 DSP 算法整理

- 删除多份注释掉的历史 FM 算法；
- Goertzel 使用准确目标频率；
- 增加输入长度和空指针检查；
- AM 参数增加除零保护；
- FM 参数使用统一鉴频单位配置；
- 码率估计加入滞回、归一化误差和置信度；
- 2FSK 电平使用一维聚类估计。

### 11.7 显示修复

- 2FSK 的 `h` 参数现在会写入 `hw_p3`；
- 消除 `LCD_ShowString()` 未使用坐标参数的编译警告。

### 11.8 源文件编码

原 GBK 源文件已统一转换为 UTF-8，便于版本管理和跨平台查看。

---

## 12. 已完成验证

已使用临时主机测试程序完成：

- 理想正弦 FM 直方图：不判为双电平；
- 动态范围压缩后的正弦 FM：不判为双电平；
- 理想 2FSK 直方图：判为双电平；
- 含分散样本的 2FSK 直方图：判为双电平；
- AM 2 kHz、`ma = 0.6` 参数测试；
- FM 3 kHz、`Δf = 12 kHz`、`mf = 4` 参数测试；
- 2FSK 8 kbps、频率间隔 18 kHz、`h = 2.25` 参数测试。

结果全部通过。

同时使用 Xilinx API 桩执行：

```text
gcc -std=c99 -Wall -Wextra -Werror
```

修改后的全部应用源文件严格语法检查通过。

以上验证不等于真实 Zynq BSP 编译和板级测试。

---

## 13. 板级联调重点

### 13.1 必须采集的调试数据

对每种信号和参数端点，至少记录：

- `sequence`；
- `real_var_mag`；
- `real_var_freq`；
- 16 桶 `hist_mag`；
- 16 桶 `hist_freq`；
- `2PSK_FLAG`；
- 最终识别类型；
- DMA 波形最小值、最大值、均值和 RMS。

测试矩阵应覆盖：

- AM：`ma` 接近 0.3 和 1；
- FM：`F = 1～5 kHz`、`mf = 1～5`；
- 2ASK：6、8、10 kbps；
- 2PSK：6、8、10 kbps；
- 2FSK：6、8、10 kbps，`h = 2～5`；
- CW；
- 不同输入幅度和噪声条件。

### 13.2 需要标定的参数

- `MAG_VARIANCE_THRESHOLD`；
- `FREQ_VARIANCE_THRESHOLD`；
- `HISTOGRAM_MIN_PEAK_DISTANCE`；
- `HISTOGRAM_MIN_TWO_BIN_PERCENT`；
- `HISTOGRAM_MIN_CLUSTER_PERCENT`；
- `HISTOGRAM_MIN_BALANCE_PERCENT`；
- DMA Q 格式；
- `DISCRIMINATOR_HZ_PER_UNIT`；
- `FREQ_SMOOTHING_TAPS`。

标定时必须使用归一化比例和多组数据，不应再次使用单个样本得到的绝对“魔法数”。

---

## 14. 当前已知限制

1. 当前采样窗口为 2048 点，在 1 MHz 下只有 2.048 ms；对 1 kHz 信号仅覆盖约两个周期，低频和低信噪比条件下仍可能不稳定。
2. 直方图阈值是仿真初值，尚未经过真实 FPGA 数据标定。
3. BRAM 双读序号不是完整的原子帧协议，正式版本建议 PL 实现奇偶 seqlock 或双缓冲。
4. 2PSK 标志必须由 PL 明确定义保持和清零方式，避免标志永久锁存。
5. 硬件地址仍为代码内常量，Vivado 地址变化后需要同步修改。
6. 当前采用轮询 DMA；如果后续需要更高实时性，可改为中断和状态机。
7. 尚未完成真实 Xilinx BSP 编译、下载和六类信号全参数板级回归。

---

## 15. 推荐的下一步

1. 确认 PL 瞬时频率数据到底是 cycles/sample 还是 radians/sample；
2. 导出 FM 和 2FSK 各参数端点的 16 桶频率直方图；
3. 根据真实数据重新标定直方图比例阈值；
4. 完成 Vivado 地址与代码基地址核对；
5. 在 SDK 中执行完整 BSP 编译；
6. 逐类完成 AM、FM、CW、2ASK、2PSK、2FSK 板级回归；
7. 将失败样本保存为固定测试向量，形成可重复的回归测试。

