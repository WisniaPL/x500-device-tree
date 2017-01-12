# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/LeTV/x500/device.mk)

# Release name
PRODUCT_RELEASE_NAME := LeTV x500

PRODUCT_DEVICE := x500
PRODUCT_NAME := cm_x500
PRODUCT_BRAND := LeTV
PRODUCT_MODEL := LeTV x500
PRODUCT_MANUFACTURER := LeTV

# Boot animation
TARGET_SCREEN_HEIGHT      := 1920
TARGET_SCREEN_WIDTH       := 1080
TARGET_BOOTANIMATION_NAME := 1080

# LANGUAGE
PRODUCT_DEFAULT_LANGUAGE := ar
PRODUCT_DEFAULT_REGION   := EG
