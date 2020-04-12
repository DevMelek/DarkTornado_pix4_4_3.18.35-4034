#!/bin/bash
export KBUILD_BUILD_USER=DEVMelek
export KBUILD_BUILD_HOST=Melek
git clone -q https://github.com/Skyrimus/arm-eabi-4.8-google-mt6580.git
export ARCH=arm CROSS_COMPILE=${PWD}/arm-eabi-4.8-google-mt6580/bin/arm-eabi-
export USE_CCACHE=1
export ARCH=arm ARCH_MTK_PLATFORM=mt6580
export TARGET=out
make O=$TARGET ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE pixi3_5_defconfig
make O=$TARGET ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE -j2

