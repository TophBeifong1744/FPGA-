# 信号调制方式识别与参数估计装置——PS 端程序

## 1. 项目简介

本项目面向 **2023 年全国大学生电子设计竞赛 D 题：信号调制方式识别与参数估计装置**，实现 Zynq Processing System（PS）端的软件处理框架。

PS 端主要负责：

1. 读取或模拟 PL 端提取的信号特征；
2. 判断输入信号的调制类型；
3. 计算对应的调制参数；
4. 将识别结果和参数输出到显示界面。

当前版本处于 **PS 算法原型验证阶段**：

- 使用软件生成的模拟波形代替 PL 端真实数据；
- 使用模拟特征寄存器代替 AXI 寄存器；
- 使用串口打印代替 LCD/OLED 显示屏；
- 支持 AM、FM、CW、2ASK、2PSK 和 2FSK 六种信号类型。

后续接入真实硬件时，只需重点替换 `hw_interface.c` 和 `ui_display.c`，上层识别与参数计算框架可以继续保留。

---

## 2. 软件处理流程

```text
程序启动
   ↓
初始化 PS 平台与串口
   ↓
生成模拟特征和模拟解调波形
   ↓
识别信号调制类型
   ↓
调用对应的参数估计算法
   ↓
将结果保存到 SignalParams 结构体
   ↓
通过串口打印识别结果
```

最终硬件版本计划采用：

```text
PL 特征寄存器 / AXI DMA
          ↓
      hw_interface
          ↓
  recognize_signal_type
          ↓
    dsp_algorithms
          ↓
      ui_display
          ↓
   串口或实际显示屏
```

---

## 3. 工程目录

```text
ps/
├── main.c
├── dsp_algorithms.c
├── dsp_algorithms.h
├── hw_interface.c
├── hw_interface.h
├── ui_display.c
├── ui_display.h
├── platform.c
├── platform.h
├── platform_config.h
└── lscript.ld
```

---

## 4. 各文件说明

### 4.1 `main.c`

程序入口和顶层调度文件。

主要功能：

- 调用 `init_platform()` 初始化 PS 平台与串口；
- 调用 `UI_Init()` 初始化显示层；
- 生成当前测试信号和模拟硬件特征；
- 调用 `recognize_signal_type()` 判断调制方式；
- 根据识别结果调用对应的参数估计函数；
- 定期调用 `UI_UpdateDashboard()` 输出最新结果。

当前默认测试代码为：

```c
update_mock_hardware_registers(SIGNAL_2FSK);
generate_mock_2fsk(6000.0, 4500.0);
```

表示模拟输入一个码率为 6 kbps、两个频率间隔为 4500 Hz 的 2FSK 解调波形。

参数计算结果统一保存在：

```c
SignalParams current_params;
```

中。

---

### 4.2 `dsp_algorithms.c`

数字信号处理和参数估计的核心实现文件。

主要函数如下。

#### `remove_dc()`

计算输入数组的平均值，并从每个采样点中减去该平均值，用于去除直流分量。

#### `goertzel_mag()`

使用 Goertzel 算法计算指定频率点的能量，避免执行完整 FFT。

#### `detect_modulation_freq()`

依次检测 1 kHz、2 kHz、3 kHz、4 kHz 和 5 kHz 五个候选频率，选择能量最大的频率作为调制信号频率估计值。

#### `calculate_am_params()`

计算 AM 信号参数：

- 调制信号频率 `F`；
- 调幅系数 `ma`。

调幅系数采用：

```text
ma = (Vmax - Vmin) / (Vmax + Vmin)
```

#### `calculate_fm_params()`

计算 FM 信号参数：

- 调制信号频率 `F`；
- 最大频偏 `delta_f`；
- 调频指数 `mf`。

关系为：

```text
mf = delta_f / F
```

#### `calculate_Rc()`

