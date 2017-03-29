LOCAL_PATH := $(call my-dir)

ifneq ($(filter fortunalte gprimelte gprimeltexx gprimeltespr gprimeltetfnvzw gprimeltezt, $(TARGET_DEVICE)),)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := shared
LOCAL_MODULE_CLASS := FAKE
# It overrrides packages to avoid their addition to the ROM
LOCAL_OVERRIDES_PACKAGES := \
	libsecril-client \
	librilutils \
	libreference-ril \
	libril \
	libtinyalsa \
	libaudioroute \
	rild

include $(BUILD_PHONY_PACKAGE)

endif
