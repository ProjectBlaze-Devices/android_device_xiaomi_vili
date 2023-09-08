#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/vili
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Inherit from common device
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := vili
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Camera
MALLOC_SVELTE_FOR_LIBC32 := true
MALLOC_SVELTE := true

# MIUI camera stuff
-include vendor/xiaomi/vili-miuicamera/products/board.mk

# Firmware
-include vendor/xiaomi/vili-firmware/BoardConfigVendor.mk

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := vili

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Vibrator
SOONG_CONFIG_xiaomiSm8350Vars_vibrator_use_effect_stream := true

# Include proprietary-files
include vendor/xiaomi/vili/BoardConfigVendor.mk