根据解调数字波形的跳变间隔，在 6 kbps、8 kbps 和 10 kbps 三个候选值中估计码率。

#### `calculate_2ask_params()`

计算 2ASK 信号的二进制码率 `Rc`。

#### `calculate_2fsk_params()`

计算 2FSK 信号参数：

- 二进制码率 `Rc`；
- 两个频率电平之间的间隔 `delta_f`；
- 移频键控系数 `h`。

关系为：

```text
h = delta_f / Rc
```

#### `calculate_2psk_params()`

根据 2PSK 解调后的二进制电平波形估计码率 `Rc`。

---

### 4.3 `dsp_algorithms.h`

数字信号处理模块的公共声明文件。

主要内容：

- 定义采样点数 `BUFFER_SIZE`；
- 定义采样率 `SAMPLE_RATE`；
- 定义 6 kbps、8 kbps 和 10 kbps 三种候选码率；
- 定义参数结构体 `SignalParams`；
- 声明所有参数估计函数。

`SignalParams` 结构体字段如下：

| 字段 | 含义 | 适用信号 |
|---|---|---|
| `Rc` | 二进制码率 | 2ASK、2PSK、2FSK |
| `F` | 调制信号频率 | AM、FM |
| `ma` | 调幅系数 | AM |
| `delta_f` | 最大频偏或频率间隔 | FM、2FSK |
| `mf` | 调频指数 | FM |
| `h` | 移频键控系数 | 2FSK |

---

### 4.4 `hw_interface.c`

硬件接口模拟层。

当前版本尚未连接真实 PL，而是通过软件变量模拟：

- PL 特征寄存器；
- 解调波形缓冲区；
- 信号类型识别所需的幅度、频率和相位特征。

主要函数如下。

#### `generate_mock_am()`

生成带直流包络的 AM 解调波形。

#### `generate_mock_fm()`

生成表示瞬时频率变化的 FM 解调波形。

#### `generate_mock_2ask()`

生成高、低双电平的 2ASK 解调波形。

#### `generate_mock_2fsk()`

生成高、低两个频率电平组成的 2FSK 鉴频输出波形。

#### `generate_mock_2psk()`

生成 2PSK 解调后的二进制电平波形。

#### `update_mock_hardware_registers()`

根据指定信号类型设置模拟特征寄存器，包括：

- 幅度方差 `mock_var_mag`；
- 频率方差 `mock_var_freq`；
- 幅度双峰标志 `mock_hist_mag_bimodal`；
- 频率双峰标志 `mock_hist_freq_bimodal`；
- 2PSK 相位突变标志 `mock_2psk_flag`。

#### `recognize_signal_type()`

使用两级决策逻辑识别信号类型：

1. 优先检测 2PSK 相位突变标志；
2. 根据幅度方差和频率方差区分幅度调制、频率调制和 CW；
3. 根据双峰特征进一步区分 AM/2ASK 和 FM/2FSK。

真实硬件版本中，该文件将替换为 AXI4-Lite 寄存器读取、AXI DMA 或 BRAM 数据读取接口。

---

### 4.5 `hw_interface.h`

硬件接口模块的公共声明文件。

主要内容：

- 定义 `SignalType` 枚举；
- 声明模拟波形缓冲区和特征寄存器；
- 声明模拟信号生成函数；
- 声明信号识别函数。

`SignalType` 支持以下类型：

```c
SIGNAL_UNKNOWN
SIGNAL_AM
SIGNAL_FM
SIGNAL_CW
SIGNAL_2ASK
SIGNAL_2PSK
SIGNAL_2FSK
```

---

### 4.6 `ui_display.c`

用户界面和结果显示实现文件。

当前阶段使用 `xil_printf()` 将识别结果输出到串口终端，以代替实际 LCD/OLED 显示屏。

主要函数如下。

#### `LCD_Clear()`

通过 VT100 控制字符清空串口终端界面。

#### `LCD_ShowString()`

