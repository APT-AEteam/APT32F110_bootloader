##
## Auto Generated makefile by CDK
## Do not modify this file, and any manual changes will be erased!!!   
##
ProjectName            :=apt32f110x
ConfigurationName      :=BuildSet
ProjectPath            :=./
PackagePath            :=../components/csi
IntermediateDirectory  :=.
OutDir                 :=Obj
PackageOutDir          :=Obj/BuildSet/Packages/apt_csi/v1.0.3
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
OutputFile             :=libapt_csi
ObjectSwitch           :=-o 
ObjectsFileList        :=$(PackageOutDir)/apt_csi.txt
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
CXXFLAGS :=$(PreprocessorSwitch)include  -Os $(PreprocessorSwitch)USE_APT32F110X_CHIP $(PreprocessorSwitch)USE_APT32F110X_EVB $(PreprocessorSwitch)USE_APT_CONSOLE $(PreprocessorSwitch)USE_APT_CSI $(PreprocessorSwitch)USE_SDK_110X  -Og  -g3 -Wno-unused-function -Og  -g3  -Wall  -ffunction-sections -nostdlib -Wpointer-arith -Wl,-EL -fdata-sections -fdata-sections -g $(PreprocessorSwitch)CONFIG_ADC=1 $(PreprocessorSwitch)CONFIG_ARCH_INTERRUPTSTACK=1024 $(PreprocessorSwitch)CONFIG_DEBUG_MODE=1 $(PreprocessorSwitch)CONFIG_KERNEL_NONE=1 $(PreprocessorSwitch)CONFIG_SUPPORT_TSPEND=1 $(PreprocessorSwitch)CONFIG_XIP=1 $(PreprocessorSwitch)DBG_PRINT2PC=1 $(PreprocessorSwitch)IS_CHIP_1101=1 $(PreprocessorSwitch)IS_CHIP_1104=1   -mcpu=ck802   -melrw  -Os 
CFLAGS   :=$(PreprocessorSwitch)include  -Os $(PreprocessorSwitch)USE_APT32F110X_CHIP $(PreprocessorSwitch)USE_APT32F110X_EVB $(PreprocessorSwitch)USE_APT_CONSOLE $(PreprocessorSwitch)USE_APT_CSI $(PreprocessorSwitch)USE_SDK_110X  -Og  -g3 -Wno-unused-function -Og  -g3  -Wall  -ffunction-sections -nostdlib -Wpointer-arith -Wl,-EL -fdata-sections -fdata-sections -g $(PreprocessorSwitch)CONFIG_ADC=1 $(PreprocessorSwitch)CONFIG_ARCH_INTERRUPTSTACK=1024 $(PreprocessorSwitch)CONFIG_DEBUG_MODE=1 $(PreprocessorSwitch)CONFIG_KERNEL_NONE=1 $(PreprocessorSwitch)CONFIG_SUPPORT_TSPEND=1 $(PreprocessorSwitch)CONFIG_XIP=1 $(PreprocessorSwitch)DBG_PRINT2PC=1 $(PreprocessorSwitch)IS_CHIP_1101=1 $(PreprocessorSwitch)IS_CHIP_1104=1   -mcpu=ck802   -melrw  -Os 
ASFLAGS  :=$(PreprocessorSwitch)include   $(PreprocessorSwitch)USE_APT32F110X_CHIP $(PreprocessorSwitch)USE_APT32F110X_EVB $(PreprocessorSwitch)USE_APT_CONSOLE $(PreprocessorSwitch)USE_APT_CSI $(PreprocessorSwitch)USE_SDK_110X    $(PreprocessorSwitch)CONFIG_ADC=1 $(PreprocessorSwitch)CONFIG_ARCH_INTERRUPTSTACK=1024 $(PreprocessorSwitch)CONFIG_DEBUG_MODE=1 $(PreprocessorSwitch)CONFIG_KERNEL_NONE=1 $(PreprocessorSwitch)CONFIG_SUPPORT_TSPEND=1 $(PreprocessorSwitch)CONFIG_XIP=1 $(PreprocessorSwitch)DBG_PRINT2PC=1 $(PreprocessorSwitch)IS_CHIP_1101=1 $(PreprocessorSwitch)IS_CHIP_1104=1   -mcpu=ck802   -melrw  -Wa,--gdwarf2 




Objects=

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

-include $(PackageOutDir)/*$(DependSuffix)
