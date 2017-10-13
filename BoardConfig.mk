-include vendor/LeEco/X3/BoardConfigVendor.mk

LOCAL_PATH := device/LeEco/X3

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

USE_CAMERA_STUB := true

ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := mt6795

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# FIX Freezing
TARGET_NO_SENSOR_PERMISSION_CHECK := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# BOOTLOADER
TARGET_BOOTLOADER_BOARD_NAME := mt6795

# EXT4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
TARGET_KMODULES := true
BOARD_GLOBAL_CFLAGS += -DCOMPAT_SENSORS_M
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_DISABLE_HW_ID_MATCH_CHECK := true;

# Kernel

TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive androidboot.verifiedbootstate=green
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
	--base 0x40078000 \
	--pagesize 2048 \
	--kernel_offset 0x00008000 \
	--ramdisk_offset 0x03f88000 \
	--second_offset 0x00e88000 \
	--tags_offset 0x0df88000 \
	--board WisniaPL
#prebuilt
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
#source
TARGET_KERNEL_SOURCE := kernel/LeTV/x500
TARGET_KERNEL_CONFIG := x500_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

# build old-style zip files (required for ota updater)
BLOCK_BASED_OTA := false

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Display
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1
TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_mtk

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Offline charging
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Audio
BOARD_USES_MTK_AUDIO := true
BOARD_CONNECTIVITY_VENDOR := MediaTek
USE_XML_AUDIO_POLICY_CONF := 1

# RIL
BOARD_PROVIDES_RILD := true
BOARD_CONNECTIVITY_MODULE := conn_soc

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw
#TARGET_TAP_TO_WAKE_NODE := "/sys/devices/bus.2/11009000.I2C2/i2c-2/2-004b/input/input4/wake_gesture"

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P

# Bluetooth
MTK_BT_SUPPORT := yes
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true

# make_ext4fs requires numbers in dec format
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=1610612736
BOARD_CACHEIMAGE_PARTITION_SIZE:=134217728
BOARD_USERDATAIMAGE_PARTITION_SIZE:=1240465408
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
# Uncomment RECOVERY_VARIANT to build twrp
#RECOVERY_VARIANT=twrp

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/recovery.fstab
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP stuff
ifeq ($(RECOVERY_VARIANT), twrp)
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INCLUDE_CRYPTO := true
TW_NO_REBOOT_BOOTLOADER := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

TW_USE_TOOLBOX := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
DEVICE_RESOLUTION := 1080x1920
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_MAX_BRIGHTNESS := 255
TW_THEME := portrait_hdpi

TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"

else
# CWM
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
endif

# system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS := \
    device/LeEco/X3/sepolicy

# Legacy blobs
TARGET_NEEDS_TEXT_RELOCATIONS := true 

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_CAMERASERVICE_CLOSES_NATIVE_HANDLES := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_RED_LED_PATH	:= "/sys/class/leds/red"
BOARD_GREEN_LED_PATH	:= "/sys/class/leds/green"
BOARD_BLUE_LED_PATH	:= "/sys/class/leds/blue"

# SU
#export WITH_SU=true

# faster Bootanimation
TARGET_BOOTANIMATION_HALF_RES := true

# This is needed for us as it disables tcache, which is breaking camera.
MALLOC_SVELTE := true
BOARD_GLOBAL_CFLAGS += -DDECAY_TIME_DEFAULT=0
#BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO
#Hack for prebuilt kernel
ifeq ($(TARGET_DEVICE),X3)
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
$(shell touch $(OUT)/obj/KERNEL_OBJ/usr/export_includes)
endif

# Google properties overides
PRODUCT_PROPERTY_OVERRIDES += \
keyguard.no_require_sim=true \
ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
ro.com.google.clientidbase=android-google \
ro.com.android.wifi-watchlist=GoogleGuest \
ro.error.receiver.system.apps=com.google.android.gms \
ro.setupwizard.enterprise_mode=1 \
ro.com.android.dataroaming=false \
net.tethering.noprovisioning=true \
ro.setupwizard.rotation_locked=true
