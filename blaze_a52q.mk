#
# Copyright (C) 2021 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/a52q/device.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := blaze_a52q
PRODUCT_DEVICE := a52q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A525F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung


# Stuffs
BLAZE_MAINTAINER := HoSsAiN
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_TOUCHGESTURES := true

# Vendor fingerprint
BUILD_FINGERPRINT := "samsung/a52qnsxx/a52q:11/RP1A.200720.012/A525FXXU6EWL3:user/release-keys"
PRIVATE_BUILD_DESC := "a52qnsxx-user 11 RP1A.200720.012 A525FXXU6EWL3 release-keys"

PRODUCT_SHIPPING_API_LEVEL := 30

# Security patch
VENDOR_SECURITY_PATCH := 2023-12-01