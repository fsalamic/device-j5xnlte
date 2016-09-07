ifneq ($(filter gprimeltecan gprimeltexx gprimeltetmo gprimeltemtr, $(TARGET_DEVICE)),)
########################
##nfcnci.apk
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := NfcNci
LOCAL_SRC_FILES    := NfcNci.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE := SecNfcNci
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

#Create link for nfc_nci.so
$(shell mkdir -p $(TARGET_OUT)/app/SecNfcNci/lib/arm; \
	ln -sf /system/lib/libnfc_nci_jni.so \
	$(TARGET_OUT)/app/SecNfcNci/lib/arm/libnfc_nci_jni.so)

endif
