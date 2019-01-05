#!/bin/bash
cd ../../../..
cd frameworks/base
patch -p1 < ../../device/highscreen/giraffe/patches/signature_spoofing_permission.patch
cd ../..

