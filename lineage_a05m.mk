#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from a05m device
$(call inherit-product, device/samsung/a05m/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := a05m
PRODUCT_NAME := lineage_a05m
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A055M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a05mub-user 15 AP3A.240905.015.A2 A055MUBSDDYJ1 release-keys" \
    BuildFingerprint=samsung/a05mub/a05m:15/AP3A.240905.015.A2/A055MUBSDDYJ1:user/release-keys
