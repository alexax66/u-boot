#!/usr/local/bin/bash

CROSS_COMPILE=/home/alexax/src/Andriod/toolchains/gcc-7.5.0-x86_64_aarch64-linux-gnu/bin/aarch64-cortex_a53-linux-gnu-
export CROSS_COMPILE

THREAD=-j$(bc <<< $(sysctl -n hw.ncpu)+2)

gmake -C $(pwd) O=output $1
gmake $THREAD -C $(pwd) O=output

