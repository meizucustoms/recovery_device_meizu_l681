#
# Copyright (C) 2015-2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Device path
LOCAL_PATH := device/meizu/l681

# Platform
TARGET_BOARD_PLATFORM := mt6755

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_BOARD_PLATFORM_GPU := mali-t860mp2
TARGET_USES_64_BIT_BINDER := true

# Architecture Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

# Partitions informations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27879521280
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true
BOARD_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Kernel informations
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_MKBOOTIMG_ARGS := --board 1472609974 --ramdisk_offset 0x04f88000 --second_offset 0x00e88000 --tags_offset 0x03f88000

# Kernel properties
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilts/kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_CONFIG := l681-twrp_defconfig
TARGET_KERNEL_SOURCE := kernel/meizu/l681
LZMA_RAMDISK_TARGETS := recovery

# Platform
TARGET_BOOTLOADER_BOARD_NAME := mt6755

# Images
TARGET_NO_BOOTLOADER := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# TWRP
TW_FORCE_USE_BUSYBOX := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
TW_DEFAULT_BRIGHTNESS := 80
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXCLUDE_SUPERSU := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_NEW_ION_HEAP := true
TW_NO_SCREEN_BLANK := true
TW_THEME := portrait_hdpi
TWHAVE_SELINUX := true
TW_NO_EXFAT_FUSE := true
TW_DEFAULT_ROTATION := 180
BOARD_HAS_FLIPPED_SCREEN := true

# Kernel
TARGET_KMODULES := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file
