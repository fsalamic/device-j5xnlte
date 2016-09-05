LOCAL_PATH:= $(call my-dir)

########################
##novalauncher
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Trebuchet
LOCAL_SRC_FILES    := NovaLauncher_4.3.1.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE := NovaLauncher
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)
