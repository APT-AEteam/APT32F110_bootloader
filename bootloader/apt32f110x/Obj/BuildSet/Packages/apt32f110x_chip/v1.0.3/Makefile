##
## Auto Generated makefile by CDK
## Do not modify this file, and any manual changes will be erased!!!   
##
ProjectName            :=apt32f110x
ConfigurationName      :=BuildSet
ProjectPath            :=./
PackagePath            :=../components/chip
IntermediateDirectory  :=.
OutDir                 :=Obj
PackageOutDir          :=Obj/BuildSet/Packages/apt32f110x_chip/v1.0.3
User                   :=luhy
Date                   :=01/09/2023
CDKPath                :=D:/C-Sky/CDK
ToolchainPath          :=D:/C-Sky/CDKRepo/Toolchain/CKV2ElfMinilib/V3.10.29/R/
LinkerName             :=csky-elfabiv2-gcc
SIZE                   :=csky-elfabiv2-size
READELF                :=csky-elfabiv2-readelf
CHECKSUM               :=crc32
ObjectSuffix           :=.o
DependSuffix           :=.d
PreprocessSuffix       :=.i
PreprocessorSwitch     :=-D
UnPreprocessorSwitch   :=-U
DisassemSuffix         :=.asm
IHexSuffix             :=.ihex
BinSuffix              :=.bin
ExeSuffix              :=.elf
LibSuffix              :=.a
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
ElfInfoSwitch          :=-hlS
LibraryPathSwitch      :=-L
SourceSwitch           :=-c 
ObjdumpSwitch          :=-S
ObjcopySwitch          :=-O ihex
ObjcopyBinSwitch       :=-O binary
OutputFile             :=libapt32f110x_chip
ObjectSwitch           :=-o 
ObjectsFileList        :=$(PackageOutDir)/apt32f110x_chip.txt
MakeDirCommand         :=mkdir
IncludePackagePath     :=
IncludeCPath           :=$(IncludeSwitch)../components/chip/include $(IncludeSwitch)../components/chip/drivers/sys $(IncludeSwitch)../board/include $(IncludeSwitch)../components/console/include $(IncludeSwitch)../components/csi/include $(IncludeSwitch)../components/csi/include/core $(IncludeSwitch)../components/csi/include/drv  $(IncludeSwitch)include $(IncludeSwitch)src/include $(IncludeSwitch). 
IncludeAPath           :=$(IncludeSwitch)../components/chip/include $(IncludeSwitch)../components/chip/drivers/sys $(IncludeSwitch)../board/include $(IncludeSwitch)../components/console/include $(IncludeSwitch)../components/csi/include $(IncludeSwitch)../components/csi/include/core $(IncludeSwitch)../components/csi/include/drv  $(IncludeSwitch)include $(IncludeSwitch)src/include $(IncludeSwitch). 
IncludeProjectPath     :=

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       :=csky-elfabiv2-ar rcu
CXX      :=csky-elfabiv2-g++
CC       :=csky-elfabiv2-gcc
AS       :=csky-elfabiv2-gcc
OBJDUMP  :=csky-elfabiv2-objdump
OBJCOPY  :=csky-elfabiv2-objcopy
CXXFLAGS :=$(PreprocessorSwitch)NO_MORE_DEFINE  $(PreprocessorSwitch)USE_APT32F110X_CHIP $(PreprocessorSwitch)USE_APT32F110X_EVB $(PreprocessorSwitch)USE_APT_CONSOLE $(PreprocessorSwitch)USE_APT_CSI $(PreprocessorSwitch)USE_SDK_110X  -Og  -g3 -Wno-unused-function -Og  -g3  -Wall  -ffunction-sections -nostdlib -Wpointer-arith -Wl,-EL -fdata-sections -fdata-sections -g $(PreprocessorSwitch)CONFIG_ADC=1 $(PreprocessorSwitch)CONFIG_ARCH_INTERRUPTSTACK=1024 $(PreprocessorSwitch)CONFIG_DEBUG_MODE=1 $(PreprocessorSwitch)CONFIG_KERNEL_NONE=1 $(PreprocessorSwitch)CONFIG_SUPPORT_TSPEND=1 $(PreprocessorSwitch)CONFIG_XIP=1 $(PreprocessorSwitch)DBG_PRINT2PC=1 $(PreprocessorSwitch)IS_CHIP_1101=1 $(PreprocessorSwitch)IS_CHIP_1104=1   -mcpu=ck802   -melrw  -Os 
CFLAGS   :=$(PreprocessorSwitch)NO_MORE_DEFINE  $(PreprocessorSwitch)USE_APT32F110X_CHIP $(PreprocessorSwitch)USE_APT32F110X_EVB $(PreprocessorSwitch)USE_APT_CONSOLE $(PreprocessorSwitch)USE_APT_CSI $(PreprocessorSwitch)USE_SDK_110X  -Og  -g3 -Wno-unused-function -Og  -g3  -Wall  -ffunction-sections -nostdlib -Wpointer-arith -Wl,-EL -fdata-sections -fdata-sections -g $(PreprocessorSwitch)CONFIG_ADC=1 $(PreprocessorSwitch)CONFIG_ARCH_INTERRUPTSTACK=1024 $(PreprocessorSwitch)CONFIG_DEBUG_MODE=1 $(PreprocessorSwitch)CONFIG_KERNEL_NONE=1 $(PreprocessorSwitch)CONFIG_SUPPORT_TSPEND=1 $(PreprocessorSwitch)CONFIG_XIP=1 $(PreprocessorSwitch)DBG_PRINT2PC=1 $(PreprocessorSwitch)IS_CHIP_1101=1 $(PreprocessorSwitch)IS_CHIP_1104=1   -mcpu=ck802   -melrw  -Os 
ASFLAGS  :=$(PreprocessorSwitch)NO_MORE_DEFINE  $(PreprocessorSwitch)USE_APT32F110X_CHIP $(PreprocessorSwitch)USE_APT32F110X_EVB $(PreprocessorSwitch)USE_APT_CONSOLE $(PreprocessorSwitch)USE_APT_CSI $(PreprocessorSwitch)USE_SDK_110X    $(PreprocessorSwitch)CONFIG_ADC=1 $(PreprocessorSwitch)CONFIG_ARCH_INTERRUPTSTACK=1024 $(PreprocessorSwitch)CONFIG_DEBUG_MODE=1 $(PreprocessorSwitch)CONFIG_KERNEL_NONE=1 $(PreprocessorSwitch)CONFIG_SUPPORT_TSPEND=1 $(PreprocessorSwitch)CONFIG_XIP=1 $(PreprocessorSwitch)DBG_PRINT2PC=1 $(PreprocessorSwitch)IS_CHIP_1101=1 $(PreprocessorSwitch)IS_CHIP_1104=1   -mcpu=ck802   -melrw  -Wa,--gdwarf2 


