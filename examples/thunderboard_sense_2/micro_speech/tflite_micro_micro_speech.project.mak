####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 11                                              #
####################################################################

BASE_SDK_PATH = ../../../gecko_sdk
UNAME:=$(shell uname -s | sed -e 's/^\(CYGWIN\).*/\1/' | sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.1.1

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DSL_BOARD_NAME="BRD4166A"' \
 '-DSL_BOARD_REV="D03"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DTF_LITE_MCU_DEBUG_LOG=1' \
 '-DCMSIS_NN=1'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DSL_BOARD_NAME="BRD4166A"' \
 '-DSL_BOARD_REV="D03"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DTF_LITE_MCU_DEBUG_LOG=1' \
 '-DCMSIS_NN=1'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -Imicro_speech \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Include \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/platform/CMSIS/DSP/Include \
 -I$(SDK_PATH)/platform/CMSIS/DSP/Include/dsp \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/driver/leddrv/inc \
 -I$(SDK_PATH)/hardware/driver/mic/inc \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/inc \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/cmsis \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Include \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/flatbuffers/include \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/gemmlowp \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/ruy \
 -I$(SDK_PATH)/util/third_party/tflite-micro \
 -I$(SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lstdc++ \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPBasicMath.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPBayes.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPCommon.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPComplexMath.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPController.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPDistance.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPFastMath.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPFiltering.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPInterpolation.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPMatrix.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPQuaternionMath.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPStatistics.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPSupport.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPSVM.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m4/libCMSISDSPTransform.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build:
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(SDK_PATH)/hardware/board/src/sl_board_init.c
	@echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/mic/src/sl_mic_i2s.o: $(SDK_PATH)/hardware/driver/mic/src/sl_mic_i2s.c
	@echo 'Building $(SDK_PATH)/hardware/driver/mic/src/sl_mic_i2s.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mic/src/sl_mic_i2s.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mic/src/sl_mic_i2s.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mic/src/sl_mic_i2s.o

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@echo 'Building $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
	@echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
	@echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(SDK_PATH)/platform/emlib/src/em_core.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_core.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(SDK_PATH)/platform/emlib/src/em_ldma.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_ldma.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/filterbank.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/filterbank.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/filterbank.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/filterbank.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/filterbank.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/filterbank.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/filterbank_util.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/filterbank_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/filterbank_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/filterbank_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/filterbank_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/filterbank_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/frontend.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/frontend.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/frontend.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/frontend.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/frontend.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/frontend.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/frontend_util.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/frontend_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/frontend_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/frontend_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/frontend_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/frontend_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/log_lut.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/log_lut.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/log_lut.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/log_lut.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/log_lut.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/log_lut.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/log_scale.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/log_scale.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/log_scale.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/log_scale.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/log_scale.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/log_scale.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/log_scale_util.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/log_scale_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/log_scale_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/log_scale_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/log_scale_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/log_scale_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction_util.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/noise_reduction_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control_util.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/pcan_gain_control_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/window.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/window.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/window.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/window.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/window.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/window.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/window_util.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/window_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/window_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/lib/window_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/window_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/lib/window_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/sl_ml_fft.o: $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/sl_ml_fft.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/sl_ml_fft.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/microfrontend/sl_ml_fft.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/sl_ml_fft.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/microfrontend/sl_ml_fft.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/debug_log.o: $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/debug_log.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/debug_log.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/debug_log.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/debug_log.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/debug_log.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation.o: $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation_init.o: $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation_init.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation_init.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation_init.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_ml_audio_feature_generation_init.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.o: $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/c/common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/c/common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/c/common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/c/common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/c/common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/c/common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/error_reporter.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/error_reporter.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/error_reporter.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/error_reporter.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/error_reporter.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/error_reporter.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/flatbuffer_conversions.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/flatbuffer_conversions.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/flatbuffer_conversions.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/flatbuffer_conversions.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/flatbuffer_conversions.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/flatbuffer_conversions.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/op_resolver.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/op_resolver.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/op_resolver.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/op_resolver.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/op_resolver.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/op_resolver.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/tensor_utils.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/tensor_utils.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/tensor_utils.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/core/api/tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/tensor_utils.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/core/api/tensor_utils.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/quantization_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/kernels/kernel_util.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/kernels/kernel_util.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/kernels/kernel_util.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/kernels/kernel_util.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/kernels/kernel_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/kernels/kernel_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/all_ops_resolver.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/all_ops_resolver.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/all_ops_resolver.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/all_ops_resolver.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/all_ops_resolver.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/all_ops_resolver.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/recording_simple_memory_allocator.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/recording_simple_memory_allocator.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/recording_simple_memory_allocator.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/recording_simple_memory_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/recording_simple_memory_allocator.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/recording_simple_memory_allocator.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/simple_memory_allocator.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/simple_memory_allocator.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/simple_memory_allocator.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/simple_memory_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/simple_memory_allocator.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/arena_allocator/simple_memory_allocator.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/cortex_m_generic/micro_time.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/cortex_m_generic/micro_time.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/cortex_m_generic/micro_time.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/cortex_m_generic/micro_time.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/cortex_m_generic/micro_time.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/cortex_m_generic/micro_time.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/fake_micro_context.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/fake_micro_context.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/fake_micro_context.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/fake_micro_context.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/fake_micro_context.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/fake_micro_context.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/flatbuffer_utils.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/activations_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_n.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_n.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_n.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_n.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_n.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/add_n.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/arg_min_max.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/arg_min_max.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/arg_min_max.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/arg_min_max.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/arg_min_max.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/arg_min_max.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/assign_variable.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/assign_variable.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/assign_variable.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/assign_variable.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/assign_variable.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/assign_variable.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/batch_to_space_nd.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/batch_to_space_nd.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/batch_to_space_nd.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/batch_to_space_nd.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/batch_to_space_nd.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/batch_to_space_nd.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_args.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_args.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_args.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_args.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_args.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_args.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_to.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_to.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_to.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_to.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_to.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/broadcast_to.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/call_once.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/call_once.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/call_once.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/call_once.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/call_once.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/call_once.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cast.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cast.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cast.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cast.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cast.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cast.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ceil.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ceil.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ceil.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ceil.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ceil.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ceil.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/add.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/add.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/add.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/add.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/add.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/add.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/conv.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/conv.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/conv.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/conv.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/conv.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/conv.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/pooling.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/pooling.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/pooling.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/pooling.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/pooling.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/pooling.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/softmax.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/softmax.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/softmax.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/softmax.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/softmax.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/softmax.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/svdf.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/svdf.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/svdf.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/svdf.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/svdf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/svdf.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/comparisons.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/comparisons.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/comparisons.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/comparisons.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/comparisons.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/comparisons.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/concatenation.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/concatenation.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/concatenation.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/concatenation.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/concatenation.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/concatenation.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/conv_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/conv_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/conv_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/conv_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/conv_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/conv_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cumsum.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cumsum.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cumsum.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cumsum.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cumsum.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cumsum.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depth_to_space.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depth_to_space.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depth_to_space.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depth_to_space.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depth_to_space.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depth_to_space.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depthwise_conv_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depthwise_conv_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depthwise_conv_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depthwise_conv_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depthwise_conv_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/depthwise_conv_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/dequantize_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elementwise.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elementwise.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elementwise.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elementwise.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elementwise.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elementwise.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elu.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elu.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elu.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elu.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elu.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/elu.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ethosu.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ethosu.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ethosu.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ethosu.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ethosu.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/ethosu.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/exp.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/exp.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/exp.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/exp.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/exp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/exp.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/expand_dims.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/expand_dims.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/expand_dims.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/expand_dims.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/expand_dims.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/expand_dims.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fill.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fill.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fill.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fill.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fill.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fill.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_div.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_div.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_div.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_div.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_div.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_div.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_mod.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_mod.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_mod.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_mod.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_mod.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/floor_mod.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fully_connected_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fully_connected_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fully_connected_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fully_connected_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fully_connected_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/fully_connected_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather_nd.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather_nd.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather_nd.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather_nd.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather_nd.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/gather_nd.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/hard_swish_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/if.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/if.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/if.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/if.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/if.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/if.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_runner.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_runner.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_runner.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_runner.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_runner.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_runner.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_util.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_util.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_util.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_util.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/kernel_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2_pool_2d.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2_pool_2d.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2_pool_2d.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2_pool_2d.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2_pool_2d.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2_pool_2d.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2norm.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2norm.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2norm.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2norm.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2norm.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/l2norm.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/leaky_relu_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/log_softmax.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/log_softmax.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/log_softmax.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/log_softmax.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/log_softmax.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/log_softmax.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logical_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/logistic_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/lstm_eval.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/lstm_eval.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/lstm_eval.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/lstm_eval.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/lstm_eval.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/lstm_eval.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/micro_tensor_utils.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/micro_tensor_utils.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/micro_tensor_utils.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/micro_tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/micro_tensor_utils.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/micro_tensor_utils.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mirror_pad.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mirror_pad.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mirror_pad.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mirror_pad.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mirror_pad.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mirror_pad.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mul_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mul_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mul_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mul_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mul_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/mul_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/neg.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/neg.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/neg.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/neg.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/neg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/neg.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pack.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pack.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pack.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pack.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pack.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pack.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pad.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pad.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pad.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pad.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pad.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pad.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pooling_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pooling_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pooling_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pooling_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pooling_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/pooling_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/prelu_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/quantize_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/read_variable.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/read_variable.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/read_variable.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/read_variable.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/read_variable.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/read_variable.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reduce.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reduce.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reduce.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reduce.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reduce.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reduce.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reshape.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reshape.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reshape.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reshape.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reshape.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/reshape.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_bilinear.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_bilinear.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_bilinear.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_bilinear.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_bilinear.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_bilinear.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/round.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/round.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/round.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/round.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/round.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/round.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/shape.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/shape.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/shape.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/shape.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/shape.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/shape.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/slice.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/slice.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/slice.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/slice.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/slice.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/slice.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/softmax_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/softmax_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/softmax_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/softmax_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/softmax_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/softmax_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_batch_nd.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_batch_nd.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_batch_nd.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_batch_nd.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_batch_nd.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_batch_nd.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_depth.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_depth.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_depth.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_depth.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_depth.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/space_to_depth.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split_v.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split_v.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split_v.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split_v.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split_v.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/split_v.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/squeeze.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/squeeze.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/squeeze.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/squeeze.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/squeeze.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/squeeze.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/strided_slice.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/strided_slice.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/strided_slice.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/strided_slice.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/strided_slice.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/strided_slice.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/sub_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/svdf_common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/svdf_common.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/svdf_common.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/svdf_common.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/svdf_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/svdf_common.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/tanh.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/tanh.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/tanh.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/tanh.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/tanh.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/tanh.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose_conv.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose_conv.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose_conv.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose_conv.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose_conv.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/transpose_conv.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unpack.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unpack.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unpack.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unpack.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unpack.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/unpack.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/var_handle.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/var_handle.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/var_handle.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/var_handle.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/var_handle.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/var_handle.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/while.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/while.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/while.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/while.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/while.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/while.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/zeros_like.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/zeros_like.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/zeros_like.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/zeros_like.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/zeros_like.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/zeros_like.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_helpers.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_helpers.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_helpers.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_helpers.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_helpers.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_helpers.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/greedy_memory_planner.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/linear_memory_planner.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/linear_memory_planner.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/linear_memory_planner.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocation_info.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocation_info.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocation_info.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocation_info.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocation_info.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocation_info.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_context.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_context.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_context.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_context.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_context.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_context.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_error_reporter.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_error_reporter.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_error_reporter.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_error_reporter.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_error_reporter.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_error_reporter.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_graph.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_graph.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_graph.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_graph.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_graph.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_graph.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_interpreter.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_interpreter.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_interpreter.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_interpreter.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_interpreter.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_interpreter.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_profiler.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_profiler.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_profiler.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_profiler.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_profiler.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_profiler.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_resource_variable.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_resource_variable.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_resource_variable.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_resource_variable.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_resource_variable.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_resource_variable.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_string.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_string.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_string.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_string.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_string.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_string.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_utils.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_utils.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_utils.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_utils.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_utils.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_utils.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/mock_micro_graph.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/mock_micro_graph.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/mock_micro_graph.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/mock_micro_graph.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/mock_micro_graph.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/mock_micro_graph.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/recording_micro_allocator.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/test_helper_custom_ops.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/test_helpers.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/test_helpers.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/test_helpers.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/test_helpers.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/test_helpers.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/test_helpers.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/schema/schema_utils.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/schema/schema_utils.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/schema/schema_utils.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/schema/schema_utils.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/schema/schema_utils.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/schema/schema_utils.o

$(OUTPUT_DIR)/project/app.o: app.c
	@echo 'Building app.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@echo 'Building autogen/sl_board_default_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@echo 'Building autogen/sl_device_init_clocks.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@echo 'Building autogen/sl_event_handler.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@echo 'Building autogen/sl_iostream_handles.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@echo 'Building autogen/sl_iostream_init_usart_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o: autogen/sl_simple_led_instances.c
	@echo 'Building autogen/sl_simple_led_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o

$(OUTPUT_DIR)/project/main.o: main.c
	@echo 'Building main.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

$(OUTPUT_DIR)/project/micro_speech/feature_provider.o: micro_speech/feature_provider.cc
	@echo 'Building micro_speech/feature_provider.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ micro_speech/feature_provider.cc
CXXDEPS += $(OUTPUT_DIR)/project/micro_speech/feature_provider.d
OBJS += $(OUTPUT_DIR)/project/micro_speech/feature_provider.o

$(OUTPUT_DIR)/project/micro_speech/main_functions.o: micro_speech/main_functions.cc
	@echo 'Building micro_speech/main_functions.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ micro_speech/main_functions.cc
CXXDEPS += $(OUTPUT_DIR)/project/micro_speech/main_functions.d
OBJS += $(OUTPUT_DIR)/project/micro_speech/main_functions.o

$(OUTPUT_DIR)/project/micro_speech/micro_features/micro_features_generator.o: micro_speech/micro_features/micro_features_generator.cc
	@echo 'Building micro_speech/micro_features/micro_features_generator.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ micro_speech/micro_features/micro_features_generator.cc
CXXDEPS += $(OUTPUT_DIR)/project/micro_speech/micro_features/micro_features_generator.d
OBJS += $(OUTPUT_DIR)/project/micro_speech/micro_features/micro_features_generator.o

$(OUTPUT_DIR)/project/micro_speech/micro_features/micro_model_settings.o: micro_speech/micro_features/micro_model_settings.cc
	@echo 'Building micro_speech/micro_features/micro_model_settings.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ micro_speech/micro_features/micro_model_settings.cc
CXXDEPS += $(OUTPUT_DIR)/project/micro_speech/micro_features/micro_model_settings.d
OBJS += $(OUTPUT_DIR)/project/micro_speech/micro_features/micro_model_settings.o

$(OUTPUT_DIR)/project/micro_speech/micro_speech_model_data.o: micro_speech/micro_speech_model_data.cc
	@echo 'Building micro_speech/micro_speech_model_data.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ micro_speech/micro_speech_model_data.cc
CXXDEPS += $(OUTPUT_DIR)/project/micro_speech/micro_speech_model_data.d
OBJS += $(OUTPUT_DIR)/project/micro_speech/micro_speech_model_data.o

$(OUTPUT_DIR)/project/micro_speech/recognize_commands.o: micro_speech/recognize_commands.cc
	@echo 'Building micro_speech/recognize_commands.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ micro_speech/recognize_commands.cc
CXXDEPS += $(OUTPUT_DIR)/project/micro_speech/recognize_commands.d
OBJS += $(OUTPUT_DIR)/project/micro_speech/recognize_commands.o

$(OUTPUT_DIR)/project/micro_speech/sl_audio_provider.o: micro_speech/sl_audio_provider.cc
	@echo 'Building micro_speech/sl_audio_provider.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ micro_speech/sl_audio_provider.cc
CXXDEPS += $(OUTPUT_DIR)/project/micro_speech/sl_audio_provider.d
OBJS += $(OUTPUT_DIR)/project/micro_speech/sl_audio_provider.o

$(OUTPUT_DIR)/project/micro_speech/sl_command_responder.o: micro_speech/sl_command_responder.cc
	@echo 'Building micro_speech/sl_command_responder.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ micro_speech/sl_command_responder.cc
CXXDEPS += $(OUTPUT_DIR)/project/micro_speech/sl_command_responder.d
OBJS += $(OUTPUT_DIR)/project/micro_speech/sl_command_responder.o

$(OUTPUT_DIR)/project/tflite_micro_micro_speech.o: tflite_micro_micro_speech.c
	@echo 'Building tflite_micro_micro_speech.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ tflite_micro_micro_speech.c
CDEPS += $(OUTPUT_DIR)/project/tflite_micro_micro_speech.d
OBJS += $(OUTPUT_DIR)/project/tflite_micro_micro_speech.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA