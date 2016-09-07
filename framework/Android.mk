LOCAL_PATH:= $(call my-dir)
ifneq ($(filter gprimeltecan gprimeltexx gprimeltetmo gprimeltemtr, $(TARGET_DEVICE)),)
########################
##com.google.widevine.jarftware.drm
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := platform
LOCAL_MODULE := com.google.widevine.software.drm
LOCAL_SRC_FILES    := $(LOCAL_MODULE).jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
include $(BUILD_PREBUILT)

########################
##com.gsma.services.nfc
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := platform
LOCAL_MODULE := com.gsma.services.nfc
LOCAL_SRC_FILES    := $(LOCAL_MODULE).jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
include $(BUILD_PREBUILT)

########################
##org.simalliance.openmobileapi
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := platform
LOCAL_MODULE := org.simalliance.openmobileapi
LOCAL_SRC_FILES    := $(LOCAL_MODULE).jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
include $(BUILD_PREBUILT)

########################
##com.broadcom.bt
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := platform
LOCAL_MODULE := com.broadcom.bt
LOCAL_SRC_FILES    := $(LOCAL_MODULE).jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
include $(BUILD_PREBUILT)

########################
##com.broadcom.nfc
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := platform
LOCAL_MODULE := com.broadcom.nfc
LOCAL_SRC_FILES    := $(LOCAL_MODULE).jar
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
include $(BUILD_PREBUILT)
endif
########################
