#
# Copyright 2020 The Android Open Source Project
# Copyright (C) 2020 The LineageOS Project
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

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml
    
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_ffmpeg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_oppo_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_oppo_performance.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_oppo_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_oppo_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    gralloc.mt6771 \
    gralloc.default \
    hwcomposer.mt6771 \
    libhwc2on1adapter \
    libhwc2onfbadapter \
    memtrack.mt6771
       
# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
endif

# Properties
-include $(DEVICE_PATH)/system_prop.mk

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/AVRCP.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl
    
# Idc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/AVRCP.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/AVRCP.idc

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/com.mediatek.ims.plugin.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.mediatek.ims.plugin.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml
    
# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/misc/clatd.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/clatd.conf \
    $(LOCAL_PATH)/misc/factory.ini:$(TARGET_COPY_OUT_SYSTEM)/etc/factory.ini \
    $(LOCAL_PATH)/misc/custom.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/custom.conf
    
# Init
PRODUCT_PACKAGES += \
    fstab.mt6771 \
    init.mt6771.rc \
    init.mtk.rc

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.1-service.clearkey \
    android.hardware.drm@1.1-service.widevine
    
# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio@1.2 \
    android.hardware.radio.config@1.0 \
    android.hardware.secure_element@1.0 \
    libprotobuf-cpp-full \
    libxml2

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl-mediatek \
    Snap

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/seccomp/configstore@1.1.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.1.policy \
    $(LOCAL_PATH)/configs/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/configs/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy
	
# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf	

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service \
    android.hardware.health@2.0-service.override

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0_system

# Power
PRODUCT_PACKAGES += \
    power.mt6771
    
# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service \
    android.hardware.vibrator@1.0-impl

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.1-service-mediatek
    
# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service \
    thermal.mt6771
    
#WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service-mediatek \
    hostapd \
    libwpa_client \
    libwifi-hal \
    vendor.oppo.hardware.wifi.supplicant@1.0 \
    vendor.mediatek.hardware.wifi.hostapd@2.0 \
    vendor.mediatek.hardware.wifi.supplicant@2.0 \
    vendor.mediatek.hardware.wifi.supplicant@2.1 \
    wpa_supplicant \
    wpa_supplicant.conf

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    mtk-telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext    
    
# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Trust
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service

# Get non-open-source specific aspects
$(call inherit-product, vendor/oppo/CPH1859/CPH1859-vendor.mk)
