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

include $(LOCAL_PATH)/keylayout/Layouts.mk

LOCAL_PATH := device/samsung/gprimelte-common

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#NFC
PRODUCT_PACKAGES += \
	Tag \
	com.android.nfc_extras \
	com.android.nfc.helper \
	libnfc \
	libnfc_jni \
	libnfc_nci \
	libnfc_nci_jni

# NFC prebuilt files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
	packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt

# NFC workaround
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/setNFCperms:system/etc/init.d/setNFCperms

# Audio
PRODUCT_PACKAGES += \
	libFLAC

#VoLTE calling support
PRODUCT_PACKAGES += \
	com.android.ims \
	com.android.ims.internal \
	ims-common \
	voip-common

# SHIM RIL
PRODUCT_PACKAGES += \
	libril_shim

# Doze
PRODUCT_PACKAGES += \
	SamsungDoze
	
# Touch issue workaround
PRODUCT_PACKAGES += \
	InputDisabler

# FM
PRODUCT_PACKAGES += \
	FMRadio \
	libfmjni

ADDITIONAL_BUILD_PROPERTIES += \
	hw.fm.mode=normal

# FM workaround
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/enableRadioFM:system/etc/init.d/enableRadioFM

# Ramdisk
PRODUCT_PACKAGES += \
	init.target.rc

# Keylayout
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
	$(LOCAL_PATH)/keylayout/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
	$(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
	$(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
	$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	$(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Default Property Overrides
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.eons.enabled=true \
	rild.libpath=/system/lib/libsec-ril.so \
	persist.radio.lte_vrte_ltd=1 \
	persist.radio.add_power_save=1 \
	camera2.portability.force_api=1 \
	ro.secure=0

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

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.use_data_netmgrd=false \
	persist.radio.sib16_support=1 \
	ro.gps.agps_provider=1 \
	ro.pip.gated=0 \
	ro.telephony.samsung.realcall=true \
	cm.updater.uri=http://grandprime.ddns.net/OTA/api \
	ro.telephony.ril_class=SamsungQcomRIL

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Inhert dalvik heap values from aosp
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
