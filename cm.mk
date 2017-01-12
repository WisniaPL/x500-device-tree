$(call inherit-product, device/LeTV/x500/full_x500.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x500
PRODUCT_NAME := cm_x500
PRODUCT_BRAND := LeTV
PRODUCT_MODEL := LeTV x500
PRODUCT_MANUFACTURER := LeTV
