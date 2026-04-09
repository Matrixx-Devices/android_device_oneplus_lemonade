#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonade device
$(call inherit-product, device/oneplus/lemonade/device.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

PRODUCT_NAME := matrixx_lemonade
PRODUCT_DEVICE := lemonade
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2115

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus9-user 14 UKQ1.230924.001 R.209d31b_1-39324b release-keys" \
    BuildFingerprint=OnePlus/OnePlus9/OnePlus9:14/UKQ1.230924.001/R.209d31b_1-39324b:user/release-keys \
    DeviceName=OnePlus9 \
    DeviceProduct=OnePlus9 \
    SystemDevice=OnePlus9 \
    SystemName=OnePlus9

#Matrixx Stuff
WITH_GMS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
HBM_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
MATRIXX_MAINTAINER := Mrick343
TARGET_CUSTOM_UDFPS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
SURFACE_FLINGER_BOOST := true
TARGET_OPTIMIZED_DEXOPT := true
USE_REALITY_ENGINE := true
