#include "hw_interface.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xaxidma.h"
#include "xil_cache.h"
#include "histogram_classifier.h"
#include <stdint.h>

// ========================================================
// 硬件基地址 (与你 Vivado Address Editor 完美对应)
// ========================================================
#define BRAM_BASEADDR 0x40000000
#define GPIO_BASEADDR 0x41200000

#define MAG_VARIANCE_THRESHOLD    2000000.0f
#define FREQ_VARIANCE_THRESHOLD 300000000.0f
#define DMA_POLL_TIMEOUT       10000000U

XAxiDma AxiDma; // DMA 实例
float real_buffer[2048]; // 真实的波形接收数组

// [新增] 专门给 DMA 用的物理接收数组，存放纯正的 32 位整数
int32_t dma_raw_buffer[2048];

float real_var_mag = 0.0;
float real_var_freq = 0.0;
int   real_hist_mag_bimodal = 0;
int   real_hist_freq_bimodal = 0;
int   real_2psk_flag = 0;

// 1. 初始化 DMA 硬件
int init_hardware(void) {
    XAxiDma_Config *CfgPtr;
    int Status;

    // 查找 DMA 配置
    CfgPtr = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
    if (!CfgPtr) return -1;

    // 初始化 DMA
    Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (Status != XST_SUCCESS) return -1;
    if (XAxiDma_HasSg(&AxiDma)) return -1;

    // 禁用中断 (我们采用高效的轮询模式)
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    return 0;
}

// 2. 控制 Smart MUX 切换通道 (下发给 GPIO)
void set_mux_channel(int channel) {
    Xil_Out32(GPIO_BASEADDR, channel);
}

// 3. 触发 DMA 接收并转换数据格式
int capture_waveform(void) {
    Xil_DCacheInvalidateRange((UINTPTR)dma_raw_buffer, 2048 * sizeof(int32_t));

    int status = XAxiDma_SimpleTransfer(
        &AxiDma,
        (UINTPTR)dma_raw_buffer,
        2048 * sizeof(int32_t),
        XAXIDMA_DEVICE_TO_DMA
    );
    if (status != XST_SUCCESS) return -1;

    uint32_t timeout = DMA_POLL_TIMEOUT;
    while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
        if (--timeout == 0) return -2;
    }

    Xil_DCacheInvalidateRange((UINTPTR)dma_raw_buffer, 2048 * sizeof(int32_t));

    // 【新增核心步骤】将纯整数转换为浮点数，并按照文档要求除以 2^22 (4194304.0) 恢复真实物理量
    for(int i = 0; i < 2048; i++) {
        real_buffer[i] = (float)dma_raw_buffer[i] / 4194304.0;
    }
    return 0;
}

// 4. 从 BRAM 读取底层实时计算好的特征 (加入文档推荐的防撕裂机制)
int read_hardware_features(void) {
    static uint32_t last_sequence = 0;

    // [新增] 先读取起始帧序号 (Word 0 对应 0x00)
    uint32_t seq_before = Xil_In32(BRAM_BASEADDR + 0x00);

    // 如果序号是 0，说明 FPGA 底层甚至还没算完第一帧，直接退出
    if (seq_before == 0 || seq_before == last_sequence) return 0;

    uint32_t var_mag_low  = Xil_In32(BRAM_BASEADDR + 0x04);
    uint32_t var_mag_high = Xil_In32(BRAM_BASEADDR + 0x08);
    uint32_t var_freq_low  = Xil_In32(BRAM_BASEADDR + 0x0C);
    uint32_t var_freq_high = Xil_In32(BRAM_BASEADDR + 0x10);
    uint32_t word7 = Xil_In32(BRAM_BASEADDR + 0x1C);

    uint32_t hist_mag[HISTOGRAM_BIN_COUNT];
    uint32_t hist_freq[HISTOGRAM_BIN_COUNT];
    for(int i = 0; i < HISTOGRAM_BIN_COUNT; i++) {
        hist_mag[i]  = Xil_In32(BRAM_BASEADDR + 0x20 + i*4);
        hist_freq[i] = Xil_In32(BRAM_BASEADDR + 0x60 + i*4);
    }

    // [新增] 读完所有数据后，再次读取帧序号
    uint32_t seq_after = Xil_In32(BRAM_BASEADDR + 0x00);

    // 如果两次序号不一样，说明你在读的过程中 FPGA 恰好刷新了数据，这次读到的数据是错位的，直接丢弃
    if (seq_before != seq_after) {
        return 0;
    }

    // ==== 只有当数据完整无误时，才进行赋值和换算 ====

        // Variance is non-negative by definition and is transferred unsigned.
        uint64_t var_mag_64   = ((uint64_t)var_mag_high << 32) | var_mag_low;
        real_var_mag = (float)(var_mag_64 >> 20);

        uint64_t var_freq_64   = ((uint64_t)var_freq_high << 32) | var_freq_low;
        real_var_freq = (float)(var_freq_64 >> 20);

        // 3. 提取 2PSK 专属标志位
        real_2psk_flag = (word7 >> 31) & 0x01;
        real_hist_mag_bimodal  = histogram_is_two_level(hist_mag);
        real_hist_freq_bimodal = histogram_is_two_level(hist_freq);

        last_sequence = seq_after;
        return 1;
}

SignalType recognize_signal_type(void) {
    if (real_2psk_flag == 1) return SIGNAL_2PSK;

    if (real_var_mag > MAG_VARIANCE_THRESHOLD) {
        return real_hist_mag_bimodal ? SIGNAL_2ASK : SIGNAL_AM;
    }

    if (real_var_freq > FREQ_VARIANCE_THRESHOLD) {
        return real_hist_freq_bimodal ? SIGNAL_2FSK : SIGNAL_FM;
    }

    return SIGNAL_CW;
}
