#
# Copyright (C) 2018-2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Stag stuff
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit from whyred device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit GApps Stuffs
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some SynthOS specifically stuffs
DERP_BUILDTYPE := Synthetic
DERP_BUILD_ZIP_TYPE := VANILLA
AOSIP_BUILD_VERSION := Quinque-10.0

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := whyred
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := derp_whyred
PRODUCT_MODEL := Redmi Note 5 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := whyred

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="whyred-user 9 PKQ1.180904.001 20.4.27 release-keys"

BUILD_FINGERPRINT := google/coral/coral:10/QQ3A.200605.001/6392402:user/release-keys
