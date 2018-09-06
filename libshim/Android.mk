LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    ril.cpp \
    camera.cpp \
    bionic.cpp \
    xlog.c

LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/core/include/ frameworks/rs/server/ frameworks/av/include/ hardware/libhardware/include/
LOCAL_SHARED_LIBRARIES := libbinder libgui libutils liblog \
                          libandroid libui libc libcutils
LOCAL_MODULE := libshim
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS += $(LIBLOG_CFLAGS)

include $(BUILD_SHARED_LIBRARY)
