# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x500
PRODUCT_NAME := lineage_x500
PRODUCT_BRAND := leeco
PRODUCT_MODEL := leeco x500
PRODUCT_MANUFACTURER := leeco
PRODUCT_RELEASE_NAME := x500
PRODUCT_RESTRICT_VENDOR_FILES := false
