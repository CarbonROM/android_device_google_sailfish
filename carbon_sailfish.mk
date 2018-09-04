# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:9/PPR2.180905.006/4945130:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 9 PPR2.180905.006 4945130 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="shagbag913"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