Objects0=$(PackageOutDir)/drivers_adc$(ObjectSuffix) $(PackageOutDir)/drivers_bt$(ObjectSuffix) $(PackageOutDir)/drivers_cmp$(ObjectSuffix) $(PackageOutDir)/drivers_cnta$(ObjectSuffix) $(PackageOutDir)/drivers_crc$(ObjectSuffix) $(PackageOutDir)/drivers_dma$(ObjectSuffix) $(PackageOutDir)/drivers_ept$(ObjectSuffix) $(PackageOutDir)/drivers_etb$(ObjectSuffix) $(PackageOutDir)/drivers_gpio$(ObjectSuffix) $(PackageOutDir)/drivers_gpta$(ObjectSuffix) \
	$(PackageOutDir)/drivers_gptb$(ObjectSuffix) $(PackageOutDir)/drivers_hwdiv$(ObjectSuffix) $(PackageOutDir)/drivers_ifc$(ObjectSuffix) $(PackageOutDir)/drivers_iic$(ObjectSuffix) $(PackageOutDir)/drivers_iwdt$(ObjectSuffix) $(PackageOutDir)/drivers_lcd$(ObjectSuffix) $(PackageOutDir)/drivers_led$(ObjectSuffix) $(PackageOutDir)/drivers_lin$(ObjectSuffix) $(PackageOutDir)/drivers_lpt$(ObjectSuffix) $(PackageOutDir)/drivers_pinctrl$(ObjectSuffix) \
	$(PackageOutDir)/drivers_ringbuf$(ObjectSuffix) $(PackageOutDir)/drivers_rtc$(ObjectSuffix) $(PackageOutDir)/drivers_rtc_alg$(ObjectSuffix) $(PackageOutDir)/drivers_sio$(ObjectSuffix) $(PackageOutDir)/drivers_spi$(ObjectSuffix) $(PackageOutDir)/drivers_sys_clk$(ObjectSuffix) $(PackageOutDir)/drivers_sys_devices$(ObjectSuffix) $(PackageOutDir)/drivers_sys_irq$(ObjectSuffix) $(PackageOutDir)/drivers_sys_mem_init$(ObjectSuffix) $(PackageOutDir)/drivers_sys_pm$(ObjectSuffix) \
	$(PackageOutDir)/drivers_sys_reliability$(ObjectSuffix) $(PackageOutDir)/drivers_sys_startup$(ObjectSuffix) $(PackageOutDir)/drivers_sys_sys_clk$(ObjectSuffix) $(PackageOutDir)/drivers_sys_tick$(ObjectSuffix) $(PackageOutDir)/drivers_tkey$(ObjectSuffix) $(PackageOutDir)/drivers_tkey_parameter$(ObjectSuffix) $(PackageOutDir)/drivers_uart$(ObjectSuffix) $(PackageOutDir)/drivers_usart$(ObjectSuffix) $(PackageOutDir)/drivers_wwdt$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all

