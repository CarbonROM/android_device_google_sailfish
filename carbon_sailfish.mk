# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit aosp_sailfish
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

-include device/google/marlin/sailfish/device-carbon.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:8.0.0/OPR3.170623.008/4294783:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 8.0.0 OPR3.170623.008 4294783 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="Myself5"

$(call inherit-product-if-exists, vendor/google/sailfish/device-vendor-sailfish.mk)
