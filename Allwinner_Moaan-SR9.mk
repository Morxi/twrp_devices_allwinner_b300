$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)


PRODUCT_COPY_FILES += device/${Allwinner}/${Moaan-SR9}/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := ${Moaan-SR9}
PRODUCT_NAME  :=  Allwinner_${Moaan-SR9}
PRODUCT_BRAND := ${Allwinner}
PRODUCT_MODEL := Moaan-SR9
PRODUCT_MANUFACTURER := Allwinner

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Allwinner/virgo_perf1/virgo-perf1:8.1.0/OPM1.171019.026/20201217-192614:user/test-keys" \
    PRIVATE_BUILD_DESC="virgo_perf1-user 8.1.0 OPM1.171019.026 20201217-192614 test-keys"