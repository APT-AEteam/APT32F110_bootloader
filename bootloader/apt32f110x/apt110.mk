##
## Auto Generated makefile by CDK
## Do not modify this file, and any manual changes will be erased!!!   
##
## BuildSet
ProjectName            :=apt110
ConfigurationName      :=BuildSet
WorkspacePath          :=./
ProjectPath            :=./
IntermediateDirectory  :=Obj
OutDir                 :=$(IntermediateDirectory)
User                   :=yuanym
Date                   :=23/06/2022
CDKPath                :=D:/C-Sky/CDK
LinkerName             :=csky-elfabiv2-gcc
LinkerNameoption       :=
SIZE                   :=csky-elfabiv2-size
READELF                :=csky-elfabiv2-readelf
CHECKSUM               :=crc32
SharedObjectLinkerName :=
ObjectSuffix           :=.o
DependSuffix           :=.d
PreprocessSuffix       :=.i
DisassemSuffix         :=.asm
IHexSuffix             :=.ihex
BinSuffix              :=.bin
ExeSuffix              :=.elf
LibSuffix              :=.a
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
ElfInfoSwitch          :=-hlS
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
UnPreprocessorSwitch   :=-U
SourceSwitch           :=-c 
ObjdumpSwitch          :=-S
ObjcopySwitch          :=-O ihex
ObjcopyBinSwitch       :=-O binary
OutputFile             :=$(ProjectName)
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=apt110.txt
MakeDirCommand         :=mkdir
LinkOptions            :=   -Wl,-whole-archive -lsemi -Wl,-no-whole-archive  -nostartfiles  -Wl,--gc-sections  -T../../board/gcc_flash.ld  -mcpu=ck802 
LinkOtherFlagsOption   :=  
IncludePackagePath     :=
IncludeCPath           :=$(IncludeSwitch)../../components/chip/include $(IncludeSwitch)../../components/chip/drivers/sys $(IncludeSwitch)../../board/include $(IncludeSwitch)../../components/console/include $(IncludeSwitch)../../components/csi/include $(IncludeSwitch)../../components/csi/include/core $(IncludeSwitch)../../components/csi/include/drv  $(IncludeSwitch)include $(IncludeSwitch)src/include $(IncludeSwitch).  
IncludeAPath           :=$(IncludeSwitch)../../components/chip/include $(IncludeSwitch)../../components/chip/drivers/sys $(IncludeSwitch)../../board/include $(IncludeSwitch)../../components/console/include $(IncludeSwitch)../../components/csi/include $(IncludeSwitch)../../components/csi/include/core $(IncludeSwitch)../../components/csi/include/drv  $(IncludeSwitch)include $(IncludeSwitch)src/include $(IncludeSwitch).  
Libs                   := -Wl,--start-group $(LibrarySwitch)apt32f110x_chip $(LibrarySwitch)apt32f110x_evb $(LibrarySwitch)apt_console $(LibrarySwitch)apt_csi  -Wl,--end-group  
ArLibs                 := 
PackagesLibPath        :=$(LibraryPathSwitch)../../components/chip/lib $(LibraryPathSwitch)../../board/lib $(LibraryPathSwitch)../../components/console/lib $(LibraryPathSwitch)../../components/csi/lib $(LibraryPathSwitch)../../components/sdk_110x/lib 
LibPath                :=$(LibraryPathSwitch)Obj  $(PackagesLibPath) 

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
CXXFLAGS := $(PreprocessorSwitch)USE_APT32F110X_CHIP -Og  -g3 -Wno-unused-function $(PreprocessorSwitch)USE_APT32F110X_EVB -Og  -g3  -Wall  -ffunction-sections -nostdlib -Wpointer-arith -Wl,-EL -fdata-sections -fdata-sections -g $(PreprocessorSwitch)USE_APT_CONSOLE $(PreprocessorSwitch)USE_APT_CSI $(PreprocessorSwitch)USE_SDK_110X $(PreprocessorSwitch)CONFIG_ADC=1 $(PreprocessorSwitch)CONFIG_ARCH_INTERRUPTSTACK=1024 $(PreprocessorSwitch)CONFIG_DEBUG_MODE=1 $(PreprocessorSwitch)CONFIG_KERNEL_NONE=1 $(PreprocessorSwitch)CONFIG_SUPPORT_TSPEND=1 $(PreprocessorSwitch)CONFIG_XIP=1 $(PreprocessorSwitch)DBG_PRINT2PC=1 $(PreprocessorSwitch)IS_CHIP_1101=1 $(PreprocessorSwitch)IS_CHIP_1104=1   -mcpu=ck802   -melrw  -Os  -g1 
CFLAGS   := $(PreprocessorSwitch)USE_APT32F110X_CHIP -Og  -g3 -Wno-unused-function $(PreprocessorSwitch)USE_APT32F110X_EVB -Og  -g3  -Wall  -ffunction-sections -nostdlib -Wpointer-arith -Wl,-EL -fdata-sections -fdata-sections -g $(PreprocessorSwitch)USE_APT_CONSOLE $(PreprocessorSwitch)USE_APT_CSI $(PreprocessorSwitch)USE_SDK_110X $(PreprocessorSwitch)CONFIG_ADC=1 $(PreprocessorSwitch)CONFIG_ARCH_INTERRUPTSTACK=1024 $(PreprocessorSwitch)CONFIG_DEBUG_MODE=1 $(PreprocessorSwitch)CONFIG_KERNEL_NONE=1 $(PreprocessorSwitch)CONFIG_SUPPORT_TSPEND=1 $(PreprocessorSwitch)CONFIG_XIP=1 $(PreprocessorSwitch)DBG_PRINT2PC=1 $(PreprocessorSwitch)IS_CHIP_1101=1 $(PreprocessorSwitch)IS_CHIP_1104=1   -mcpu=ck802   -melrw  -Os  -g1 
ASFLAGS  := $(PreprocessorSwitch)USE_APT32F110X_CHIP  $(PreprocessorSwitch)USE_APT32F110X_EVB  $(PreprocessorSwitch)USE_APT_CONSOLE $(PreprocessorSwitch)USE_APT_CSI $(PreprocessorSwitch)USE_SDK_110X $(PreprocessorSwitch)CONFIG_ADC=1 $(PreprocessorSwitch)CONFIG_ARCH_INTERRUPTSTACK=1024 $(PreprocessorSwitch)CONFIG_DEBUG_MODE=1 $(PreprocessorSwitch)CONFIG_KERNEL_NONE=1 $(PreprocessorSwitch)CONFIG_SUPPORT_TSPEND=1 $(PreprocessorSwitch)CONFIG_XIP=1 $(PreprocessorSwitch)DBG_PRINT2PC=1 $(PreprocessorSwitch)IS_CHIP_1101=1 $(PreprocessorSwitch)IS_CHIP_1104=1   -mcpu=ck802   -melrw  -Wa,--gdwarf2 


