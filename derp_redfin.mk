#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/derpfest/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/redfin/aosp_redfin.mk)
$(call inherit-product, device/google/redbull/lineage_common.mk)

include device/google/redfin/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5
PRODUCT_NAME := derp_redfin

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# DerpFest stuff
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true

# Gapps
WITH_GMS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=redfin \
    PRIVATE_BUILD_DESC="redfin-user 14 UP1A.231105.001 10817346 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:14/UP1A.231105.001/10817346:user/release-keys

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)
