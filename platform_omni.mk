# Copyright (C) 2014 The Android Open Source Project
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

SONY_ROOT = device/sony/kitakami-common/rootdir

# kernel
TARGET_KERNEL_SOURCE := kernel/sony/msm8994

# Common config
include device/sony/kitakami-common/platform.mk

# Snapdragon Camera
PRODUCT_PACKAGES += \
    SnapdragonCamera

# qseecomd
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/bin/init.qcom.qseecomd.sh:system/bin/init.qcom.qseecomd.sh

# Sensor multihal
PRODUCT_PACKAGES += \
    sensors.msm8994

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Copying files
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/twrp.fstab:recovery/root/etc/twrp.fstab

# TWRP
$(call inherit-product, device/sony/kitakami-common/twrp.mk)
