# TensorFlow Lite for Microcontrollers examples for Silicon Labs Devices

TensorFlow Lite for Microcontrollers is a framework designed for running machine learning models on microcontrollers.

This repository contains precompiled TensorFlow Lite for Microcontroller examples that have been ported to run on Silicon Labs devices. The repository also includes the Silicon Labs Gecko SDK (GSDK), which provides a [full integration of the TensorFlow Lite for Microcontrollers](https://docs.silabs.com/gecko-platform/latest/machine_learning/tensorflow/overview) library by including it as a third-party component.

The ```examples/``` folder contains examples that have been generated to run on the [Thunderboard Sense 2](https://www.silabs.com/development-tools/thunderboard/thunderboard-sense-two-kit) and the [EFR32xG24 Dev Kit](https://www.silabs.com/development-tools/wireless/efr32xg24-dev-kit). Each example includes a precompiled binary that can be programmed directly onto the kit, together with the example source code. You can find the following examples in this repository:

* [Hello World](examples/thunderboard_sense_2/hello_world/) - Demonstrates the absolute basics of TensorFlow Lite for Microcontrollers by running a neural network that replicates a sine function.
* [Micro Speech](examples/thunderboard_sense_2/micro_speech/) - Captures audio with a microphone to detect the words "yes" and "no"
* [Magic Wand](examples/thunderboard_sense_2/magic_wand/) - Captures accelerometer data to classify different physical gestures

## How to run the examples on a dev kit 

### Prerequisites

* An [EFR32xG24 Dev Kit](https://www.silabs.com/development-tools/wireless/efr32xg24-dev-kit) or a [Thunderboard Sense 2 development kit](https://www.silabs.com/development-tools/thunderboard/thunderboard-sense-two-kit) 
* [Simplicity Commander](https://www.silabs.com/developers/mcu-programming-options#programming) to flash the application onto the kit

If you want to build the examples from source you need to install the build tools to build from the command line

* GNU Make
* [GNU Arm Embedded Toolchain v10.3-2021.07](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads)

### Download

Clone this repository with its submodules using the following command

```
git clone --recursive https://github.com/Siliconlabs/tflite-micro-efr32-examples.git
```

### Flashing a precompiled binary

To flash a precompiled binary to the device, first navigate to the example you want to flash (e.g. ```examples/efr32xg24_dev_kit/micro_speech```) and flash the binary to the device using Simplicity Commander with the following command. Replace ```<path_to_commander>``` with the path to the Simplicity Commander executable.

```
<path_to_commander> flash precompiled_binary/tflite_micro_micro_speech.s37
```


## Building from the command line

If you want to modify the source code, you have to build the examples. To do this, navigate to the folder that contains the example you want to build for your kit (e.g. ```examples/efr32xg24_dev_kit/micro_speech/```) and build the example by running the following command. Replace ```<path_to_gcc>``` to the location where the GNU Arm Embedded Toolchain is installed.

```
make -f tflite_micro_micro_speech.Makefile release ARM_GCC_DIR=<path_to_gcc>
```

Flash the compiled application to the device using Simplicity Commander with the following command. Replace ```<path_to_commander>``` with the path to the Simplicity Commander executable.

```
$ <path_to_commander> flash build/release/tflite_micro_micro_speech.s37
```

## Developing machine learning applications with the Silicon Labs Gecko SDK

These examples, along with other machine learning examples, can be found as sample applications in the GSDK. See the [sample applications list](https://docs.silabs.com/gecko-platform/4.0/machine-learning/tensorflow/sample-apps) for a full overview. From the GSDK the sample applications can be generated for any compatible board. The easiest way to get started with [TensorFlow Lite for Microcontrollers in the Gecko SDK](https://docs.silabs.com/gecko-platform/latest/machine_learning/tensorflow/overview) is by installing [Simplicity Studio 5](https://www.silabs.com/developers/simplicity-studio), which will set up your development environment and walk you through the installation of the Gecko SDK.

## TensorFlow Lite for Microcontrollers version

The Tensorflow Lite Micro shipped in the Gecko SDK is updated at a regular interval, the current version can be found [here](https://docs.silabs.com/gecko-platform/4.0/machine_learning/tensorflow/overview#version)

## License

These examples are generally covered under the Apache 2.0 license. Some files use different licensing terms. If so, they will be clearly marked in the beginning of the file.

The Silicon Labs Gecko SDK has its own license, see ```gecko_sdk/licence.txt```.