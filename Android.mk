LOCAL_PATH := $(call my-dir)

ifneq ($(filter j5lte j5ltechn j5nlte j5nltexx j53gxx, $(TARGET_DEVICE)),)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

endif
