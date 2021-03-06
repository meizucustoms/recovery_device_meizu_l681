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

# Prebuilt kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/kernel:kernel

# Ramdisk
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/rootdir/fstab.mt6755:root/fstab.mt6755 \
    $(LOCAL_PATH)/rootdir/init.recovery.mt6755.rc:root/init.recovery.mt6755.rc

# F2FS
PRODUCT_PACKAGES += \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
