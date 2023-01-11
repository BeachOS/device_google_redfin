# Inherit some common stuff.
$(call inherit-product, vendor/beach/config/common.mk)

# Device specific overlay
DEVICE_PACKAGE_OVERLAYS += device/google/redfin/overlay-beach

# Inherit device configuration
$(call inherit-product, device/google/redfin/device-beach.mk)
$(call inherit-product, device/google/redbull/device-beach.mk)
$(call inherit-product, device/google/redfin/aosp_redfin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := beach_redfin
PRODUCT_MODEL := Pixel 5
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=redfin \
    PRIVATE_BUILD_DESC="redfin-user 13 TQ1A.230105.001 9292298 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:13/TQ1A.230105.001/9292298:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)
