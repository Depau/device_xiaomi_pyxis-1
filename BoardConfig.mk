#
# Copyright (C) 2019 The PixelExperience Project
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

# Inherit from sdm710-common
-include device/xiaomi/sdm710-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/pyxis

# Assert
TARGET_OTA_ASSERT_DEVICE := pyxis

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/framework_manifest.xml

# Kernel
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_CONFIG := pyxis_defconfig

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384

# NFC
TARGET_USES_NQ_NFC := true
BOARD_NFC_CHIPSET := pn553

# Power
TARGET_TAP_TO_WAKE_NODE := "/dev/input/event2"

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from the proprietary version
-include vendor/xiaomi/pyxis/BoardConfigVendor.mk

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_pyxis
TARGET_RECOVERY_DEVICE_MODULES := libinit_pyxis

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