封装字符串输出接口。当前忽略坐标参数，直接将字符串打印到串口。

#### `UI_Init()`

初始化显示界面。

#### `UI_UpdateDashboard()`

根据信号类型显示对应参数：

| 信号类型 | 显示内容 |
|---|---|
| AM | 类型、调制频率、调幅系数 |
| FM | 类型、调制频率、最大频偏、调频指数 |
| CW | 显示 CW 和无调制信息 |
| 2ASK | 类型、码率 |
| 2PSK | 类型、码率 |
| 2FSK | 类型、码率、频率间隔、键控系数 |

以后接入实际显示屏时，只需替换 `LCD_Clear()` 和 `LCD_ShowString()` 的底层实现。

---

### 4.7 `ui_display.h`

用户界面模块的公共声明文件。

主要负责：

- 引入信号类型和参数结构体；
- 声明 `UI_Init()`；
- 声明 `UI_UpdateDashboard()`。

---

### 4.8 `platform.c`

Xilinx SDK 自动生成的平台初始化文件。

主要功能：

- 初始化 UART；
- 启用或关闭处理器缓存；
- 提供 `init_platform()` 和 `cleanup_platform()`；
- 为应用程序提供统一的平台初始化入口。

该文件通常由 Xilinx SDK/BSP 生成，不建议随意删除。

---

### 4.9 `platform.h`

平台初始化模块的头文件，声明：

```c
void init_platform(void);
void cleanup_platform(void);
```

---

### 4.10 `platform_config.h`

平台串口配置文件。

当前配置：

```c
#define STDOUT_IS_PS7_UART
#define UART_DEVICE_ID 0
```

表示标准输出使用 Zynq PS7 UART，设备编号为 0。

---

### 4.11 `lscript.ld`

Cortex-A9 链接脚本。

主要负责：

- 指定程序代码、只读数据、全局变量、堆和栈在 DDR 中的存放位置；
- 配置程序入口；
- 配置堆和栈大小；
- 定义异常、中断和处理器模式栈空间。

当前默认主栈大小为：

```text
_STACK_SIZE = 0x2000 = 8 KB
```

在正式运行 DSP 算法前，需要确认局部数组不会超过该栈空间。

---

## 5. 信号识别依据

当前决策树使用以下特征：

| 信号 | 幅度方差 | 频率方差 | 额外特征 |
|---|---:|---:|---|
| CW | 小 | 小 | 无 |
| AM | 大 | 小 | 幅度连续分布 |
| 2ASK | 大 | 小 | 幅度双峰分布 |
| FM | 小 | 大 | 频率连续分布 |
| 2FSK | 小 | 大 | 频率双峰分布 |
| 2PSK | 小 | 小 | 存在相位突变标志 |

当前阈值在 `recognize_signal_type()` 中定义：

```c
float VAR_THRESHOLD = 50.0;
```

真实硬件联调时需要根据 ADC、PL 定点位宽和归一化方式重新标定。

---

## 6. 开发环境

建议环境：

- Vivado 2018.3；
- Xilinx SDK 2018.3；
- Zynq-7000 Cortex-A9；
- Standalone BSP；
- PS UART，115200 bps；
- C 语言工程。

代码使用以下 Xilinx BSP 接口：

```c
xil_printf()
Xil_ICacheEnable()
Xil_DCacheEnable()
```

代码还使用 `sin()`、`cos()`、`fabs()` 和 `round()`，编译时应确保链接数学库 `libm`。

在 SDK 中可通过以下路径添加：

```text
Project Properties
→ C/C++ Build
→ Settings
→ ARM gcc linker
→ Libraries
→ 添加 m
```

---

## 7. 运行方法

### 7.1 导入工程

