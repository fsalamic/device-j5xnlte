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
# Inherit from common
include device/samsung/msm8916-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gprimelte-common

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

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE      := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 15728640
BOARD_CACHEIMAGE_PARTITION_SIZE     := 314572800
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_FLASH_BLOCK_SIZE              := 131072

# RIL
TARGET_RIL_VARIANT := caf
#override to enable audio.
BOARD_PROVIDES_LIBRIL := false

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/gprimelte-common/recovery/fstab.qcom
