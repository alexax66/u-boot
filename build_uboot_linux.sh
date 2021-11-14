#!/usr/local/bin/bash

CROSS_COMPILE=~/build/toolchain/gcc-linaro-7.5.0-linux-gnu/bin/aarch64-linux-gnu-
export CROSS_COMPILE

THREAD=-j$(bc <<< $(grep -c ^processor /proc/cpuinfo)+2

make -C $(pwd) O=output $1
make $THREAD -C $(pwd) O=output

