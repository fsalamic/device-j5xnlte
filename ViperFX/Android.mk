LOCAL_PATH:= $(call my-dir)

########################
##viperfx.apk
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := AudioFX
LOCAL_SRC_FILES    := ViperFX.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE := ViperFX
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

######################
##libv4a_fx_ics.so
include $(CLEAR_VARS)
LOCAL_MODULE       := libv4a_fx_ics.so
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SRC_FILES    := $(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib/soundfx
include $(BUILD_PREBUILT)
