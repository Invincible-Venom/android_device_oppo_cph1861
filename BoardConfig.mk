#
# Copyright (C) 2017 The LineageOS Project
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

DEVICE_PATH := device/oppo/CPH1861

# Assertions
TARGET_OTA_ASSERT_DEVICE := CPH1861,Realme1,full_oppo6771

# Treble
PRODUCT_SHIPPING_API_LEVEL := 26
PRODUCT_COMPATIBILITY_MATRIX_LEVEL_OVERRIDE := 27

# inherit from the proprietary version
-include vendor/oppo/CPH1861/BoardConfigVendor.mk

DEVICE_PATH := device/oppo/CPH1861

BOARD_VENDOR := oppo

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := oppo6771_17061
TARGET_NO_BOOTLOADER := true


# Enable 64-bits binder
TARGET_USES_64_BIT_BINDER := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USES_MKE2FS := true

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Init
TARGET_INIT_VENDOR_LIB := libinit_CPH1861
TARGET_RECOVERY_DEVICE_MODULES := libinit_CPH1861

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x13f88000
BOARD_RAMDISK_OFFSET := 0x14f88000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel.img-zImage

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4407296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114910191
BOARD_CACHEIMAGE_PARTITION_SIZE := 442368
BOARD_FLASH_BLOCK_SIZE := 

# Platform
TARGET_BOARD_PLATFORM_GPU := Mali G72 MP3 

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
# TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/recovery.fstab

# Vendor
TARGET_COPY_OUT_VENDOR := vendor



