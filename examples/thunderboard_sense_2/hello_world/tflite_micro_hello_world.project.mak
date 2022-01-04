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
 -Ihello_world \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Include \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/CMSIS/Include \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/emlib/host/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(SDK_PATH)/platform/driver/pwm/inc \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/cmsis \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/flatbuffers/include \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/gemmlowp \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/ruy \
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
 -u _printf_float \
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

$(OUTPUT_DIR)/sdk/platform/driver/pwm/src/sl_pwm.o: $(SDK_PATH)/platform/driver/pwm/src/sl_pwm.c
	@echo 'Building $(SDK_PATH)/platform/driver/pwm/src/sl_pwm.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/pwm/src/sl_pwm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/pwm/src/sl_pwm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/pwm/src/sl_pwm.o

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

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(SDK_PATH)/platform/emlib/src/em_rtcc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(SDK_PATH)/platform/emlib/src/em_timer.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_timer.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

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

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

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

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

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

$(OUTPUT_DIR)/project/autogen/sl_pwm_init.o: autogen/sl_pwm_init.c
	@echo 'Building autogen/sl_pwm_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_pwm_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_pwm_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_pwm_init.o

$(OUTPUT_DIR)/project/hello_world/constants.o: hello_world/constants.cc
	@echo 'Building hello_world/constants.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ hello_world/constants.cc
CXXDEPS += $(OUTPUT_DIR)/project/hello_world/constants.d
OBJS += $(OUTPUT_DIR)/project/hello_world/constants.o

$(OUTPUT_DIR)/project/hello_world/hello_world_model_data.o: hello_world/hello_world_model_data.cc
	@echo 'Building hello_world/hello_world_model_data.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ hello_world/hello_world_model_data.cc
CXXDEPS += $(OUTPUT_DIR)/project/hello_world/hello_world_model_data.d
OBJS += $(OUTPUT_DIR)/project/hello_world/hello_world_model_data.o

$(OUTPUT_DIR)/project/hello_world/main_functions.o: hello_world/main_functions.cc
	@echo 'Building hello_world/main_functions.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ hello_world/main_functions.cc
CXXDEPS += $(OUTPUT_DIR)/project/hello_world/main_functions.d
OBJS += $(OUTPUT_DIR)/project/hello_world/main_functions.o

$(OUTPUT_DIR)/project/hello_world/sl_output_handler.o: hello_world/sl_output_handler.cc
	@echo 'Building hello_world/sl_output_handler.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ hello_world/sl_output_handler.cc
CXXDEPS += $(OUTPUT_DIR)/project/hello_world/sl_output_handler.d
OBJS += $(OUTPUT_DIR)/project/hello_world/sl_output_handler.o

$(OUTPUT_DIR)/project/main.o: main.c
	@echo 'Building main.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

$(OUTPUT_DIR)/project/tflite_micro_hello_world.o: tflite_micro_hello_world.c
	@echo 'Building tflite_micro_hello_world.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ tflite_micro_hello_world.c
CDEPS += $(OUTPUT_DIR)/project/tflite_micro_hello_world.d
OBJS += $(OUTPUT_DIR)/project/tflite_micro_hello_world.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA