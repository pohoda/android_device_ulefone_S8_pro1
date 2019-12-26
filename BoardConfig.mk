LOCAL_PATH := device/ulefone/S8_Pro

# type (yes if MTK - no if other)
MEDIATEK_TYPE := yes

# support 64bit (yes if 64bit - no if 32bit)
MTK_K64_SUPPORT := yes

# Platform
TARGET_BOOTLOADER_BOARD_NAME := S8_Pro
TARGET_BOARD_PLATFORM := mt6737m

# Architecture

ARCH := arm64
TARGET_ARCH := arm64
# TARGET_BUILD_VARIANT := eng
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := arm64-v8a
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI),$(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true

BOARD_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
BOARD_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# Partitions & Kernel
BOARD_FLASH_BLOCK_SIZE :=	131072
BOARD_BOOTIMAGE_PARTITION_SIZE :=	16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=	16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE :=	3145728000
BOARD_CACHEIMAGE_PARTITION_SIZE :=	419430400
BOARD_USERDATAIMAGE_PARTITION_SIZE :=	1610612736
BOARD_PROTECT1IMAGE_PARTITION_SIZE :=	10485760
BOARD_PROTECT2IMAGE_PARTITION_SIZE :=	10485760
BOARD_KERNEL_CMDLINE := 'bootopt=64S3,32N2,64N2'
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_TAGS_OFFSET := 0x0df88000
BOARD_KERNEL_BASE := 0x40078000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_ARCH_MTK_PLATFORM := MT6735
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_USES_64_BIT_BINDER := true

BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --base $(BOARD_KERNEL_BASE) --cmdline "$(BOARD_KERNEL_CMDLINE)"
TARGET_KMODULES := true

# Other Partition
BLOCK_BASED_OTA := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_KERNEL_HAVE_NTFS := true
TARGET_KERNEL_HAVE_F2FS := true

#Mediatek flags
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkmtkbootimg.mk

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/fstab.mt6735
PRODUCT_COPY_FILES += $(LOCAL_PATH)/fstab.mt6735:root/fstab.mt6735

# TWRP recovery
RECOVERY_VARIANT                          := twrp
TW_DEFAULT_LANGUAGE						  := sk-SK
TW_EXTRA_LANGUAGES						  := true
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab
HAVE_LIBSELINUX                           := true
#TWHAVE_SELINUX                            := true
TW_INCLUDE_CRYPTO                         := true
#TW_NO_USB_STORAGE                         := false
RECOVERY_GRAPHICS_USE_LINELENGTH          := true
#TW_USE_TOOLBOX                            := false
RECOVERY_SDCARD_ON_DATA                   := true
TW_THEME                                  := portrait_hdpi
TW_DEFAULT_EXTERNAL_STORAGE               := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_SECONDARY_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file"

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# View button bootloader
TW_NO_REBOOT_BOOTLOADER := false
# View button downloadmode - true only samsung
TW_HAS_DOWNLOAD_MODE := true

# Default Brightness (TW_DEFAULT_BRIGHTNESS=255-->100%; TW_DEFAULT_BRIGHTNESS=218-->85%)
TW_DEFAULT_BRIGHTNESS := 210
TW_MAX_BRIGHTNESS := 255

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
BOARD_GLOBAL_CFLAGS += -DMTK_HARDWARE  -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
BOARD_GLOBAL_CPPFLAGS += -DMTK_HARDWARE  -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Flags
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Use ro.product.model
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# Exfat support
TW_NO_EXFAT := false
TW_NO_EXFAT_FUSE := false

# Internal storage
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"

# External storage
TW_EXTERNAL_STORAGE_PATH 				  := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT 		  := "external_sd"

# Name device MTP
TW_MTP_DEVICE							  := "/dev/mtp_usb"

# For Version TWRP
# TW_SPECIFIC_VERSION_STR 				  := "3.2.3-0 by EL"

# For time Zone Italy
# letny cas
# TW_TIME_ZONE_VAR                  := "CET-1CEST,M3.5.0,M10.5.0"
# TW_TIME_ZONE_GUISEL 			  := "CET-1;CEST,M3.5.0,M10.5.0"
# zimny(nie letny) cas
TW_TIME_ZONE_VAR                  := CET-1
TW_TIME_ZONE_GUISEL 			  := CET-1

TW_TIME_ZONE_GUIOFFSET 			  := 0
TW_TIME_ZONE_GUIDST 			  := 1

# For H24 hours
TW_MILITARY_TIME                              := 1

# For Screen_timeout_secs
TW_NO_SCREEN_TIMEOUT					  := true
# TW_SCREEN_TIMEOUT_SECS					  := 100
WITH_SU                                   := true
TWRP_INCLUDE_LOGCAT                       := true
TW_INCLUDE_FB2PN                          := true
#BOARD_SUPPRESS_SECURE_ERASE               := true
#BOARD_BML_BOOT 							  := dev/block/bml8
#BOARD_BML_RECOVERY 						  := dev/block/bml9
#BOARD_RECOVERY_DEFINES 					  := BOARD_BML_BOOT BOARD_BML_RECOVERY
BOARD_VNDK_RUNTIME_DISABLE                := true
#TW_NEVER_UNMOUNT_SYSTEM                   := true
#TW_OEM_BUILD                              := true  ### kvoli tomuto error hned na zaciatku
#TW_FORCE_CPUINFO_FOR_DEVICE_ID            := true
#TARGET_RECOVERY_DEVICE_MODULES := true

