LOCAL_PATH := $(call my-dir)

ifneq ($(filter j5xnlte j5xlte, $(TARGET_DEVICE)),)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

endif
