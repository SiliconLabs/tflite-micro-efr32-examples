####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 10                                              #
####################################################################

BASE_SDK_PATH = ../../../gecko_sdk
UNAME:=$(shell uname -s | sed -e 's/^\(CYGWIN\).*/\1/' | sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.0.0

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
 -I$(SDK_PATH)/platform/CMSIS/Include \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/emlib/host/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/driver/leddrv/inc \
 -I$(SDK_PATH)/hardware/driver/mic/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/cmsis \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/flatbuffers/include \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/gemmlowp \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/kissfft \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/ruy \
 -I$(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib \
 -I$(SDK_PATH)/util/third_party/tflite-micro \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/inc \
 -I$(SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lstdc++ \
 -lgcc \
 -lc \
 -lm \
 -lnosys

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
 -fno-builtin \
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
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
 -fno-builtin \
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
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

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.o

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

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.o: $(SDK_PATH)/platform/emlib/src/em_assert.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_assert.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o: $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/flatbuffers/src/util.o: $(SDK_PATH)/util/third_party/tensorflow_extra/flatbuffers/src/util.cpp
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/flatbuffers/src/util.cpp'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/flatbuffers/src/util.cpp
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/flatbuffers/src/util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/flatbuffers/src/util.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/kissfft/kiss_fft.o: $(SDK_PATH)/util/third_party/tensorflow_extra/kissfft/kiss_fft.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/kissfft/kiss_fft.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/kissfft/kiss_fft.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/kissfft/kiss_fft.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/kissfft/kiss_fft.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/kissfft/tools/kiss_fftr.o: $(SDK_PATH)/util/third_party/tensorflow_extra/kissfft/tools/kiss_fftr.c
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/kissfft/tools/kiss_fftr.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/kissfft/tools/kiss_fftr.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/kissfft/tools/kiss_fftr.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/kissfft/tools/kiss_fftr.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/ruy/ruy/profiler/instrumentation.o: $(SDK_PATH)/util/third_party/tensorflow_extra/ruy/ruy/profiler/instrumentation.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/ruy/ruy/profiler/instrumentation.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/ruy/ruy/profiler/instrumentation.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/ruy/ruy/profiler/instrumentation.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/ruy/ruy/profiler/instrumentation.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/debug_log.o: $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/debug_log.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/debug_log.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/debug_log.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/debug_log.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/debug_log.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.o: $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/src/sl_tflite_micro_init.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/c/common.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/c/common.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/c/common.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/c/common.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/c/common.d
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

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/fft_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/frontend_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_lut.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib/window_util.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/circular_buffer_flexbuffers_generated_data.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/detection_postprocess_flexbuffers_generated_data.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/maximum_minimum.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_allocator.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_time.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_time.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_time.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/micro_time.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_time.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/micro_time.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/recording_simple_memory_allocator.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/recording_simple_memory_allocator.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/recording_simple_memory_allocator.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/recording_simple_memory_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/recording_simple_memory_allocator.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/recording_simple_memory_allocator.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/simple_memory_allocator.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/simple_memory_allocator.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/simple_memory_allocator.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/simple_memory_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/simple_memory_allocator.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/simple_memory_allocator.o

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/system_setup.o

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
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA