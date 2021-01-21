#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit common config stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_mini.mk)

# Inherit from mooneye device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := mobvoi
PRODUCT_DEVICE := mooneye
PRODUCT_MANUFACTURER := mobvoi
PRODUCT_NAME := full_mooneye
PRODUCT_MODEL := TicWatch E

PRODUCT_GMS_CLIENTID_BASE := android-mobvoi
TARGET_VENDOR := mobvoi
TARGET_VENDOR_PRODUCT_NAME := mooneye
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="mooneye-user 8.0.0 OWDR.180307.010 4736830 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := mobvoi/mooneye/mooneye:8.0.0/OWDR.180307.010/4736830:user/release-keys