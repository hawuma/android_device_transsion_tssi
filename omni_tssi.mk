#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tssi device
$(call inherit-product, device/transsion/tssi/device.mk)

PRODUCT_DEVICE := tssi
PRODUCT_NAME := omni_tssi
PRODUCT_BRAND := transsion
PRODUCT_MODEL := tssi
PRODUCT_MANUFACTURER := transsion

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hal_mgvi_64_64only_armv82_for_ota-user 16 BP2A.250605.031.A3 185647 release-keys"

BUILD_FINGERPRINT := transsion/tssi/tssi:16/BP2A.250605.031.A3/301550078:user/release-keys
