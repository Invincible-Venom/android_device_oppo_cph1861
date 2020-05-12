#
# Copyright 2019 The Android Open Source Project
# Copyright (C) 2019 The LineageOS Project
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

#
# System Properties for Realme 1: CPH1859
#

# LCD density
ro.sf.lcd_density=480
 
# MediaTek
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.mediatek.chip_ver=S01 \
ro.mediatek.version.release=CPH1859_11_C.48_200315\
ro.mediatek.platform=MT6771 \
ro.mediatek.version.branch=alps-mp-p0.mp3.tc16sp \
ro.mediatek.wlan.p2p=1 \
ro.mediatek.wlan.wsc=1

# Graphics
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
     ro.opengles.version=196610 \
     debug.sf.disable_backpressure=1
     	
# Telephony
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.telephony.default_network=10,10 \
    ro.telephony.sim.count=2
  
# Playstore
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.com.google.clientidbase=android-oppo
     
# DRM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mtk_cta_drm_support=1 \
    ro.mtk_widevine_drm_l3_support=1 \
    drm.service.enabled=true

# Granular Volume Steps
ro.config.vc_call_vol_steps=7
ro.config.media_vol_steps=25
    
# OMX
mtk.vdec.waitkeyframeforplay=1

# Power off opt in IPO
sys.ipo.pwrdncap=2

# Power off opt in IPO
sys.ipo.pwrdncap=2

# Storage
ro.sys.usb.storage.type=mtp,adb	

#ril
rild.libpath=mtk-ril.so
rild.libargs=-d /dev/ttyC0
vendor.ril.data.gsm_imsi0=405854004072403

# WFD
wfd.dummy.enable=1

#WiFi
mediatek.wlan.chip=CONSYS_MT6771
mediatek.wlan.module.postfix=_consys_mt6771
ro.mediatek.wlan.wsc=1
ro.mediatek.wlan.p2p=1
mediatek.wlan.ctia=0
wifi.tethering.interface=ap0
wifi.interface=wlan0
wifi.direct.interface=p2p0

#Adding for Debugging
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
persist.service.adb.enable=1 \
persist.service.debuggable=1 \
persist.sys.usb.config=mtp,adb \
ro.debuggable=1 \
ro.allow.mock.location=1 \
ro.adb.secure=0
ro.secure=0
