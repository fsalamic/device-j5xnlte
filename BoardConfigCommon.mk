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

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Custom RIL class
BOARD_RIL_CLASS    := ../../../device/samsung/gprimelte-common/ril
PROTOBUF_SUPPORTED := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_gprimelte
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_gprimelte.cpp

# Release Tools
TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)/releasetools

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# Wifi
BOARD_HAVE_SAMSUNG_WIFI := true

# RIL
TARGET_RIL_VARIANT := caf
BOARD_PROVIDES_LIBRIL := false
