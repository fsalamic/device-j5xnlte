# Inherit from common
-include device/samsung/msm8916-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gprimelte-common

# Inherit from common
-include device/samsung/qcom-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := msm8916

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
# Custom RIL class
BOARD_RIL_CLASS    := ../../../device/samsung/gprimelte-common/ril
PROTOBUF_SUPPORTED := true

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH           := /sys/class/power_supply/battery/batt_lp_charging

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Kernel
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SELINUX_LOG_CONFIG := selinux_log_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/msm8916

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE      := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 15728640
BOARD_CACHEIMAGE_PARTITION_SIZE     := 314572800
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_FLASH_BLOCK_SIZE              := 131072
#i think this should be 4096
#blockdev --getbsz /dev/block/mmcblk0p9

# RIL
TARGET_RIL_VARIANT := caf
#override to enable audio.
BOARD_PROVIDES_LIBRIL := false

BOARD_SEPOLICY_DIRS += \
    device/samsung/gprimelte-common/sepolicy

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/gprimelte-common/recovery/fstab.qcom