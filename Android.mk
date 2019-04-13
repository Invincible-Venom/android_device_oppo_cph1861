LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),CPH1861)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
