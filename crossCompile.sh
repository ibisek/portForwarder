#!/bin/bash 

# clean-up:
rm -f ./socketServerForwarder
rm -f ./socketServerForwarder-stripped

# set-up paths:
. /bin/openwrt.config 

# compile:
mipsel-openwrt-linux-gcc ./socketServerForwarder.c -o portForwarder.bin -O3

# strip the binary:
mipsel-openwrt-linux-strip ./portForwarder.bin -o portForwarder-stripped.bin 


