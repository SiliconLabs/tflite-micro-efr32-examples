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
 -Imagic_wand \
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
 -I$(SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(SDK_PATH)/hardware/driver/icm20689/inc \
 -I$(SDK_PATH)/hardware/driver/imu/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/driver/leddrv/inc \
 -I$(SDK_PATH)/platform/driver/mvp/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_eusart \
 -I$(SDK_PATH)/platform/peripheral/inc \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/cmsis \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/cmsis/CMSIS/NN/Include \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/flatbuffers/include \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/gemmlowp \
 -I$(SDK_PATH)/util/third_party/tensorflow_extra/ruy \
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

$(OUTPUT_DIR)/sdk/hardware/driver/icm20689/src/sl_icm20689.o: $(SDK_PATH)/hardware/driver/icm20689/src/sl_icm20689.c
	@echo 'Building $(SDK_PATH)/hardware/driver/icm20689/src/sl_icm20689.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/icm20689/src/sl_icm20689.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/icm20689/src/sl_icm20689.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/icm20689/src/sl_icm20689.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c
	@echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c
	@echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_icm20689.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_icm20689.c
	@echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_icm20689.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_icm20689.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_icm20689.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_icm20689.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c
	@echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.o

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

$(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(SDK_PATH)/platform/emlib/src/em_burtc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_burtc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

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

$(OUTPUT_DIR)/sdk/platform/peripheral/src/peripheral_sysrtc.o: $(SDK_PATH)/platform/peripheral/src/peripheral_sysrtc.c
	@echo 'Building $(SDK_PATH)/platform/peripheral/src/peripheral_sysrtc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/peripheral/src/peripheral_sysrtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/peripheral_sysrtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/peripheral_sysrtc.o

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

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.o

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

$(OUTPUT_DIR)/project/autogen/sl_tflite_micro_model.o: autogen/sl_tflite_micro_model.c
	@echo 'Building autogen/sl_tflite_micro_model.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_tflite_micro_model.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_tflite_micro_model.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_tflite_micro_model.o

$(OUTPUT_DIR)/project/magic_wand/ring_micro_features_data.o: magic_wand/ring_micro_features_data.cc
	@echo 'Building magic_wand/ring_micro_features_data.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ magic_wand/ring_micro_features_data.cc
CXXDEPS += $(OUTPUT_DIR)/project/magic_wand/ring_micro_features_data.d
OBJS += $(OUTPUT_DIR)/project/magic_wand/ring_micro_features_data.o

$(OUTPUT_DIR)/project/magic_wand/sl_accelerometer_handler.o: magic_wand/sl_accelerometer_handler.cc
	@echo 'Building magic_wand/sl_accelerometer_handler.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ magic_wand/sl_accelerometer_handler.cc
CXXDEPS += $(OUTPUT_DIR)/project/magic_wand/sl_accelerometer_handler.d
OBJS += $(OUTPUT_DIR)/project/magic_wand/sl_accelerometer_handler.o

$(OUTPUT_DIR)/project/magic_wand/sl_gesture_predictor.o: magic_wand/sl_gesture_predictor.cc
	@echo 'Building magic_wand/sl_gesture_predictor.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ magic_wand/sl_gesture_predictor.cc
CXXDEPS += $(OUTPUT_DIR)/project/magic_wand/sl_gesture_predictor.d
OBJS += $(OUTPUT_DIR)/project/magic_wand/sl_gesture_predictor.o

$(OUTPUT_DIR)/project/magic_wand/sl_main_functions.o: magic_wand/sl_main_functions.cc
	@echo 'Building magic_wand/sl_main_functions.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ magic_wand/sl_main_functions.cc
CXXDEPS += $(OUTPUT_DIR)/project/magic_wand/sl_main_functions.d
OBJS += $(OUTPUT_DIR)/project/magic_wand/sl_main_functions.o

$(OUTPUT_DIR)/project/magic_wand/sl_output_handler.o: magic_wand/sl_output_handler.cc
	@echo 'Building magic_wand/sl_output_handler.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ magic_wand/sl_output_handler.cc
CXXDEPS += $(OUTPUT_DIR)/project/magic_wand/sl_output_handler.d
OBJS += $(OUTPUT_DIR)/project/magic_wand/sl_output_handler.o

$(OUTPUT_DIR)/project/magic_wand/slope_micro_features_data.o: magic_wand/slope_micro_features_data.cc
	@echo 'Building magic_wand/slope_micro_features_data.cc'
	@mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ magic_wand/slope_micro_features_data.cc
CXXDEPS += $(OUTPUT_DIR)/project/magic_wand/slope_micro_features_data.d
OBJS += $(OUTPUT_DIR)/project/magic_wand/slope_micro_features_data.o

$(OUTPUT_DIR)/project/main.o: main.c
	@echo 'Building main.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA