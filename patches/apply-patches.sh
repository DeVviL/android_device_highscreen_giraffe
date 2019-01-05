#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/highscreen/giraffe/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
patch -p1 < ../../device/highscreen/giraffe/patches/Add-back-atomic-symbols.patch
patch -p1 < ../../device/highscreen/giraffe/patches/Bring-back-earlysuspend.patch
cd ../..
cd bionic
patch -p1 < ../device/highscreen/giraffe/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd ..
cd frameworks/base
patch -p1 < ../../device/highscreen/giraffe/patches/Add-proc-ged-to-zygote-whitelist.patch
cd ../..

