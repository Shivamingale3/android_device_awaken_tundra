#
# Copyright (C) 2024 The AwakenOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit common Awaken configurations
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := awaken_tundra
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tundra_g-user 13 T1SJS33.117-30-3-8 bf62b release-keys" \
    PRODUCT_NAME=tundra_g

BUILD_FINGERPRINT := motorola/tundra_g/tundra:11/T1SJS33.117-30-3-8/bf62b:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Build Type
AWAKEN_BUILD_TYPE := Unofficial

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# GMS
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true

# Google Assistant
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
