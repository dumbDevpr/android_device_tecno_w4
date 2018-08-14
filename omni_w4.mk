#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, device/tecno/w4/full_w4.mk)

PRODUCT_NAME := omni_w4

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/fstab.mt6580:root/fstab.mt6580 \
    $(LOCAL_PATH)/recovery/root/init.mt6580.rc:root/init.mt6580.rc \
		$(LOCAL_PATH)/recovery/root/init.mt6580.usb.rc:root/init.mt6580.usb.rc \
		$(LOCAL_PATH)/recovery/root/init.project.rc:root/init.project.rc \
		$(LOCAL_PATH)/recovery/root/init.mt6580.usb.rc:root/init.mt6580.usb.rc \
    $(LOCAL_PATH)/recovery/root/meta_init.rc:root/meta_init.rc \
		$(LOCAL_PATH)/recovery/root/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.mt6580.rc:root/ueventd.mt6580.rc

#Allow_missing_dependencies
ALLOW_MISSING_DEPENDENCIES=true
