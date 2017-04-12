#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from common
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

LOCAL_PATH := device/samsung/gprimelte-common

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Remove packages
PRODUCT_PACKAGES += \
	RemovePackages

# Camera
PRODUCT_PACKAGES += Snap

#NFC
PRODUCT_PACKAGES += \
	Tag \
	com.android.nfc_extras \
	com.android.nfc.helper \
	NfcNci \
	libnfc_nci \
	libnfc_nci_jni \
	libpn547_fw

# NFC prebuilt files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
	packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt \
	$(LOCAL_PATH)/nfc/route.xml:system/etc/param/route.xml \
	$(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
	$(LOCAL_PATH)/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
	$(LOCAL_PATH)/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
	$(LOCAL_PATH)/nfc/libnfc-sec.conf:system/etc/libnfc-sec.conf

# Audio
PRODUCT_PACKAGES += \
	libFLAC

#VoLTE calling support
PRODUCT_PACKAGES += \
	com.android.ims \
	com.android.ims.internal \
	ims-common \
	voip-common

# Boot jars
PRODUCT_BOOT_JARS += \
	qcom.fmradio

# SHIM RIL
PRODUCT_PACKAGES += \
	libril_shim

# Doze
PRODUCT_PACKAGES += \
	SamsungDoze

# FM
PRODUCT_PACKAGES += \
	libfmjni \
	libqcomfm_jni \
	qcom.fmradio

ADDITIONAL_BUILD_PROPERTIES += \
	hw.fm.mode=normal

# Ramdisk
PRODUCT_PACKAGES += \
	init.target.rc

# OTA scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/releasetools/get_variant.sh:install/bin/get_variant.sh \
	$(LOCAL_PATH)/releasetools/copy_nfc_configs.sh:install/bin/copy_nfc_configs.sh \
	$(LOCAL_PATH)/releasetools/copy_variant_blobs.sh:install/bin/copy_variant_blobs.sh \
	$(LOCAL_PATH)/releasetools/update_baseband.sh:install/bin/update_baseband.sh \
	$(LOCAL_PATH)/releasetools/update_device_name.sh:install/bin/update_device_name.sh

# Audio configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# Configuration files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/Diag.cfg:system/etc/Diag.cfg \
	$(LOCAL_PATH)/configs/Diag_audio.cfg:system/etc/Diag_audio.cfg \
	$(LOCAL_PATH)/configs/Diag_volte.cfg:system/etc/Diag_volte.cfg \
	$(LOCAL_PATH)/configs/Diag_zero.cfg:system/etc/Diag_zero.cfg

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# append the updater uri to the product properties if set
ifneq ($(CM_UPDATER_OTA_URI),)
	PRODUCT_PROPERTY_OVERRIDES += $(CM_UPDATER_OTA_URI)
endif

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Inhert dalvik heap values from aosp
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
