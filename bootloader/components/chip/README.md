# Chip组件信息：外设CSI驱动。依赖于SDK组件。

# Release Notes

=====================================================
Version: V1.0.0
Release Date: 2022.1.14

Release Notes
初始版本。
======================================================

======================================================
Version: V1.0.1
Release Date: 2022.1.24

Release Notes
1.统一apt csi驱动中中断参数命名、中断参数枚举定义命名。
2.统一同步和触发API接口参数。
3.修改BT计数模式中的BUG。
4.tick中添加注册回调函数csi接口函数。
5.添加用户寄存器读写的csi接口函数。
6.更新CNTA定时csi接口函数，和别的定时器统一。
======================================================

======================================================
Version: V1.0.2
Release Date: 2022.2.22

Release Notes
1.更新spi驱动接口，取消同步、异步概念。
2.修改ETCB驱动中数组越界Bug。
3.优化部分IP的api接口，实现应用代码和硬件层分离。
======================================================

======================================================
Version: V1.0.3
Release Date: 2022.4.1

Release Notes
1.微调、优化EPT、GPT接口，增加EPT、GPT的stop函数声明。
2.更新irqn_type_e中的中断命名，改为XXX_IRQ_NUM。
3.更新irqn_type_e中的中断命名，改为XXX_IRQ_NUM。
4.修改uart的偶校验处理BUG
5.修改dma通道启动函数处理中状态查询BUG
======================================================