Objects0=$(IntermediateDirectory)/src_bootloader$(ObjectSuffix) $(IntermediateDirectory)/src_main$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all
all: $(IntermediateDirectory)/$(OutputFile)

$(IntermediateDirectory)/$(OutputFile):  $(Objects) Always_Link 
	$(LinkerName) $(OutputSwitch) $(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) $(LinkerNameoption) $(LinkOtherFlagsOption)  -Wl,--ckmap=$(ProjectPath)/Lst/$(OutputFile).map  @$(ObjectsFileList)  $(LinkOptions) $(LibPath) $(Libs)
	@mv $(ProjectPath)/Lst/$(OutputFile).map $(ProjectPath)/Lst/$(OutputFile).temp && $(READELF) $(ElfInfoSwitch) $(ProjectPath)/Obj/$(OutputFile)$(ExeSuffix) > $(ProjectPath)/Lst/$(OutputFile).map && echo ====================================================================== >> $(ProjectPath)/Lst/$(OutputFile).map && cat $(ProjectPath)/Lst/$(OutputFile).temp >> $(ProjectPath)/Lst/$(OutputFile).map && rm -rf $(ProjectPath)/Lst/$(OutputFile).temp
	$(OBJCOPY) $(ObjcopySwitch) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)  $(ProjectPath)/Obj/$(OutputFile)$(IHexSuffix) 
	$(OBJDUMP) $(ObjdumpSwitch) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)  > $(ProjectPath)/Lst/$(OutputFile)$(DisassemSuffix) 
	@echo size of target:
	@$(SIZE) $(ProjectPath)$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) 
	@echo -n checksum value of target:  
	@$(CHECKSUM) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) 
	@$(ProjectName).modify.bat $(IntermediateDirectory) $(OutputFile)$(ExeSuffix) 

Always_Link:


##
## Objects
##
$(IntermediateDirectory)/src_bootloader$(ObjectSuffix): src/bootloader.c  
	$(CC) $(SourceSwitch) src/bootloader.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_bootloader$(ObjectSuffix) -MF$(IntermediateDirectory)/src_bootloader$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_bootloader$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_bootloader$(PreprocessSuffix): src/bootloader.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_bootloader$(PreprocessSuffix) src/bootloader.c

$(IntermediateDirectory)/src_main$(ObjectSuffix): src/main.c  
	$(CC) $(SourceSwitch) src/main.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_main$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_main$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_main$(PreprocessSuffix): src/main.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_main$(PreprocessSuffix) src/main.c


$(IntermediateDirectory)/__rt_entry$(ObjectSuffix): $(IntermediateDirectory)/__rt_entry$(DependSuffix)
	@$(AS) $(SourceSwitch) $(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) $(IncludeAPath)
$(IntermediateDirectory)/__rt_entry$(DependSuffix):
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) -MF$(IntermediateDirectory)/__rt_entry$(DependSuffix) -MM $(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S

-include $(IntermediateDirectory)/*$(DependSuffix)
