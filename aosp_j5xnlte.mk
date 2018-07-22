
# Inherit from common
$(call inherit-product, device/samsung/j5x-common/aosp_j5x-common.mk)

$(call inherit-product, device/samsung/j5xnlte/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j5xnlte
PRODUCT_NAME := aosp_j5xnlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J510FN
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_GMS_CLIENTID_BASE := android-samsung


TARGET_ARCH := arm

TARGET_DENSITY := xxhdpi

TARGET_BOOT_ANIMATION_RES := 720

$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm