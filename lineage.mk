#
# Copyright (C) 2017 The LineageOS Open Source Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)




# Inherit device configuration
$(call inherit-product, device/oppo/CPH1861/device.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Bootanimation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2160

# Device identifiers
PRODUCT_DEVICE := CPH1861
PRODUCT_NAME := lineage_CPH1861
PRODUCT_BRAND := oppo
PRODUCT_MODEL := Oppo Realme 1
PRODUCT_MANUFACTURER := Oppo

TARGET_VENDOR := oppo
TARGET_VENDOR_PRODUCT_NAME := CPH1861
TARGET_VENDOR_DEVICE_NAME := CPH1861

PRODUCT_GMS_CLIENTID_BASE := android-oppo


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_oppo6771_17061-user 8.1.0 O11019 1550589611 release-keys" \
    PRODUCT_NAME="CPH1861" \
    TARGET_DEVICE="CPH1861"
