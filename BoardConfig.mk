#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/beryllium

# Assert
TARGET_OTA_ASSERT_DEVICE := beryllium

# Kernel
TARGET_KERNEL_CONFIG := beryllium_defconfig

# Inherit from the proprietary version
-include vendor/xiaomi/beryllium/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# TWRP Support
ifeq ($(WITH_TWRP),true)
-include $(DEVICE_PATH)/twrp.mk
endif


#TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_INCLUDE_CRYPTO := true
PLATFORM_SECURITY_PATCH := 2029-10-01
TARGET_HW_DISK_ENCRYPTION := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
