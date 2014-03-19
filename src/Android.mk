LOCAL_PATH := $(call my-dir)

libefivar_src_files := \
	efivar.c \
	efivarfs.c \
	guid.c \
	lib.c \
	vars.c


include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(libefivar_src_files)
LOCAL_C_INCLUDES := $(ANDROID_BUILD_TOP)/external/oprofile/libpopt
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libefivar
LOCAL_MODULE_TAGS := eng
LOCAL_STATIC_LIBRARIES := liboprofile_popt
include $(BUILD_STATIC_LIBRARY)