all: $(OutDir)/$(OutputFile)$(LibSuffix)

$(OutDir)/$(OutputFile)$(LibSuffix): $(Objects) Always_Archive
	@echo archiving $(OutputFile)$(LibSuffix) ...
	@$(AR) $(ArchiveOutputSwitch) $(OutDir)/$(OutputFile)$(LibSuffix) @$(ObjectsFileList)

Always_Archive:


##
## Objects
##
$(PackageOutDir)/drivers_adc$(ObjectSuffix): ../components/chip/drivers/adc.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/adc.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_adc$(ObjectSuffix) -MF$(PackageOutDir)/drivers_adc$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_adc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_bt$(ObjectSuffix): ../components/chip/drivers/bt.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/bt.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_bt$(ObjectSuffix) -MF$(PackageOutDir)/drivers_bt$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_bt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_cmp$(ObjectSuffix): ../components/chip/drivers/cmp.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/cmp.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_cmp$(ObjectSuffix) -MF$(PackageOutDir)/drivers_cmp$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_cmp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_cnta$(ObjectSuffix): ../components/chip/drivers/cnta.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/cnta.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_cnta$(ObjectSuffix) -MF$(PackageOutDir)/drivers_cnta$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_cnta$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_crc$(ObjectSuffix): ../components/chip/drivers/crc.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/crc.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_crc$(ObjectSuffix) -MF$(PackageOutDir)/drivers_crc$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_crc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_dma$(ObjectSuffix): ../components/chip/drivers/dma.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/dma.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_dma$(ObjectSuffix) -MF$(PackageOutDir)/drivers_dma$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_dma$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_ept$(ObjectSuffix): ../components/chip/drivers/ept.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/ept.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_ept$(ObjectSuffix) -MF$(PackageOutDir)/drivers_ept$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_ept$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_etb$(ObjectSuffix): ../components/chip/drivers/etb.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/etb.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_etb$(ObjectSuffix) -MF$(PackageOutDir)/drivers_etb$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_etb$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_gpio$(ObjectSuffix): ../components/chip/drivers/gpio.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/gpio.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_gpio$(ObjectSuffix) -MF$(PackageOutDir)/drivers_gpio$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_gpio$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_gpta$(ObjectSuffix): ../components/chip/drivers/gpta.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/gpta.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_gpta$(ObjectSuffix) -MF$(PackageOutDir)/drivers_gpta$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_gpta$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_gptb$(ObjectSuffix): ../components/chip/drivers/gptb.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/gptb.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_gptb$(ObjectSuffix) -MF$(PackageOutDir)/drivers_gptb$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_gptb$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_hwdiv$(ObjectSuffix): ../components/chip/drivers/hwdiv.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/hwdiv.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_hwdiv$(ObjectSuffix) -MF$(PackageOutDir)/drivers_hwdiv$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_hwdiv$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_ifc$(ObjectSuffix): ../components/chip/drivers/ifc.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/ifc.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_ifc$(ObjectSuffix) -MF$(PackageOutDir)/drivers_ifc$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_ifc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_iic$(ObjectSuffix): ../components/chip/drivers/iic.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/iic.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_iic$(ObjectSuffix) -MF$(PackageOutDir)/drivers_iic$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_iic$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_iwdt$(ObjectSuffix): ../components/chip/drivers/iwdt.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/iwdt.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_iwdt$(ObjectSuffix) -MF$(PackageOutDir)/drivers_iwdt$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_iwdt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_lcd$(ObjectSuffix): ../components/chip/drivers/lcd.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/lcd.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_lcd$(ObjectSuffix) -MF$(PackageOutDir)/drivers_lcd$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_lcd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_led$(ObjectSuffix): ../components/chip/drivers/led.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/led.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_led$(ObjectSuffix) -MF$(PackageOutDir)/drivers_led$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_led$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_lin$(ObjectSuffix): ../components/chip/drivers/lin.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/lin.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_lin$(ObjectSuffix) -MF$(PackageOutDir)/drivers_lin$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_lin$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_lpt$(ObjectSuffix): ../components/chip/drivers/lpt.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/lpt.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_lpt$(ObjectSuffix) -MF$(PackageOutDir)/drivers_lpt$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_lpt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_pinctrl$(ObjectSuffix): ../components/chip/drivers/pinctrl.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/pinctrl.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_pinctrl$(ObjectSuffix) -MF$(PackageOutDir)/drivers_pinctrl$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_pinctrl$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_ringbuf$(ObjectSuffix): ../components/chip/drivers/ringbuf.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/ringbuf.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_ringbuf$(ObjectSuffix) -MF$(PackageOutDir)/drivers_ringbuf$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_ringbuf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_rtc$(ObjectSuffix): ../components/chip/drivers/rtc.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/rtc.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_rtc$(ObjectSuffix) -MF$(PackageOutDir)/drivers_rtc$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_rtc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_rtc_alg$(ObjectSuffix): ../components/chip/drivers/rtc_alg.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/rtc_alg.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_rtc_alg$(ObjectSuffix) -MF$(PackageOutDir)/drivers_rtc_alg$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_rtc_alg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_sio$(ObjectSuffix): ../components/chip/drivers/sio.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/sio.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_sio$(ObjectSuffix) -MF$(PackageOutDir)/drivers_sio$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_sio$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_spi$(ObjectSuffix): ../components/chip/drivers/spi.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/spi.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_spi$(ObjectSuffix) -MF$(PackageOutDir)/drivers_spi$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_spi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_sys_clk$(ObjectSuffix): ../components/chip/drivers/sys/clk.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/sys/clk.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_sys_clk$(ObjectSuffix) -MF$(PackageOutDir)/drivers_sys_clk$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_sys_clk$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_sys_devices$(ObjectSuffix): ../components/chip/drivers/sys/devices.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/sys/devices.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_sys_devices$(ObjectSuffix) -MF$(PackageOutDir)/drivers_sys_devices$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_sys_devices$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_sys_irq$(ObjectSuffix): ../components/chip/drivers/sys/irq.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/sys/irq.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_sys_irq$(ObjectSuffix) -MF$(PackageOutDir)/drivers_sys_irq$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_sys_irq$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_sys_mem_init$(ObjectSuffix): ../components/chip/drivers/sys/mem_init.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/sys/mem_init.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_sys_mem_init$(ObjectSuffix) -MF$(PackageOutDir)/drivers_sys_mem_init$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_sys_mem_init$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_sys_pm$(ObjectSuffix): ../components/chip/drivers/sys/pm.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/sys/pm.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_sys_pm$(ObjectSuffix) -MF$(PackageOutDir)/drivers_sys_pm$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_sys_pm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_sys_reliability$(ObjectSuffix): ../components/chip/drivers/sys/reliability.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/sys/reliability.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_sys_reliability$(ObjectSuffix) -MF$(PackageOutDir)/drivers_sys_reliability$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_sys_reliability$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_sys_startup$(ObjectSuffix): ../components/chip/drivers/sys/startup.S  
	$(AS) $(SourceSwitch) ../components/chip/drivers/sys/startup.S $(ASFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_sys_startup$(ObjectSuffix) -MF$(PackageOutDir)/drivers_sys_startup$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_sys_startup$(ObjectSuffix) $(IncludeAPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_sys_sys_clk$(ObjectSuffix): ../components/chip/drivers/sys/sys_clk.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/sys/sys_clk.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_sys_sys_clk$(ObjectSuffix) -MF$(PackageOutDir)/drivers_sys_sys_clk$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_sys_sys_clk$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_sys_tick$(ObjectSuffix): ../components/chip/drivers/sys/tick.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/sys/tick.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_sys_tick$(ObjectSuffix) -MF$(PackageOutDir)/drivers_sys_tick$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_sys_tick$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_tkey$(ObjectSuffix): ../components/chip/drivers/tkey.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/tkey.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_tkey$(ObjectSuffix) -MF$(PackageOutDir)/drivers_tkey$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_tkey$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_tkey_parameter$(ObjectSuffix): ../components/chip/drivers/tkey_parameter.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/tkey_parameter.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_tkey_parameter$(ObjectSuffix) -MF$(PackageOutDir)/drivers_tkey_parameter$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_tkey_parameter$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_uart$(ObjectSuffix): ../components/chip/drivers/uart.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/uart.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_uart$(ObjectSuffix) -MF$(PackageOutDir)/drivers_uart$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_uart$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_usart$(ObjectSuffix): ../components/chip/drivers/usart.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/usart.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_usart$(ObjectSuffix) -MF$(PackageOutDir)/drivers_usart$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_usart$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)
$(PackageOutDir)/drivers_wwdt$(ObjectSuffix): ../components/chip/drivers/wwdt.c  
	$(CC) $(SourceSwitch) ../components/chip/drivers/wwdt.c $(CFLAGS) -MMD -MP -MT$(PackageOutDir)/drivers_wwdt$(ObjectSuffix) -MF$(PackageOutDir)/drivers_wwdt$(DependSuffix) $(ObjectSwitch)$(PackageOutDir)/drivers_wwdt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath) $(IncludeProjectPath)

-include $(PackageOutDir)/*$(DependSuffix)
