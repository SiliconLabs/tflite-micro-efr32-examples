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
COPIED_SDK_PATH ?= gecko_sdk_4.0.2

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
 '-DEFR32MG24B310F1536IM48=1' \
 '-DSL_BOARD_NAME="BRD2601B"' \
 '-DSL_BOARD_REV="A01"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DTF_LITE_MCU_DEBUG_LOG=1' \
 '-DCMSIS_NN=1'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-DEFR32MG24B310F1536IM48=1' \
 '-DSL_BOARD_NAME="BRD2601B"' \
 '-DSL_BOARD_REV="A01"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DTF_LITE_MCU_DEBUG_LOG=1' \
 '-DCMSIS_NN=1'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -Imicro_speech \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG24/Include \
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
 -I$(SDK_PATH)/platform/driver/mvp/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_eusart \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/cmsis \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/flatbuffers/include \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/gemmlowp \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/kissfft \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/ruy \
 -I$(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/experimental/microfrontend/lib \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/inc \
 -I$(SDK_PATH)/util/third_party/tflite-micro \
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
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
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
 -mfp16-format=ieee \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
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
 -mfp16-format=ieee \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
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

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.o: $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.c
	@echo 'Building $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG24/Source/GCC/startup_efr32mg24.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG24/Source/GCC/startup_efr32mg24.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG24/Source/GCC/startup_efr32mg24.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG24/Source/GCC/startup_efr32mg24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG24/Source/GCC/startup_efr32mg24.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG24/Source/GCC/startup_efr32mg24.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.o

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

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_math.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_math.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_math.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_math.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_math.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_math.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_add.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_add.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_add.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_add.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_add.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_add.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_conv2d.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_conv2d.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_conv2d.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_conv2d.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_conv2d.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_conv2d.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_depthwise_conv2d.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_depthwise_conv2d.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_depthwise_conv2d.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_depthwise_conv2d.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_depthwise_conv2d.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_depthwise_conv2d.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_fully_connected.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_fully_connected.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_fully_connected.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_fully_connected.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_fully_connected.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_fully_connected.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_pooling.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_pooling.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_pooling.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_pooling.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_pooling.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_pooling.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_transpose_conv2d.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_transpose_conv2d.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_transpose_conv2d.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_ml_transpose_conv2d.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_transpose_conv2d.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_ml_transpose_conv2d.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_power.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_power.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_power.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_power.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_power.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_power.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_util.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_util.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_util.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d.o: $(SDK_PATH)/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d.cc
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d.o

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d_opt.o: $(SDK_PATH)/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d_opt.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d_opt.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d_opt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d_opt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sli_mvp_ml_depthwise_conv2d_opt.o

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

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_eusart.o: $(SDK_PATH)/platform/emlib/src/em_eusart.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_eusart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_eusart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_eusart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_eusart.o

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

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.o

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

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_eusart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_eusart.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_eusart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_eusart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_eusart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_eusart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/add.o: $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/add.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/add.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/add.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/add.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/add.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/conv.o: $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/conv.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/conv.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/conv.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/conv.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/conv.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/debug_log.o: $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/debug_log.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/debug_log.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/debug_log.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/debug_log.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/debug_log.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/depthwise_conv.o: $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/depthwise_conv.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/depthwise_conv.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/depthwise_conv.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/depthwise_conv.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/depthwise_conv.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/fully_connected.o: $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/fully_connected.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/fully_connected.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/fully_connected.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/fully_connected.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/fully_connected.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/pooling.o: $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/pooling.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/pooling.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/pooling.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/pooling.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/pooling.o

$(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/transpose_conv.o: $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/transpose_conv.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/transpose_conv.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tensorflow_extra/siliconlabs/transpose_conv.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/transpose_conv.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tensorflow_extra/siliconlabs/transpose_conv.o

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

$(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.o: $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.cc
	@echo 'Building $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.cc
CXXDEPS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/tflite-micro/tensorflow/lite/micro/kernels/cmsis_nn/mul.o

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

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.o: autogen/sl_iostream_init_eusart_instances.c
	@echo 'Building autogen/sl_iostream_init_eusart_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_eusart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.o

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
# SIMPLICITY_STUDIO_METADATA=eJztnQmP3EaW57+KIQwWMzuuYl0qlbR2N9ySbGhgyYJK7tnBqBFgkpGZ7OIlHllZbvR33wheySNIRpDvBanBzq5blZnke79/3Hf849nHT7/9x9vXn8n9b79/ev32/tmrZz/8+ei53x1oFDuB/+OXZ5fnF1+efUd9K7Adf8e++P3zz2d3X579+U9foi/+D2EU/J1ayXfsJT9+5QU2ddkz+yQJXxnG4+Pjeey45iY+twLPiGPjPkltJzinVhBRZpa9HdIoebq32L/svcLal2eZ8e+++2EbuDaNvvNNj/9sBf7W2VW/8t8dl5a/xi7xjlfPydY14z2J92liB48+oWlsRgnJ3z3fM69p5LDH+auvjNevjJzQiGgYxEaydZ2EnnmOFQVndBtdX53Ro+mFLo2N0x/8++Pu6obY9EAenMTInidxSKm1N3JXhiyP0SuHWXcsShzfSYht2dYyIgYo5NDd7TFYHr1F0Y/uUS+InhZKMG3f/Zixw20Tl9r8v4tlePshesBtz7SjwwKwHcf9IesEcRJR0yuz6oEVXssE7whJv4RNYEY2fzKJAncZ9j4EuTKDeunyRUYTYqDEcCziXMULFRkd53IhvF9FqbyXLZVzBJKbXAS7h2AgWRzChZJEw3EPIPVcZ0N4Q4yZ26S7BVAHEEroH4y8CShuEJppEuyoP9AizEshm27N1E2yJHduaRBYgBm9BD2R8unzW/I68MLAp34Sa4mLErXruj9lW+VzxDIT0w30pJpaoAoB5Mo9yw2sh1h3KhAT9BPTAxe3N33bpZHu0O04l+XUHKgd5xJtuvxpvVmrx78CreaAFfmXoM1St+PHielbCwZxF0OWvWhmn95dKtx7aSYrWTQyRDRSPdvFYqKPQZFac6j3MfRQu47/QCP+zblrayRt+e2hO7eiaqyJ/amRr+NZrjVat9Vokgqe2lIzSSMa155ryW8+RxgXjcwkYPWcjqAQfChRjEEyY1hPNkJMYpokjr+L16JFQDWiQ6BeR16fFC171VhZh5Iu1IiK3Nh5TrcKCS2iWkHXLEi6tYnJ50lIGAUHx6ZL5Hkxw2CX0GONRcLEs57ZYsxijB7s+stFcrNZd3KxUklM0gNfJLUl04gQoS+sTccn29S3EifwFyn4uwA9qBG1gp3v/EHL1LQEbg9ED3Irq2ovwLv+ZVOtdlQRQQ9stzDRTitEkMti+mvxjn/5DKYdVsygWFEs1FASgsj1UXbUemAG7Adyc35xftXfTQldM9kGkdfqoDSeeZMNajae6Dxz77gO60r9ygKl9WDn0bc/f7q+ev/L1U3nwa7VII06noVP/vL6tfCxdgsmMaMkDUkWGR6LjFkDDlUoG2UwGnlYGbXgMCq9Ri7HYKyGEMQQ6Ww3IfuUPcUJ9ZYVJmLoaupV1IrSd77lpnZf7NenuEp/m+vLi+3l8+tbx7u5m5VrVQOgYDX6UYRxK1RBTMsLl6WvEFSoZ46DAUC3R8HGmXfW0sw5gQqzlx6txdNHBaFAvkm3Swd3iaBEHZne4tgFgxp3snxwFwwK3JaXLkxdECgw8/WSC0OXCCrUzIO/DZYGP1GosHsmezO2IiecOygLIKEDo6IkdN2l+QsEBWpqzesWzYcuCNSYna25eE6tY6jQL14uUuVyMZ8QXhq7glAg30ZLJ5OCQIU5jqylS/OKQYF7F1qLh3bFoMTtLB3cJYIiNQmDxbNlg0OBf79dPpVXDErcx+Wxj6rUztXSObMgUGFevo531Ot3xzKtPV2au4JQIH+gT7Fl+guj1ygU2F3Wdl8YvERQpD5uzKX7PXWMCfR8tbzjLz5sKMJRUUMTx5s5Zwgg4kShwr6CutSdUJe6y9elrnpd6pmOuwmOC4PXKFTYA5suPQpaMahwh+Z+s/wAbh1DhT5euiFTEKgwH5aenCgIFJhDy1+6O1QiqFBHwRqqnjqGEv3SFX9BoMZMYmfnm+4K2OskChoic+kypSBQYd4uP0JUMShwx1ZkJtY+NO2F4ZsgKgroOlotDQ4V/sVHzWPlUfP4yU/2S1OXDErcsbWdt0cYAryEUCNffrL8BKFAvoYGwJTaP11D1zOd0vdcw5TWlBmtg714xV8iKFA/2jNPHZhPXSKMU3vF/v9lgOveR1k7SzWXQBZBSK8XFX4t+FL0Vfu8Oc8L/OH1zY5vCdY11wPUJWYSsOCBDsmczmAARsNHO6A6Rzb4KfioR5Ol9DBGErtODF5iNlEqF6MsiZmk4J23FkzlwxhLnJ10lgSBa+1Np50cOw/GUTdBCs4myg6ag14LXsitWA0GYzS8daKhJw+PZ7I+TSSiOycAn3TqSCvitONUUE6Jw14roBzZzrJIGFEnL4Z1EXa9SqUSmVwjygziUggnJxTpv3Ixmu/HK6XX7+/f3Q/XSX0bJJpbBiOP5JQkMTdzj8QRBEEGWlXpQneDhXL+hh8nrNyMUmvmcViSgC13o4CeCd8j73KVXgZxLC924uxkLGfumVGjUF1fEmjFocI6yGquJMBYAaQDqnAzDMQPw7O862tkoLqbQSAvTAlLggfwbVNNoIYbgFIyptH43sTaoWxjrSq5FojglDfgUCt0GTVPZTUqdj5e6bfPd14IuX+fwsg5sQvx9i56Hjt0dSHe/jV+Y2d3LwTcv5BiCNg/wPe0JYFL19P6OHL9tnaOIfEVdNNVpLZox/Z4V86yy1GfnKtn3OWoa97Vs+9y2O5U7CwnLcNcugbrgpYnIcKM25TWsEKntF8GTd3feBy2zqvXDVlzq8CaLkGa9nBCjodVcYdUHVbiirqw7k89rWiGHNz9NZxWdJOmspzOIqACr3Djd9lEEEzRWUwqzT4DfiBkchfVqF/T4XgyK14Io8CicUzM7CAlraxd15gFVD2AkNJqobKcgGk6nBojOlm7rsEyV2pT13yCyVy5Lay0mlsv0+rJ13gE5s9mQ0u3XjYCd68PseUWMysVYYKUMgtxRco8+ZqaFMfH76hnR4eR0bvsRieA5Jsbgk67mYLi2qksWZzcoCWEwgVwKmgo4Wng5AasLBIutZgSBNQK4Gcu8xCoTeZXXjBzgOtsZq49YfWHtXfAt11kaHk4nBwMziLw5+BHapsc4vFYAUY2b2WCNznaNDU3Y1BmzEpaXKCTizGYDfwymAbJRrQERhBRWW7DjaTKxRhMZHr8YFNUmpqPMRykmdQGjuwUahaOEUKR24ioSFzatkAQZoMaHD1zPh0MlBGNJknv6IUYRkeZ1/E0hoZxTkqDqO8UlDYIxmb/BkjfVv42SN7pQ0U5uRiDwU/FPYkYZGVX0SQAb9VzfN6cP9mXrN0xSU4upMpq1EApHMiU1ZgcVC5ycGYqmiS9sxLCAhETpXQgVSBigpQOJAtETJSTC7kCEZOlJ6VM6kDakcPacMM9SJfaMGMosctvHYMOm1yCkVOWY2uFH4nB2+o2NC1cTXeYg33cBXC13FRUDPQVfpRCWgdX0x3YGJR3CIE2VxxCpBTHLFd7KnInEtsNDiEJg8eZ17PKMp1cyZFlS5u1gJWe5LjSxHH1cJWeJMPLJaaNVaC1Q6zyJc22TV33ia+j96mVoBW8XU6BX2nmMAhcx99pY635k2Zkyg5X+oLz5E6a0KZhsn90YqqbVeRYYqlE79vY3MOup5OTIARvnMrDl96l00sSmX7MkLSnF5Fj1G2J8Ode1bSVu/z6jrbqbw3oYDq5kiNLnkL4jWhissqVQjtFC1jfZq+BdooWrtKTUjtFT4hVvia3U3RxCvwqt1N0sdb8qbZTdCGe3E1vp+hiFTmeXlvqohY5Blv0ILgGuVHB7s3IfjSj5ja+1jObgD00PMolsws8MwO5OLRkNzLLZRuk6WbsUIr8aRbwSRS4kKPDQ3Btd+pzMzJnojR8AaXmlqoiIXc8yYU64KrUIS7xWlS0AV9GCjTG5VjEuYqh02NZDjlW1Wo/OUJtpYNtGxRpKctUhQ2CUiOWx6vnZOua8Z7E+zSxg8fJx8M0H2KoXdPFRNb4vZvi17GSStdTlXR6NfT8qnQv6bzUpyG8kZKzILzL5K0c3lrO9RprZfCOzVALI9k7rKAOmYz2Yvn2g9SPg2jrBo+EHlnDaTQv5oeg8SgZXdlLN+mOuMEOanyKizZqyow2vFGjM5ruR1qt1fjmEqR15yOcnTHjJXhFECPc2Zj8Eqyl4xE+3lFYBrDyPELY7IotlaU6DCPUza7YMtQChmmtsuxInPGaUXTalfDBDx96r3mXvTle8PRPVuIcTL7z6ufUz3ZgiZjFuTTySETd9JbEd0BNn/GoykK1OFrnw4fy+nWBCqONJzoYdEAV+fpixaIKuj5NvRfNC9PAX8zYsd6byX5SEqAu9aifZBmdlZ/LJ4auHKOfUyFV1A14qftNCD1xwiSV14FvmQxveolh1S0wNvK4cCiKJRn9rApJpmPg+A2JPc4VC7VbVofYnt228mL/+IbE/gFaIBwCN51THLD3D5RcHi852tYEO6p0Rkh2JBlDrGrJpjBBjsRfvgqR0FoDnSKUBxKJL29XL7QOOkXot6Bxjrz1J9XpifQxMsOQRt9EHLZYZ8ldf5w2URXENkcfyPXxesVye2GnC/5mxM4XCrguEF9s/zJCWcHpHdnwnh/fwHz5jejuME+Xv/7CaxBYQbjvC5IP4PZGcOGDwGrCPTPhgxcJeaCRT/kgxpor50FgCOEkokHEul1gGw70BUETfWJgrDezdylhOtY/82mz1+Ws2aS+dWvmbQUZqEeUMUCrkGA6FpZONEpyAdPOhw/3aRgGUTIp2fh+cX/JsoHXFWG06WbVpX5CEkZk22tIKb1ix6nnB8I3pn6K7KqIXrtgEegkqVm7i1wevwGxLdQZcm++Hbk38+SWTazFq/RxuU1UNbkHap2yxBrGkfvlilHnyV1vWhaSzhN7sLffkuITroLsry9IEpCvl8/Jo5PsSbDdxnTpsaseyb2oMG3Uj/kyxkktVPOw46sgl08tbRFGl04hcXjmkaxYVwsPJhl8ovHeDOnExWfZu8sHV1uE0aWDCa37YJuwaJgUWnH+7vKh1RZhdOkUMk35YrpqWSlkIvjrm2kJYBUVbJ3eaGFNCp/hH+Xuje0NM9/flrBAu02Uw61+TWoLpze8ujLivIpfmRoRlYKo7CQB0CMVZuppAalIAb2ieK6M/guMByWsKCJG4mCg0Bj6qVmavLn/KLckf7zYaW5zjbvHtPWEfD6pmqW6ZbM2C4sqChi/0QcmWbNvzCcar05Sh0lSDT8w2qXHNcZTP5q0tmzbuUuj1SkTg0nqsp04MX2LrkyVGEtSU7bEcYWJsIdLVpXjJjRi3dW1qRJzSapyfPZyGLj5ou11KRtgk1THIjtyjiuTJYKS1OMHPtQFEfM0lCCS3KwwSViJ4lhrq2z7wGR15R2LtYkSUckqOvCFZVvHX6iJ3dHS5FFQsbI4aRNJKsn2CfOTpVamp4dLUhX3vQ4dFYl0j6Hb4SDby9tViBmCm9YjWpE0IdesntFqxA3jzeghrUhhP9zkntJq1PWjTe8xrUbcANv0ntN61PWzzetBrUbhCN/EntRq5PWBSer6mposeHweNCscsRikm9H3Wk3sDcFN7YOtR1wf2ZRezHpUiaim92ZWo2uAbfKEemdnLL8ndck5uLpoIZH0RNyeuk7qkXX05ERA0koAT6Sfp6D/wPoBcuJRL4igbqyfL6DGo6ZjuWldoQz12fVGXlpFsdZLpaDJ58dVJFFqJeuInA7RNC0rih8BlVrOWYuUOsyEvL8uHQ0keTUHuqbqvYkzQcV64qSDJK2mWFG/jjq+DqOsYDWx0QaCW/0064zwrWsmm3S7pZHEiajiA9wFExXnVhhqCvOagOzs9ZN76dO9OzqdgVVhSuHXCZyNGeubja4HTSGp8V0J05MUG+ORp9dWg99iklJBj+tT0WCSUBEnLr9hPB+dXI2ODpWEkhTuArH5AkoYETdO2bujnsf4REtK26WMc6R2GDi+xI0Mp2e1BW0pxDj5NpoYwkAVUxOfakzWw+gViwp/rLGIH8GP+wp4+ZqQD6ab7niys2lCrYSUt3rpD4ES1RCQAF+s8uDE8XYryovtWzmCwBW3Cxphx+0RZhDqmuzxUCsUGBmg0fA/mtRPT+uK4z5a1aQtEKE9xOuORy5dIOWzZJdqHEoqSbvuR3grabpJ646nXQkRpe37daQf6jwWRgGX3b4NTRhkjs+Hsfih8Hm7SdvFGkxL9l8Ja4hIJJpw7dd0Rf0ov9aWnNy9dbl2kmkv7mHUdo9KfiuZmADzbruuR10ppLgYTAgAdgteHXbsyq0T4XhRw63KlDX0GNLIyVK9uI3WeSND3UYBay357btLB3A2svvesqoNK1nXXqtFuMG/NepBYTRUst83RskluwCLVXv5UNI6tZzglFaUbUz/Aa3JM0dRg05ZUhEaa9ZVIcqKK8ysUlWNTVHOemOqDSgpzA12xE3x+hEzJNXQFMTEluninWM8U04FpypotemuSyi9sY0fvhhRO7XyBvv6tAkQp4lbbez1cUrKDC3TJzvT8as7wleoUQg5VeBqY7KfVFLqo+PbAd6VaTOknciUpKw2qlp4stu0HMQxtBlqSi75jskaVfSMvvWLIKiTfxCdK9XdOlnvZY2CGnQT+1ar1qUcX2X/ZY2qamyT+lYr1qQaT9UERL4id43SBIiq4hw/QVyjBqGtIlTsE69QUw1NuU+8UjkV3LQ+8ZpVqRYY7Q7nCrUJEOf0idevUDUOu93NFWoUQs7rE38LKlXjsuh5rlDaiWxCn3i1ekbjZ+p5vfJHb4pXiHcPF/EWGrK0jJNzifUNm5T1MlgGCEJim4m5SNRbhoBCgt0iZuggbxIcCeomgQzzci39KmWoLh3p5oEg6jtStvUkCx65I69pFAUR4eIj1uldZlaayzIYsSGAkdqYc1punV0aRaM4O5hhWTEDUFKiWJ6MaMyvRF46WtokUvi5tWIP+LL8HRQpAa3EuEjJ0ZMxZDes9STBRaX0MynnikV1tEDU88Si9G0SxDPT88vA+nexye8LEDwfUZaQqG/1n7QudLFjqS8Ih+7SaG/9tJcZ1C0C77QJoRJs1HQYBV5/l6PTGvIPa9ZT8kkLat4auWZpXVJpka0LZNesUoAqLdO98oPIM13nD9yl3wAyBajyMoNddtzWqvXVGKWFedRcdaSVfPKC0mWGZmT1pCNDZ+1xwvyqtzVLqiFKy0pMH+9cCQBNJZ+8IH4KGoNef53WJR0Y/Bw+qK2TVqPsqBGyfHdyICz6KWWvtVtf83K0SdkWQFZX6FdQsiKiHfEcfr7ncXVSmmjSJ4gn1p6fDrPCGqzNpiQpYTChaVGy0FqbUV0tQOmlhL4ZPVWHXq5OWhdP9kB0utDs1oCakknh3HozcuKlBtCGlDTR5A+pt0zmZZWdrA6cvKjVtZQk2kQNCakXp3jnXEwVUVHJ3hHAxzmqcnBtcrp0KrL48A2PVcJ8mcssRxvT1kWcJDBl9u/WLbBClBb4NTX9xPljhYmyTiYph7rp2nQUSLICjuHqBORI8kvaV9e4KZlkJbhBsMx82pCGEkpFBLGd1TUAGmBKYrxgdf2bBpismHVPXChNVjSE7U3mPGZV0epGHptksiu41z3zojTb0hRGzYcnEq2wrmySqay0D7bJCgeqWmjyglY5FyY3/9W6nenoeKnHR+v4v2tTJMCTFba+MUS1oUOfrm7Oq0CSXeBvrq7qLJBkBaxz5lFqtnF8Woo4jHB92oZIZeWuseYMFSvNMAosGsdkEwWmbfGbFOO9udQS9kFd/ZySUtc6wDFheCPb7rU6IScqaRlrjZNoyqBTRGP2Atk4rNyk5upGDgR4asL4WzTmx3Q7u/1mfUMjA5iyQoN0fXOnFZSkiNh11lc2VFCyItbZkVPvxOUT3klA8inw9SUvIaCquGzyYbXKKjpZWUnk2NQm68xJbThZUelmdVJyJEkBa1zKOL58Ubx4cXU66mCqYla5ElN+9eXoJbmNjTJBmDgea2b0n+bcGWAJfGLtmcJ1BFElwGiSTQ6ebhfLrJ3OuIpFqWIuqd1pC26R7sgYP/WouzgrcXiDP8G7f1dVQRNJTkgYot6PqCbhBCMFv5pW7Ei7tQntrCTJFyBS0K1RvXUIEEBNEbPg9tgxSYo3mnfL4lWIEmJJCYpS9qJH8wHJdYjpIEkJafQsCJ/lW8nUYw+Yyu5ya7mDWTpyOkhyQlYkYOSImcFjj+qacssraCm2QSTOzqm/smSstDgkyIOQeCYzuWxqalBIUIembS89TVpjmHdmUeZG8goh6gXRE79g0fd7rzlrhdUuotR+Is1Xl8lh+bdNEqOfT6oozCcw1iuvn09Kns9aICE/AiZm3hJSnAtTmGF1uuOtSKskrJRwcbJYIsMrpFrZ+lucKFYjrhdPrr94eo3wmwGtZfZ/CJWJ2SS7wczeaqOsjw6qkFmNUDnWSY1RhUOZugcPeoyI+L7sSDBfmLdgwV02Ykpso+RRnJJdk4Q6k6yMg71dl4YSCGIE3rQS53AaxFimid8UKkKSKqJOL65LhoKChU6waJEPH1rRHGp3Iit1WUMgL2RXQC8gmqKEbF16zP+MyY6yisNMqL3cMcODIkdgJWd/FpqUbSkbm31tM5OExku2HuvgFYsU/QqO22tKkD9Vb017gdsaZFZitvgTml+GwBCTcuXwqvP/FGS583qTfRAvs0q9qfAEIndI7wo2RzYFKOyHXNNuyKYIuQ2QonHuKF2489sa7z7xqKhYbLReqEFpmnHh3ZpNAXIbNDu7GS1zDaFfI5EmX2wfZhd9bOulYAQrCNfQg2qwKNCvpSPbopFTsND+0Bb58JbQ1WxHbFJL7EBcyYa8FrdSubiitrZyS3vJXRpNdImNGatYDd+iHl4A3x23XAFygaE8greCIdc2jqqG8trRdUmpU8mOSq5JSZNGWsFq4FW4awfWroG+hSOnIY6dnU8OZuTwRaCr0CFAktLSPZZ2BWrEUHLjp6brksC3VhErTRhJ/jhZB3rBIUdNl1q+2KKmShtbWvMqaxAgQJo017Oe2m2ADHoWa4VqR2jldzEV5zivQWILR3Zeq3Zw8ypUtIHk5+dWlLlaOHIa8jOb14B/IpGfXzwdz7wCBQKiCTOlK0pR/WCqM6erENOgUVSwqlgRQU2fC16Hpj4wnDnutUoGaSNQl/K72nnGXYPQNo6khnQd7KkCcz6pvwbsE4kc+TFcBXaBIcts+ixrON4qSrA2jty6Dn4E+wrgKw456uzQ9TVgVyDy3NkZ62thr2AU+Pmx6qvhL2GmrGJaUZNqgExuq5aZ7NcxaFQjUSBfyVhvE0Z1PdkKBLRoFBWsKEOIoaT0OKvYT+KMbCLpX9O3AvgukPKqvvWoUDtgyr0ifKELuVpFgdSikVTAb6BYB31Forqmcg30TRpFBSsqS8VQsmstyYo2GrZxlFa6roO/QlFhX1Ni6hKprdpdiYaKRYl+ZRHRRpI9Aa9xu8oKtIiQZNfzrihKWjRyG//pbg3oJYbcyl7TelgDdMUhSb2KJl2JobL6e0VpXECksBp8DQLUWnThyhpzHR61Ve0rUKA+C7rCOdDJM6ARNe1VrdbsAknqyG6XWYWAikSSPD+HcxXoJxRZ9salMevQ0EFS0dK5H2Y9moRoctqyS2LWoKQCkdvVspacoZgv8ts31sBdgajs2FpRxSYgklPSubdmDWKEUGp68ttq1iTmRCSphBlbh4ASRJ6brGKuvI4ix/41pXQdze06ivq546tQ0AGS3lO6BvoCQ5Z5TXVBk0Z6X+yaJLRw5M5259dIrQC+4pCjri6NWgN6A0aKP/XXMq5YI5EiZ71nsjd9ex0d+haNlII/aBTExHUeVqGgRTP3WoNs42MYE9aXC9zDsisshCwSx+1vXTMpdnHlJ54sqEHIIqGhOEZ4T11+evCSCgQkMvz8XcJiMLDMZNmBChGKtAIaRUFEOGKULHxQfx+PtJZdZIaL1tVtDGny7PqWMKKriII2jLSKMAr4lyuQ0CCR5uflcBqxfvUahuSHkKQV8d6Sv+iccodDmp3fkrU8eUUhzb14ldzGkCEPrAeylkJUxCKhIaJWEPErgMiK6uZhKCVVscOByjslVqZuCE5C5Qq1zVX0FCfUIzFN0kV3s3U4JNj5ydpraJl3OCTYO32q5Y5lE6FIKFj+auD8W8n7gFtbnzfpjt8CuSB3g2FKb3o5dBGKel968buBaiATetIL4ndJpvajlxbRxVHsRS8toKKY1Idemr7FIq3BS/Pbm4NwDRXYIJO0pjVpmaqhGk9YWkAdZMa4xtIyhESqoxpLizhhqI1pLM1dQiiOaCyNrdQiao8hLAgvQJk1mrGclEGmCZrWUWOPUIGM0axB3QDbjBGa5ZTN1FMfF1lQRAtDdXRmOfI2hohc/tL12NpTz+y9db0ecdmTS46y5wRGB0Qm1eXvVGepLRJ/Tf4Gi7yE5doEouCfkv5qmngvOevjJE9htqo2B+CfFpE4wtOV2iNU+LXgy85XrS/aHxtNLdPxz+dkw9Mf/Pvj7uqG2PRAHpykbGeHlFp7o3RkiCjMMNQCUfgRMuT2i1ZE/S0tZIPee8NsTupWCbO9cpjpIBv0LuTlG+RY78mzNdDVfFUsVuBvnV0aZYdDl1Bv6NZM3YQhMQLqNr7ZBGZkv64P5bOfN5F9dXtxuXl1cc7/308Xl+xJXi61H/Ss9NyMvPOM9NxjqPmf/K/N9eXF9vL59a3j3dyx95MgcK09y6RtI+w3VgS2v7UC7zwPsnP263mc8FWWccqaE69uGNPVOTm7urh6fnF1fX31stYw+MELbOq+smlsRU7Ig+FPPxjd78qCqxFg2bc/GGEU/J1aSfbp2ffP7t+9//jru9fvPv8Xuf/8+5t3v5H3v735/de3989ePfvvf/A494IDZbHwamu6Mf2ehV/quInjvz1absqcsl/++2+nr++zoY3sW5bJ0iRgVaxxbkX8dAYOw//88oy/wLBTl7IHvzz7oYB69f599uV3R8/141fFtz9++fLl2T5JwleG8fj4WAYcC0Mjjo2P+UPnvKlP+ZPfFSTZa0mU5l86dvY5tc5zv+d5qzO1yvf7s8OOtW+4idD2Gjb/9IWFYRbQjs/CIuZ33rCElLC+U+78/H/z/zWK56qgL1X+6cuzU7ixcOB2//n97DDPC+nvqyKO/VVVxSRLXdmZYo9mRI0sgxgM34hdkn3g0ZREgTvhTcd3ErnX4qjrkOxCJyjIVV7PvI68ZkfOgUa8gCmJvfyqQsmXCofsT+JcxbLejlfPydY14z2J92liB49+5b37E6FpzMqgnl9lWQUuS3Zll2KVoWsm2yDyjNfv79/dG+/8LEUarJwsNheQrPEW9xAPvu6zTlXMcoGVTHjdM5O92luWFzvZJVVhOais+i4rGaa8xqKKFxaKr7LijVje9bXaa16YEhY8h7ux197Qg2NR455VUSwmfuW1+dufP11fvf/l6qayVtV/xLS8vtJlssnxVKNqcTcaP6oWvfRoQQvfpFtozg2r9D14mwk0p+WlwBZty4aGZA1Ux98G0FZZB75stAWjxY+q8dDtq8KnmqSWCW/R2Zrg0UXB01ReUQIb3UbQwresrodOpbvQAufMWnrwJgkfOQK2u9/CB+l+e4Q26VxBx5EDny8dy7T2FNjoA32KLXO0LaVo1WWFM4LJ48aELuhLs6wq2To+eAvKpXzCHBwaIVe58LnKMx13ExyhrQY2hW6aeaG538C3+LwYugzwDtCN59DyoQv9MAowUn0YQedOZpHwG2ZNF9pyZELHfLSFb0iwxjM/zoYfJAlsmOLk/Ri8aRo/+ePjHso2Y2u7gzcK333EyKYpRu2E0YE42OCZ9NEOgOO9MVECY9rLOuQWTEuyWINS8c4ymg/EG7+8fm3ECYvwNKwZHhlPlTHcgR2xmY/IlqPOZhL0D3v3vEP9dLRR0Xwjdp14NKW3XknMJB2twYp3ivHs3I2c/mpyrnS4syxWd1InTwOSjjtW8sVX894mEd1JDAV3jJSj+jnCSDAUswMute3oUPp36WilKXyvWHmm/HpBzN9Twi3j++RW7nXW0qyCerzRKXxJak6h502W3WzZEOq+yy95vZr+evO22BmGWrdxTbZTnJU9+f3qEKVZgsLgcby1IH6Vrz4aLaHEr2a37si/WebsQ6iQ0E8v5Wl22pt5mp36bhEzU1/vpNmphtppdqqdMs1Ofb+TZicZytPspFfz654U33T64wPMFAnC0aqberzwr7UTqBWMV9X5W7ZnlhVW/qfSaxy+eG2U0XU2OZxHzDim4038xiub8UZP43lr74xWZM0Xxrub7edJvvNZ7bX8VEG1VyKJyKy9IDGp03xeqscleGVKAMhMaDRekBlfbrwQmd429Ucb74138t6C0ivqgSa5liF/h2etU1aRyl3FKzwlKz3P05fKC1TRQZG+VF4ZWOAkfiFLJSovFDGu8oqUDBZdWec073dnS67KFk7tK2K5gfUwWqRJGpOZx5c0JVF2SFqSmbqTNCUzXyFpyj+Md+tFpoq2QjvUSXw1JUEIrLGAhzPGwx7OmgtqLYsBSVNOECcRNb0yJsvPsjHY975klTdqJp1uxJlppQjZKkRUQ7T1vmQhPWomVTCSF8HVYEk+YDewMlbOQBgFFo1jYlqJRGXbMlWOoNRY1MQ0DbRYJE2lNnXNp1JW/klWR/FugVG8q+a38W62IPLWy5Zv3gvNdHcsVZuUCD2ynl2+krNYa/nm/qPyQlhAD2R7eYvkZXxFLqAHNB176jqpd9otB+5gYJxwvmG0YMmMDw5iA9gfGjiDMo8XQgeKmYtP5tEUHKiFlzpL4yj0dhwaGzN2Shes98vrG/iY6HOEqOqJxziyoIYPNC18sMSlRx1xJHaFqCzbluTSCF1X1xGaKtuJE9Nn3RZcTV03aIq2JmtBaEh+Aj94mhw3ofx8JWxNXT9omvKTZQI324uKrKvHF5o2liwi54gsqu0ETY0f+H1j8/MMf01NvjeWx4mGDMtXlWT3wmPXtSJHaJETpyHf5oAtqe0FT8/BG1m6Pt8+cljVPaCFUzabzEc2kNUI/KBpguuQf/jQ6Jj4PnTns+sAsF8oMI4HDpt8OuaLkgPcS7EC8idm9ZBV6z+XHjLH/C74WxLf9QwLYrgjX18Ae/sL74W+Zwm36Yy61KN+ki2gMG0bXqWEXy914f2+DnyLtQh8QQBb9Z+YZ/K4oO/jgr77Brp1+P4D3vchcFOh5wM/l5hckiPxURLamOPjJVfMO3nafWc9y5jVsbodL+JTf9w+RmYY0mgRuZVvbbKbi+3I9fF6OecLOh5YY4jtPL0j+XjygUaXCzHoT3es1dqNhIFlWBgArNHPWyoJye9P5QQaM30vAGsuBpFNo97FyKgo4EngZ77A+nW5vrrpuLX4GiH4lbxDS//w4T7v34ylfT8hCTNt28tTaHRfpLks27Mm1WKubxZxXeZ58CQ/6jrRHtPF1G/uHKP1Ku96OdEHe6vRfTHgpMXb1xf84OWvl8/Jo5PsSbDdxhS6OfUx31/TdGwednzfDXywCr155pHguPtE470Z0vaoUfYlvLf7v75pesJJmvfBNmFB1nKVf6nZWzrd2+meudgodgA3vmNt9+nTX2PGa38j+qBHbB9x4vLV3fkMK5qXga2Tasb58s98O1wYTjS3o57HPvFJ8yO1w8Dxk9qfkymHzRKfzgjeEdvxjHRemc6m2n3TNWyasEY3KRfgTrZcrBBuHMc8sH563OCDE8fbbWIQ/gdhf5FdOmM5a2mutDa5HOoYmkvETweIK3N9m0an25vKF6VP2X/l9W0sivmKXz63kBcfPTtLASxPRY7zUziyM+2zPdFTCeuGeJcMxtLpllcgc/VeI4zNzi5sCKPVlmwIY8392TNsRj0FlrTFodtQLKM45J1f32ibSd+2UVWrFjFDR3GeecRivgsYRvTglmJFY0FEDSbWaF0LCxM9PcZBwWs3I/Okmu+4jYEF9DgBFVK/gRSWvnW3KZzh/IfaRVdIpiGg6TGkkZPVfm5+m8o2Clj7zLcNvuN34yg0e2b4yRpFECEl4UePnOIoDT2ahg6MgfWVrf7dmP4DSKEt702rtqFjUFBd6lBZfNAir/SlUZe+uGs41KCw6osCNnRkXbIuu8KCzhkeWQeFuKl8DxnAlSZVsWW68hPbIM50KtOW71oeNWj0A97PjaidDm1fR3WpX6W2+BT61aA3tEyf7EzWSy520+kQ23W6hFJtcdvjWYPmR8e3A/kFwPM9adOkLfLq7iDU5Wsd4tPwP2A7RmT7dHsmkoswVNomr2TcM/vOkZ9r2EEK8SBMHM/5g9oGn4Ai1p6Zx/F0uu05e1KLE8Ahl46rr6npJ84fZq3ahcjeEn5Q5ER0SyPqW9ToP84Y0gVBStA1J9GOsHxD0DLlydWGX07BVwx5KXr05L4SZjs0LUqA+ulDDh3fjJ6qXYLY7iyKn8SzeiZyYqhx70FXtb02Gpz1HYEL5yP14t6rAsC8ZDOVVSrX4o3Pi2aLadkrvcfCIrlM2RN9l2YAuizqEvTwpG7fOZxwLo59JySDudg6vVdrwvlwA6y2UMsJsR30siF35AXodZLcdQVg7vj12yRmuRWp33DyxL/a0YgEYayjIVZ3p6PyqPtrLUbR6Flz6qm7dq/8IPJMt2jQa3Ud7LLDS3T69GjvjZ04/vDb33V3w7edoLhMTF9rIdRaPIXsWXP2cKn58JSd8YDuic9/5EvaNbjSks+ZFMdLPd7H5v+iu8PP2j5Fz8r9N1jCudBTKImH2nDGwEa8En5lGLpeHcVEeeT2JgpM28qOi+AbidBHKXR1DLMJQw1e9OmJmRfCJyx82nvlN7Q77orGfM+Is9tv8PuPUZDiDzPGbv9Nn3BO9FTB+dBsEpB8sFZD4JUOs04VurckcrL97lqiLN1gu9DRpq7a0docYTbYU59fyJxXTjguGmmM74DBatAWDQkLbodE1wW46eIEAvhpx7phSOCA31fJHoANBn7uBlRTN//WdF3e7QXevdBjGw4bfuFE/u1p/xmczdr+E8A+Q49tOOwyzZnVSZEaXIAGjsg8Kny55hlDA9DYeMcqLjPBMVxb6YBhPo6dnU8OZuTwrjeGi+6iBgQnVlYAszYSjvEYaDNUyy6FquJbdp3ISl0zInlxqcMFfH5teUDMu21PtaM3yI76NDL5MWTZtt1lvSMEMj+0hfh+NgKLIa60X3bOUX0c7C2Kg9qKIhTz9VVEOA5g+opds5i5kptPaAyzWqdlO1/nhEDdWtuE5QF2an3IAWIM19Ys4VrHCKPSOGr48MN4eGckDOKkmD7Q5khzNajMAB+ptaPyMRTyKSYMs8k+iDEtIwT0MUThPYamz1KH46HkkmzJIIbdbJkgluFsaSCacb4cEMM4wiKuQQ+IpfjOTPY4fbDcMlKHurYsEtc6fNyejCNGq4PS1SiG6KOUpUuUNNN0AB/24JMX/ebh4d2r/CDZK5Qcla9/Q7F8WuqGax0hyCvjiHm1vkAPx7xjmSjpvTSNEPC5ZdxQz9cqYtrGCRhuGjFk2qsrMVzwT3xGEiGEcttYE2RQa0E7VhEjlC8uRTAbmtYDjl2UCg5ycarQMmIMhli1J9zSUoFdxADBHJpDHJjTMCwXUdNGnTAtFtKiWM5XdeGYbqyWxXPRWSGL4SpbFYtgGC388/WaGIYBl9UKLSNm1e5aXUwn+fpcFA8u1EnUAsMEZXww/ppSilN9NJcoYzhIN1hmEXJRusHMQXxOHQGaX22DR50t+sawWy30RjCe+ljtfdZYIXvTt3GaK3/QKIiJ6zyAWveoF0RPZE/dkF+Bg2cZLnEXhkPX5IOrxi6i1H4izW8RhAz7Q5OXt/P0yRP7Q5NX+0j4dSQW5DqUtq9sQEWXMp/PsfObAWL2eFIuOyt+JfHeAR2QUncOKDwLV9N1A8tMYDsKbdPQ0BjXXAzYh8bfRWYIWgPXzULDZnt5woiiBHTdODS4l+b7paHvzaj7wLRd3vgEH+qVZWhkHhb8YkOUAaA+F9AieAdK5QImRbvQuHw7IjxsZhUaNZ8UAWeFnmvxAuuBYJXUbdtw2BG1gohvCiSINXu/EzwhOJXEyUvMD9GgZQsTOdj6nMEJ0yBHg4gn1gT2SEyTFHQ1ZMMuHC5fiY/RG2/YhcA9nSLzFGbDsvnT/BOI/djaU88s/jktSkawDViZiAznwJ7plPdnFJV4SKm1N8zUdrJ21MGxq1Kp8QQfvuPrbVl7JQz8noe21EzSiJ4MWQJfnYcEhjhndU5xLDTTekRkJPtQuItbH8u4DMSQsu/KuvUCm7o8myas0OwRJPGerLv8t/M8lfS9k38oXNRX+ks9K0DhtcLOL+djWWoRCxU8JjAWu6SVKkW2Ypd0U2bxIJ+6Za0+z84+5WFRVMGNULJGfmdwf+N+Azt1WWC++vLsB8b0d2olr96/z7787ui5fvyq+PbHL1++PNsnSfjKMB4fH89jh19ees44jTg2PuYPnfMalPInvytuC81eS6I0/9Kxs8+pdZ77PS+qjsBjIqmf3Gcf+6F3LBC4ndD2Gob/9OVL9OWL/913P2S3d2c3Rn4Xmgk/4CJ78Px/8/81iud+MFpS/5QFVoHMAoPb/ef3/+Ch7QUHysL61dZ0Y3p66O0xuyU8Zr/8999OX+dXxmfffnlmpknAMpXx6fNb8rqUWCaL8kfX8R9oxHt6567d+IWlgk3A1wHbdGumblJc5tp+pgo8wqp383QWQu0Rmx74KSX8fWKxZsBD3DVDD9xEPsQejf3c8eAErONETa94QmC/80S/jYyTpjGrEwi/SNn0rUGL4udH7A88WDScXGoPuRc+taZclVqfqcevQaf/Y3KUFfhbZ2fYnmlHfFsf/1TEX/ET9VyHTyayqjg/HET0UJWzyguEeh6q5xvbsi2Z56iXyjy23x4DmefcgeeqBF2k/QNLNn3PFr2Avl8dizhXce/Ph7D3p+PVc7J1zXhP4n2a2MGjX+L0vFHLN+y/i77HGkn29MyKctfrHOp/Rt5aTbgWld192ThcSfD+7dn3z+7fvf/467vX7z7/F7n//Pubd7+Rj2/e3z979eyHP7Pg+fLlu+Ky6h+/PLs8v/jyjH1DfSvgIwrsq98//3x29+XZn5lb7pc5Lvyyx3zToz9OTmPcEbPFup/J073F/mWmStvPKnfsIfb/f9gGLmtNnnzmWavzXPk0a5ecnpXN7+yNqlP5YxEx/MusrcO/yZJn9lUaOdxwwhvFr8qYMBTLF0MSfqA8B0Qe8DIFtFUDIIG2vMiCdqoVyKhv25aF6q9hAOn6nUhhdpowUGgdw7KhNtKaAAy6EU+ywH1NOEDSPhdT8nGzYYiUjZtOpHNxp/kHmY07xqeE3l5LKbifVgr2tFUBIXs8SEdwowEPGbkNw1I4Az00KLABF23EH4y8QdT+Oms62vSjmewrb1zHK+P1KyNv7xp86UncGLQ+o9vo+uqMHk1eOfDjHMo/+PfH3dUNT27kwUkaI5Aldx2vapZW33yH18yUHCiY1dAshk6kW5risS/2SNWbOCUQYaoRJ5HR0TWpRNwd0gMD65qWzeXCkUDIABM6mFKanwYhIfHEHmT5OiOckGgd49OogAOsY1y5rVgbzIUEE9mfzAYcaCL7ymzdIWgUxK6baaSiwXg8YJE3IG7UgBZ5m9BnRQvlPh+zGIFDtM+HFGNrLg2Mq2V3nW3Iqn21SBtSaQp3Vjuybq23MSl8p1xO0POWMEkNrq/4ItE1ie0HwwxDI98pVsam0RtAhuCD3GoPcRYZUCVYvrGQIgGJshrxOpb1RFFvISYfQ8vp6YIoa2mt3llISIuip1oRF+h99aJgRQ++OrFfha6iYHmRFmqxaynwoRVeutKT2LsUvnAhIT630K1ceHcXLGoI5q5TKdiedXr4wD2OpaC7S1Txebs+p6VeLbAir1K4wqW9+LxCt1Mym566vuNzalbTgiv2O6vq0NikEjqX7Uu2ezSttfSyHSE+yr8NIm+kC9R66002sDr4Ts+b947rWIH/K+vqSrzeY+Ttz5+ur97/cnUjbaKPJlvvpGilx9Yvr19PMiRMnXFiRqzbTLIuvse6+MXQTzcRlhFo5HFi1ALYqMLJyIUajNEQmh5qvPciDzWK1dTm23uAxYqsqumcpLCTMN7loz4TU1lzqrTUsrm+vNhePr++dbybu6LMmhpcBZ/Rb3xS6ughJ6blhdDElVFY0mo0ExB0aPRyKufOgufMbcJyeunRQoj7yiwo7SbdwgdraRSYNDI9BNTCKjRrghGshVVQVstLwUkLm6CcfE0pOGhpFJaUMfjbAB72ZBeW1zOZ7diKnPA0fAyI3TEPSx+6LjxzYRSUlFomOGhhE5rT2ZoIua1uGJYYoQyjCGVYPlUOj1qZBaXdRvBJoLAJyxlHFnxpW1kFZd2FFkKoVlaBWR34YC2NgpMSfnwECm5lGZR5v8VItZVVYNYjBuoRntS5gs9dhU1YToz61cGoWx3LtPYUnrUyC0r7QJ9iy/TBcWt2QXld1joGhy2NgpMeNyZ8/6BuGIWYr3V3fIRhLpEDWAWUn3WHEOQnu7C8KHWai1KnuRh1motRp3mm426CIzhszS4sb2BT+JG6yiosa2juNxgDi3XDsMQxfMOhsAnLeYAfBC9sgnKGlg/fbSiNwpJGAU51UDcMTAxf6RY2oTlJ7Ox800XhrdsG5Y5M+LKgsAnLucUY9aisgrLGVsSvHOI37UEDN03DUlOsVkLDMiwzwqhtjDBqGz/5yR6etLQKzBpb2x0CbGkWmhZjovRkFpQWp/LFqXlTnK5YitMXw5kWwZkVOdgIlW5pFJT00Q7gS4LSKASpV+xdh4Ks2wPg6yytg8EUmUVdsSf9uMSDMo90z1rjq4enrKN1fEth/Wxng1ISeI5EXi1WNzNnRuMt2UgRHF/gpxIjCk2/5TvTvcauE0uUok231Usz/CZmkkp0nFqOq7fGPcun4HYKSoLAtfamI5P8ekzEkXwi7Aui/FC38RW/RRBV1AZzbjTel44mxTJiTtYbVk0iunMCiSmZjvgipXTMKJaWfbExEwiCZGdZJIxosWV+OlHXDng6mZ4HVTJQX6kmm3OK/FK9BFK2TKn0Xr+/f3c/pc5TXUjf3loXecX1rCS7TEOiXM5Qq+aJ0MDEyiG35cdJcRHjRJiWgRkwninTk+8ylO9NdG15sRNn50iVV5upAHTfnoVRnIExjaL28iwIVmBNAyhenOqcH45nedfXys7rL0507oUpYYnpILGVpem88eJiJVpMo6n74WpHlE1vh0G0SARnpY3GRaHbqL1bVrtic3MbBe2TlMEQp612Hz3fFYxv0pLb8QNUwfimrVgbP+caDHDa8oNhQP8g04eWBCyN6erFQPTdOgebx1fjzVFReBRt0x57wJkSkvJkDjprQlLW7EFnUEhMFwczy1lQjKWxFXUiyzMHlx3HKSnkQ7p8owzmuoW58d86UX4+VM0QGFsKQ5Yqcq1h/KuKa+nqs5Jf1J11C9CpZTbU5H1HY6llPlkKw+UAgQnsrKhozSekli1Yi0mx2nnnEqGcv1SN+TVNzE2ShbkwCiwax8TMDguaydY19i0VZ/UAls4JRTiUkz5NEzhxNI+ta2xFWTW1qWs+LZtVcwb5nJA/X+aE09tzIz+3lA2M3XrZuOD9HKSWoW8pYxZhKp3uC/lFuj+9vURCnzISST07Okwah8xuiVow++QA43knU1hcapUl09OL30zCLJBHU2VDK0+TpxdXVPJKL2LBCk5qBTIzxHlo1pZaVO99O7nbdTaaVwuxet/aOxIbVjK4PFxPr0ycD+IWZEbPmz7VxsiFLrO5RFOiEdf2XHtxOoAZs3pI1fnppemONzKLlBpeN7ILlHoDO8uHqgFdvTTdcWR6/IBTRc+1t6a7lp5fbrieP7GchVwkVUQ2AjtSKx07TqVmwBo+Fee5BC4lR3CaXpVHa/ocTys/Ou9Ox5A7maThXfXcka5Tua36DaeqG/G7TvNOqaLb00vTHU9JYQoJbJHVZEX1KdH65qJ4s/v0xuz6Ts3r6aWZpaGi2OKVeaWhmk86N4BlZz+aXpVnOnqKITW35SsziyE1p+Urs4shNbenl+YWQ2p+FWIWqQtjRw5rz0zpw7jUXnaEInb5LWTjIZ5LNHLeciSteHP2sG51G9pEjqaBb2bEpAjB0Uq3qbkYxiveBAz7aRxNAysawfEO4cKbQA6hdHpmz1Z7P/LXZm96OIQkDB6r61RVGU4vQ5BkC6ongpTvQnCkieNO5SjfBQkPl5i2fHHXDpHqbSCWbeq6T3zlvU+tRKEY7nIJLAExhkHgOv5uBlvNAhAT03m4mhNcJwNARDYNk/2jE9P5bCJTsxdY9NpW5xw2hkVKglCigSoPW9oDiv8kMv04DCDiX2TqW2pbSZ1IVVNf7vabcujUUP07jeH0MgRJ8hTKbA0Tk1Qvg7UEJoKobssa4shq84kc5buALYGpIVK9jdQSmM4lsATcEpjOVrMA2xKYjnQygNUSmM4mMoVVX02nFJla3ST4yKW7rWpwb0b2oxkNb8LrvLUJ2GtTRqPm7dzO3A4v6Sz1GNmzZXuj+eL0gylyOyzykyhwh0drh0DaBjBnN+adeNLg7c05La1Fpum8OzfcB9eJDjHIrw5d3fCt56hEH8YYk2MR5yoeT+dlqelYVSv/9Oo31aof2J4oUlvWEUgbEWeMTx6vnpOta8Z7Eu/TxA4eNR9a0zbBAqmLVEycQdzzKHYgn3S771ZJuZe751f0WzOXyCkriU/pzCmIzzKzKsfn/5gz1dTah7wjqtY2TPYOq3JDFpQy2wq6r1M/DqKtGzwSemQN7hklVn5onqtyZ7IwGdp0k+6IG+z6xxB5MBk15UZbhlGjMZoGZ/VzqhFnGLK6uVlcnVF6GD6R2Vmc2SwHDFtpahYP71hCAVW2ZhE1u+ZwWaBjdRZls2sORSmwqqslmx1ONLeGlj0zTMLUhw+zrmmHu0F+0O5PVuIcTL7P7ufUz/bbqYahZHrjZ3hF1E1vSXzX28AcT2xZLBeHM334UF7BLlBhtB1OOY5WWhX5+kKrqMLfXE2TLp6XSFV/MWPHem8mew2JirrUo36SFY2sRsFIXl05Rr9ntHRWd+el7kJCT57XmvheB75lMsG6SjWr7o+FDXkEjxexJKPfO1oi7Lg7Lir2qFds/55rHWIn7NmeI/aPRcX+sfIi5hC4qb4Chnk7UHJ5vORBszUHjuOdETcdScaQd8yEWDgkR+JjVHMSWmuu8YXyICXx5e0CQuuu8YUuo1GfvCWSqq5E+hiZYUijheKw5V2j3CXitOkcTWxzTIlcH6+1yu11r0vwgmJ1Cx1cI4svdtqS2umC0zuy4X1Zvqn9cjHdHQpd8pcovAYR0IT7viCxDW67BRc+iIAp3DMTPhyTkAca+ZQPy+itnAcR9AsnEQ0i1k0b2CyjLwiaMFoCQ2dm7/pda1f9Zz4B+rqc/9TQW2/NuKJkyR5RxoB/tCTY8QefDJXkrjo1fvhwn4ZhECUaEqLvF7cHQUdHV4TR9qexvvcTkjB+28ZJe71ixzl0B8Li6vFlV5WOfsEi1xqkZi1JcnlcRGzLuTa5N0vKvdEpt2w0IjQSxuU2nWPKPVDrlIFwxrr75Yqd65SrMy0LfesUe7C3yyo+AaDJ/vqCJAH5evmcPDrJngTbbUzhx9d6JPc6X2ur92O+SFZDm9c87PiKXIz01xZhdP2hJTfPPBKtuloO15qwPtF4b4ZUy9LFzBNGBLRFGF1/aw3/+2CbsKSiIfzj3BNG+LdFGF1/aBm7dJNqlpWuO1n99Y2OJIXUUKnTGy1Hi4f4fANzb8tWiCHf35YB2buHTTmW6pdKtxzMjh2RhDhvwqErEflBEZSd+TJyfM1MLS0XODJGLmefK0H96nZFfNQIAAj7GUXNnFfb5dOb+4+QG3Hgirv2kQex/OGYSuklX4KQ5SjoQoiFbZVwGL/R5wql/bQxn2isQVLHC4oafii/S4964qnfGZK27EgTl0YalIldoeiynTgxfYuiqxI7QtGULQjWkgh7POGoctyERo6/w1cl9oSiyvGZqzBw800T2MoGvKGoY0kjco7oskRuUPT4gd9/Nc48DaVpFG5W9CSs/HEs/Mq2zxWOrrzDhC9K5AdH0YEvw9w6PljHoKOl6QFNBXqctH2gKMlOQ+AnJKLr6fGEooqTYumobCP1GLrdE7K9vNXYGyrd6egRoUoTetLYM0IUN+xQWw8JVWG/O009JUR1/c509ZgQxQ1409VzwlTX701nDwpR4YhHLT0pRHl9rlB0fU1NFpg+D0gtIxaD/rT1vRBjb8idnj4Yprg+X/i9GExVIj+6ejOIuga8LT6JLgyefAM3vzcadmaxHjBCHwjTi3vqOqlHsHp6IhcIKgbvNZlHP+3aE2lq4lEviJ4Q4WsesDRATlALJWCuD2jkMqRirtcPih6fH/SSRKmV4JVMLR/YOlDjReAHK6fgyaibR83n2BoaTjCUHChutd10gKoAMy46ThCUFPs5sOruunlEesRYaLv4dtZoab6zYeuaySbdbmk0+2Ro9es8hCkkv7E2DCeni5qk7K6Nk0HU2xZ6QsWZsRoOMLYGAnxjxnNm3evBXYhtfFean5EFW+OtJ+OI2C0vgPT0qIO+4QWMPk5cQr00H5tF5O/4AVOQDl2hOR+8ND+F91uoL3bU81hoqC7E7ZZkzpHaYeD4ILf6nKzNiNpSmnGyZjQNT4rUPlLi01lZaBi3sg7LHM+qKkaQ4ykVBVQtzactzOF7iSSDy6YJtRJS3v0JEV4lniGwvY4rpHrC9cGJ4+1WNY93b3AKAndai6cVN5yHMKBoxp62QpORQRkNiwCZ7WRverrpI9SVuYSCAEK8bmrW1T6ktER26azBvpKsa3AWXyV0PlndlK6LhqJU5p42YBM9hsIo4GErc1OqZOQ4Ph/05Nd95K3TGRdDMZXZfyWkIbIN1vRtG5+euEa5/we3gCFuwE22rpNQfr9rFBR3SM+4XSy/T1Rs81u6JberYHoKLS7lFJpc0X26Od9Zxjf9WsqT+rnFLqeBKXfpMaSRk5UI01rVPXazoNpGAWsR+zL3xSsHwAZnj2nWbJHP5LV0UUvcBv/WqAet0QgP9vvGKD3hLHZkTZx8QFWXlpM7xNWbG9N/UGigzlHU8IcsqQg7vboqpzjiCqeaVNW8ocrRGVNtlyjC3GBH3FSl1zdDUs0ZmpjYMl2VM/Nnyqnc4QrSmO66PpE2kfIjdyNqp1behdKhTeBUhziNsdfnGUVmaJk+2ZmOT4p9OHo0Ct3qEagxJvt9o0h9dHw7ULnwc4a0ky9EKRqjquUQZ0ukozQCOkNN6QmrY6JHheJYqqoIojhBDdG5wt0Zl/V19Ahq+NPSt9KsCzm+yt6OHlU1bxr6Vlo14cZTNdmUr43XI03gFFec4ydK60MhtFU+UfvEWjTVnCH3ibXJqdzp6BPrVYVbYLS7p1q0CZzq6xMvoRA3DrudUy0ahW519omXUYkbl0U/VYu0ky/0PrFGPWDxs+R54ZCH+E7beyGM0qKBBzPCYRknc2ArWTYp6xGxzBqExDYTEyjhWYbALhizRczQUd7yOxK0TZtwrJD9iioF6FwU1JdLgmjOwdQdeyz4oY/1p1EURKxRwU/ioBHUPDsXbjBaQ2AeeIvfaTtEdvEhjeLsABhoIQNugAWx0iCiceAeEKKjbRsYPfdbnCEBzd4xDgzfSqpApVFPRoDf6tqTQIFl9HtBzAXAGlqmMfMAMHnb9rezz7gMqvaGjezCy3m7SyH31gxajihL9tS35t81MYC+YzkrCKFuWRKmUNOGGnIvou+0YagKIqOmxSgcwnQIhZJ4WaRXU+kRUVTzRme98rq+EYW2rozXq1TgHFGqe+UHkWe6zh+qmyIApAqcY0oNdtnRhZo11rwiivOoqTnySo+YolKoQTVZTSngoKdQUphfpqpXVs0porTE9FVO5AHQVXrEFMVPmQyDReq8rm+gIWyY4y170neUHf9EMLreA+HW7xfnalYdTVbQZmpXANFQYVRucEREO+I5/KzlowYpTWdI9zMk1p6f3KWl5mt7Q5SUBCQOTYsSsNVVo7paLpEWj/pm9FQdQKxBWtchznUTFGw+c0BN6QXtVhAzcmK4QcchJU1nWFeAWCZj0tRR67jDEqWhVQXcfmpJSL04VTnnZqqIyg/ODSx8hKUqNfHldP3hyeIDRzwNEEZmQi1AHNPWdapBYMpo7nQLrJwiCfyamn7i/KElUdZ9ocihboqvo3CCI+AYahCQO8HaxKChcVN6wZHgBgHUPOSQhtINnghiOxoaAA1XiGK8QEP/puEKR4zuCRC0SY+WsL3JUGNWcWkYqWz6wlmzr3v2Bm3Gpi2Mmg9PJNJSVzZ94e2tCLaJloGqljMsQZrm0uDnzzp33x0dL/X42B7/F1+RwCGOMB1jiJhDhz7VME9WOMHZ0mFqqDoLJzgCdM1Wgs9QykxLEccLNWSRYd84cvXUnCFqpRlGgUXjmGyiwLQtfqttvDfhtg8M6ur3jCJV3wAH+vBGth1Qg5CTHyQZ+uIkwh90imjMzJONw0pZamoYORA4xBTGfdCYH/vv7PYbHUMjA45xhAapjrnTyg2KiNh1dJQNlRscEbo6ctiduHx6PAlIPmGuI3kJXeKKy6YqNCqr/OHISiLHpjbRlZPa7nBEpRsNUnInKAL0LH2EXe7Yt9BRg466K1wxmlZtwq/UBLuCvLWlJwgTx2MNl/lnhwsDnl+7RKw9taCOPOsEeiXAaPpaTYCLOnZm7cxQpKWwYk/AewlBN8Z3JMCdrCVaCpY4vDOSqNyZrkrfdAItIgwV77xVwz+ZBwZHbCsDtY7bwA5aEi9MAwO3Rhix4AVucIWAbloekwOxi1koqlsyIwkSOgIWE6XMhUfzAVG0hlXbCbCIRq+G8BlGtInMHlc4e/wtyON1OlI6TqBFoMIDHBI0+6is1kmfGSNKq7BtGuxkpLph2JhqWQYjDkLimcwxdMpq2AWjDU3bhp9wrVld+gSqDBT0QizqBdETvxLW92ddcyiMj11Eqf1Emk6gcmv+bdO20e8RuLjNJ2Z0Suv3CCzNZ+2fkB8FFDOuhBTnAxUOWavC8VB1SroHFi1OODAFiUJKhW8XiJMNorBeh9D9zJMDwu8PtaB2pghVib2Bd52ZZ41R1edPf4GCKFLO+6INW/BjtHoMWx4LBeL7OKPXfDEjaMVQNsBKbKP0gDoxjSuh7gVHxsHeYmsoXaxz1sC0EudwGsaB6ro0A0PkBLjYPLnAloBCD3bGR4sa5liP9vSAE1mpy5otefWAQi7wgauCbF16zP+MyY6y6s5MqA156PWgwBH34LNUYFPVLVVQc9JdXpLQGLbVWoeurAOToxxk2MSHP68Qe1d0mx9yTWqHPaH5lSFhECflamvNeX0KBPQJz8k+iKHW6TfVnUxDH+uMsjW0CY+wGxR7H2hTAOzWT/EYfJSCd65bY/EnDzgKAGcRhPxIU6Dge1Ob8LDbUQX7Ni0TJ9RrthGoAXebdrGhNpgKR8OCEKf307COQo7X+WzZh6YH2/naoobZ7Iq6ybJJDLivEnGLYYsZqexDbS8jtpZh95s0sQG3mKCt6W8RwyzjF405ouAWhhFH1lCGStsO8PjLC3WxZdT9wI8U4qpo2kegRwTHYa4dxotD3nIAzR/Hzs4nBzNy+BJUJA0CJ8A6ukftoigRu4EezzRdlwS+hRQbTfPg7HGChV1YhiamcMseW8QUafNLa/YDB17gBHmOBbPmGvC13MyRFqUj/jF2OBXnT+PIazmAn0uqHTaNpKDtAmM+DDUztRxA8+fnS+Ogn2xjzOWdjpFGoRf4QJ2RRE1F/a7wZiiRhDTso9Ejx4bIjY75Viw9fa6WnkPWJ1dz3U9d6lE/4VkaR2TbATh/isWdovDmU+s4yCfb0NTHEAm5MAzPa/os0zgeUknVdgC9ToIf/44CXlmGJs4Oe8dBrkxjMGfnuuNxV+ZR2Pkx7ojspXncVUCoTaQBX9BbqMxkjzWwU7ONQo029to0j7cOCwW+ZR+NHjUDiN0Aa3GQ9lw4QBsthtbAoYB3XSCugsNUgHUYlHtF+PIScoVU8LTsg9PzmyywyCvbeGsPccib9tHoUctLsRv4NYkEdcNd2wHSSlAs9so4DjduAur6wFrRisZfWUciR4+AthP4U+kat7Cg6BA5gV/rihoVLfvQG+vpDge7NAy96tW0HnCAK8vgxEjNs9Iwzmpo1DQt8IGyOhoHHqt1FqI3zDoesFZ4o9BjzjZqmWvUMNMYUdNGXtXYdQGuIbtZBgm+sg1OnZ+WiYR9Mg7P3bgoBou/4wRHR+c+GEw9QmfQurILYXBUVKahd3Pg5QS0fJDfsIHDXJnG2ZmEWmkJfECr6NxJgyNE6AZLS34LDa6Qkw9wFcwtFnxpGoOZIM1D141Dc39NKcVqMteNY57hjUTfcYGwRxKHvDAMz4tb1jftI+zxxMVvOYA+H51f/4QCXlmGJq4uesLBbpgHZk99vLG+mm1gatYvJnvTt7E63y37wPR/0CiIies8ING37K/nKoBsa2AYE9abC9wD9IoGoXWwI+u3rpkUe57y8zxA2YXWwdiLg3b31OXn68KSC2zDcXMPhMVrYJkJ9CCDyDgwOY2iIGLpkV/BA37ofJ8HYA27yAyB6+O2YWDi7DKUMKJIQd42D0wfRgH/GgW9YRuYm5e6acR6zDjD4kNOgJXw/pAPPF/bsQzMzO+RwiCu7ALzIlShbcNwxIH1QPAKQ5F1MPaIWkHEL8UhqHXpsBsENbHjhS4tb0RAVzXkDkydFk16lDzFCfVITJMUeDdWxzIYMz+DGaeF3LEMxtzp8UAe7SUyDkaOcVVt/i3g/bSdrbibdMfvNgTlbVjF661CIouMY/VVEe6bqZlG66mCYndt4/ZT4eG7DlB6qfDglV3EPio8dcs6MLuX5vcJByFOxTPoBVgLrgZc9qo3Dw9eN40+TgCPL/SBM0oAD38yjDFGAM9bmkUZIYDHRWixtHvwoNAC4xpGByAlDHpB04JVw4740TjWgaNqwBv6SAekIi066qMRoPAtwzijHJDEbcNTiCEv4I6tPfXMWTdwN6M6swc7bp3bNDqm4dJnbrk6mwsoxpvcDevQ6JCtAFFwL5FSW/vAoryfkzyF2WrTXAL/BCR7xIOafEXh0o9LPDj4SM+PfV+398g6/nmepV3Hf6A2H0Az3Zj2hL8Zhka+/s2gR5NXM0UMFE2Coh0fUmrtjdJ4O5zbQ7lhiIZQ2B4h6H0fjWvQo0R47RHDS5AzpMMLi2vQ4wgt307G+mmejcRWs98hcXzLTW360Uz2HUdhFPydWokx8bU6g6IJLjF0zWQbRJ7xhh4cixr3jutYgf+ruYmNtz9/ur56/8vVjfEutzLHfhGO7PkJVvjBSI9mRI1NwP6aaKRCef3+/t09hKaYRlmg2VnYsY6Qk8xlo54dHQzbM/k/ILZmBXzNlutsYIzsg3h2MJUh7zBbLON5c+3ZkXOgkeFSe3q4V4m0MMZyJhCWdwihmI5Xz8nWNeM9ifdpYgePWcowYpcIfiI0jVnzCiDbJ0HgWnvWEICK+Lx/ONFat/lYtRgJPSaRmV8gj2EZhfY0HRkbzuRibdzPjnoe+xSiGH9w4ni7nZLYxm1H6ROI3aFeBj2ynr/Dz0823bxW3kaBz56y2e8bFFlQqb8mCyJvsodd86mHzjOZlzd0yytLJ/BP7bM3b//y+y/k7c/vVV76/DP59d3nt+T+80+f370m79++/+3Tf6kYqNo4f7m+vPj58vn17bv3N3cqFu5/JX/57adPb8iHn96/zRqSB9NN+S//62saJP/nL5/eXN1eXP4l/zTJ8qe3fxUY/unicpLN17+9//jbh7cfPpPXP33+6dfffiEfP729Z5+nBPz717+TPOaYIRUDWSOMfPggeIdll8iMnn5ubQO0rX//d9mnd6JRJPGj0g96sg/6AaudBA/zSvC3sAgG/uEd74Ccvj1PrfOqoswiPMi+H3rs3ArTRtqw+AKD45l3fa2LYNsi2IaH52exqJLAce8GZkLMjdOA4A2fiQR8/RSf+h0GKJ86DyNa1bnikRn+4q9OnFSOS0jW6mIJlZwsCLuxxsnxFDlmHFNvM6qnemz1grKu+4ia/Jnin3srcsKkkTz+pew+m2kS7Khv5E/yEYNzV1PC2aZ+fqNEnN8sETcIkygVNeIQOPh1FeAMCpHkm35ALMKK0qVCIPCchGwjVnqTMMimMxcCYQFBjxYNl0wOjCFKEmc575vUcZOi/NebEsuJnPdmmNXoywSBReLE9O2sAqtX7C9favJ/PPYQ/Pu/X17qYXg0I9/xd/G56boLRUOFUPTbl4UIqc3PdLOaLa187FpvhEQ0X8waL4XCn/CcP7Lr/RoM/KgsaQTPfKBZdW9G3jlrtJwnZrSjSZuh57FOs/vMY9/8OKHxPZMj2afepkVSfKcHoN36P/PYNz8WfYAz+/JWG4iwH8Bw+Pdn7PsflfoEHTen8nGU6PRoX2F+xrqzP6qU6AM+wlABiE+E9pXvOZRSIQ+MJWp7nG394Cz/djGonkZZhlb/TW/aKstk0q4kz/4z+0Z/cOETTQqfbg1+9p99o/H6wgiVSiWceivUs99A0rRqCGHzqIRNf+f4bMt/Ozv9pj+gtMKphNrw0MbZtvx90dBbBFIpXw4PS5xt+QNn2QNn1QMLZNdlMFVCsmdUIau/qx/0h5wmLJWQWt/gL2B4fwPiekfr+5/8FmSJB+F6Husftp83Wj+TKhun7oxSn7FuLrXiH/mv59mfunjK0UqSfyaeGTbJ/m9h78t3Z+/N8Md/+dfffv/88ffP5M27T/9m/Mu/fvz023+8ff2ZT1v/23n28tyipkPuxJZykjz7T1b6pX4aU/ssNHmtIawwRs142/Dy9owvTDCTHx1KBUNDozYk4nbUxg40Q/HFc990mKtrZ0rPY8c1N/G5wwqo2Lm+ykPATliy9c0dtXllaWdzwuc7Pz2vFfsbs1jdWwuimsHW0/lD5zwMzwN+G6rLZK45NEdt9G6mGXhn69E4ZsF65lJ/l+x/vFgoFvn4i0o81p///zGJFpP52q8sFotZ9HbEFOuhg7DZrqXb6PrK213dbK4vL7Z8rZXjCddazasupxWA7vdnZztrqK+H2bibxHxkHyqTZ49Osj/LmsTLFLlFq2Qko6qas5zISl0zsmlIfZv61tP0mbj1qPJZLW53mpJqc2jTClRxnpljSzWKfii3rlTffPfDn4+ey1+hUcyQ2EuX5xeZEWYt4Juy2Ve/f/75jBUWfz4ZKkuf01He1rkX2CnLcfm+YZtuzdRN7mmSZHOX/duHdsWGVmYypFHydG+xf3/kV6UVBZyBT5taH/NH5nC20057V3DRg+orbJpbps6tiN/M6W+dHf8z81yMS1QRy76q9r/WvxTvVio7cB3L3TKrtW+xm2yeff/s/t37j7++e/3u83+R+8+/v3n3G2Gdmo9vP31+9/b+2atn/xjYo/bl2asv7IEvjNE8UPs+CayHvxaHpcT861f8f/gD/P+e8ZXSv7H6rPj4qvyjp04rfv2+/INFk8Oc2A+/8k34WU5uGdpR64Gx2Q/k5vzi/Kr8+p/5/zBLz97kqfkbA/8ni6bcCF9SE7NY+e9/8JeKJMMM8STzfZWEs2XmXGKeOvjOlOIgA5fa/L+LMt3ss1AJImfn+KZbvOenrvt99nJCfR5WZ5d3dy9v7y5fXt7983slz/kmLDVvNy+vmavnLy8UfTGV5VamYtMNObBCWVHq1RXz/uL65bW692xjHXeXRIGr5vbl86vnL26f37xQ91rbOEeol6r5vby7fXF5cXNxfanumJUExLmKVZPS7cvLq7sXU8K3rnS/PQaKnm9Y/ry+vrm7UffcKAGVvN5eXN3d3F3eqmYcHr6HUDXtXry8u766ub1VdJbtKWS+IkrygySV3F7f3b58cXN1J+21rMCqLFO0MbKY5UPtUgn3BSsnbljyVfX66fNb8pp1cQOfWYqlk+3V1c0VS0HXVxNUWqU7wsp/szilU8Lr3c3t5d3N5UvpFFvzWc8slsvqt1gyZG8ub5/fXbDCaILTqvzNrz2RDt2ri4uXzO3l9RSlHaeSKejq9ub25cXLF1PSbeUzC1/H52uBLGm917d31y9f3r6cFcR5gZ/XcycAOe1nl9e3LEXf3twhIMjGOWtUXFxJVwM1/7W2jLLXy4vLF7dX188vlGO9NV8ik8JuLy4u7m4v1AO507SXksZKiouXzOfLjrusVyzw1zxjJPuwpWaSRjRufSwP6CkO+e7yfHn2OmvO5l1g/hc/qDX7o7438ixrM58VR0FkP1eNX/7BDEP+T77lmf9VPHmyI+qHsP8Tfy7xu990BdWKwFueP64F8QYakMIk+w2H474VjC9u7q6ur0RZbXowst4+dfmRZvloxDcdhEIt9RLy5c2Ll6yU7jZxpodfMQaS83/LgdcVUg+5u5sb1pq46jYnpEKO1TEmH3PhJ9geHJt+K2VeL3ctaJ5fvXhx+/Ku2x+RDRmOyRpa/Hhc1qj9pgKnF70WPnd3vGHy/GW3QywVQPwIzJ3P7xsvnH0jZVQvd604v33x4uXFi4vn//zbs3/+P7ZGCew==END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA