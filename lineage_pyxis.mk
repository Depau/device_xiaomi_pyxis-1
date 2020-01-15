#
# Copyright (C) 2019 The XenonHD Project
#
# SPDX-License-Identifer: Apache-2.0
#

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from grus device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := pyxis
PRODUCT_NAME := lineage_pyxis
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pyxis-user 10 QKQ1.190828.002 9.11.28 release-keys" \
    PRODUCT_NAME="pyxis" \
    TARGET_DEVICE="pyxis"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/pyxis/pyxis:10/QKQ1.190828.002/9.11.28:user/release-keys