1. 在 Vivado 中完成 Zynq Processing System 设计并导出硬件；
2. 在 Xilinx SDK 2018.3 中新建 Standalone Application Project；
3. 将本目录下的 `.c` 和 `.h` 文件复制到应用工程的 `src` 目录；
4. 使用 SDK 根据当前硬件平台生成的链接脚本，或检查本项目的 `lscript.ld` 地址是否匹配；
5. 为工程链接数学库 `m`；
6. 编译并下载程序。

### 7.2 串口设置

串口终端建议配置为：

```text
波特率：115200
数据位：8
停止位：1
校验位：None
流控：None
```

### 7.3 切换测试信号

在 `main.c` 中修改测试代码。

#### AM 示例

```c
update_mock_hardware_registers(SIGNAL_AM);
generate_mock_am(0.6, 3000.0);
```

预期识别：AM，调制频率约 3 kHz，调幅系数约 0.6。

#### FM 示例

```c
update_mock_hardware_registers(SIGNAL_FM);
generate_mock_fm(20000.0, 5000.0);
```

预期识别：FM，调制频率约 5 kHz，最大频偏约 20 kHz，调频指数约 4。

#### CW 示例

```c
update_mock_hardware_registers(SIGNAL_CW);
```

预期识别：CW。

#### 2ASK 示例

```c
update_mock_hardware_registers(SIGNAL_2ASK);
generate_mock_2ask(8000.0);
```

预期识别：2ASK，码率约 8 kbps。

#### 2PSK 示例

```c
update_mock_hardware_registers(SIGNAL_2PSK);
generate_mock_2psk(10000.0);
```

预期识别：2PSK，码率约 10 kbps。

#### 2FSK 示例

```c
update_mock_hardware_registers(SIGNAL_2FSK);
generate_mock_2fsk(6000.0, 18000.0);
```

此时：

```text
Rc = 6000 bps
Δf = 18000 Hz
h = 18000 / 6000 = 3
```

符合赛题规定的 `2 ≤ h ≤ 5`。

---

## 8. 当前版本注意事项

1. `hw_interface.c` 使用的是模拟特征和模拟波形，尚未真正读取 PL 数据；
2. 当前调制方式识别结果依赖 `update_mock_hardware_registers()` 人工设置的特征；
3. 串口打印只是显示屏替代方案，实际显示屏驱动尚未接入；
4. `update_mock_hardware_registers()` 在切换测试信号前应统一清零旧特征，避免状态残留；
5. `dsp_algorithms.c` 中存在较大的局部浮点数组，而链接脚本主栈仅为 8 KB，正式运行前应将工作数组改为静态/全局缓冲区，或增大栈空间；
6. 当前 `BUFFER_SIZE` 为 2048，在 1 MHz 采样率下仅对应 2.048 ms，后续可改为 3000 或 6000，以提高低频参数估计稳定性；
7. 真实系统中的幅度、频率方差阈值需要通过实验重新标定；
8. 最终 PL—PS 接口建议采用 AXI4-Lite 传输特征寄存器，采用 AXI DMA 或 BRAM 传输解调波形数组。

---

## 9. 后续开发计划

- [ ] 修复模拟特征切换时的状态残留；
- [ ] 优化 DSP 工作缓冲区和栈空间；
- [ ] 增大采样窗口并提高参数估计稳定性；
- [ ] 使用 AXI4-Lite 读取 PL 特征寄存器；
- [ ] 使用 AXI DMA 或 BRAM 接收解调波形；
- [ ] 增加启动、完成、超时和结果保持状态机；
- [ ] 接入实际 LCD/OLED 显示屏；
- [ ] 完成 AM、FM、CW、2ASK、2PSK、2FSK 六类信号的板级测试。

---

## 10. 项目状态

当前版本适用于：

- PS 端程序框架验证；
- 调制参数算法初步测试；
- 决策树逻辑验证；
- 串口显示界面验证。

当前版本尚不代表完整的 PL—PS 联调系统，真实硬件接口和显示驱动将在后续版本中补充。

