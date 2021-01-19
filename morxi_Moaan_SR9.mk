
#
# Copyright (C) 2018 The Android Open-Source Project
#                    The TwrpBuilder Open-Source Project
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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)


PRODUCT_COPY_FILES += device/Allwinner/Moaan_SR9/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := Moaan_SR9
PRODUCT_NAME  :=  morxi_Moaan_SR9
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := Moaan_SR9
PRODUCT_MANUFACTURER := Allwinner

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Allwinner/virgo_perf1/virgo-perf1:8.1.0/OPM1.171019.026/20201217-192614:user/test-keys" \
    PRIVATE_BUILD_DESC="virgo_perf1-user 8.1.0 OPM1.171019.026 20201217-192614 test-keys"