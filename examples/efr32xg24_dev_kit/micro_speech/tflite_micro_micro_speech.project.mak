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
 -I$(SDK_PATH)/platform/driver/mvp/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_eusart \
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
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPBasicMath.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPBayes.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPCommon.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPComplexMath.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPController.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPDistance.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPFastMath.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPFiltering.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPInterpolation.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPMatrix.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPQuaternionMath.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPStatistics.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPSupport.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPSVM.a \
 $(SDK_PATH)/platform/CMSIS/libs/GCC/cortex-m33/libCMSISDSPTransform.a

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
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -mfp16-format=ieee \
 -mcmse \
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
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -mfp16-format=ieee \
 -mcmse \
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

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.o: $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.c
	@echo 'Building $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_eusart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

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

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.o

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

$(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_program_area.o: $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_program_area.c
	@echo 'Building $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_program_area.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/mvp/src/sl_mvp_program_area.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_program_area.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/mvp/src/sl_mvp_program_area.o

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
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA