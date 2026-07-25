# BPSK 验证结果（2026-07-25）

- 定点参考模型：48/48 通过。覆盖 6/8/10 kbps、残余频偏 -5 kHz 至 +5 kHz、三个初相、低幅度加噪和 valid 空洞；无码 BER=0，带噪用例 BER=0。
- `tb_bpsk_rx_chain`：6/6 通过。6/8/10 kbps 分别测试 ±5 kHz；输出 282–283 个码元，每组最小误码数 0。
- `tb_bpsk_reacquire`：通过。8 kbps/+3 kHz 首次锁定，700 个零幅样点后失锁并清空码率，再锁定 10 kbps/-4 kHz；含不规则 valid 空洞和部分连续 valid，输出 273 个码元，最小误码数 0。
- `tb_demod_pool_core_bpsk`（真实 Xilinx CORDIC）：通过。37500 个 accepted 输入对应 37499 个 `feature_valid`，首样点抑制时序正确；4 个统计帧，`psk_flag=1`，8 kbps 输出 282 个码元，最小误码数 0。
- OOC 综合/时序：未完成。Vivado 2018.3 在本机对单触发器探针也以 `TclStackFree: incorrect freePtr` 崩溃；不能给出有效 WNS/TNS 和资源报告。
