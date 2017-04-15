#
# Copyright (C) 2017 OpenKirin, OldDroid
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

VENDOR_PATH := device/hisi/3650-common

TARGET_RECOVERY_DEVICE_DIRS := \
    $(VENDOR_PATH) \
    $(DEVICE_PATH)

# Platform
TARGET_BOARD_PLATFORM := hi3650

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := hi3650

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a7

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
BOARD_KERNEL_BASE := 0x00478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := loglevel=4 page_tracker=on androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x07588000
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# TWRP
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi

TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/recovery.fstab

BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
TW_DEVICE_VERSION := 2
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
