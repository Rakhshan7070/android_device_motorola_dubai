#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Rising Flags
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_CORE_GMS_EXTRAS := true
 PRODUCT_PACKAGES += \
    Photos \
    MarkupGoogle \
    LatinIMEGooglePrebuilt \
    AiWallpapers \
    WallpaperEmojiPrebuilt \
    PrebuiltDeskClockGoogle \
    CalculatorGooglePrebuilt \
    CalendarGooglePrebuilt \
    Velvet

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=dubai_g \
    RISING_CHIPSET="SD 778G+" \
    RISING_MAINTAINER="Rakhshan"  \
    PRIVATE_BUILD_DESC="dubai_g-user 13 T1RDS33M.116-33-13-7 88ded release-keys"

BUILD_FINGERPRINT := motorola/dubai_g/dubai:13/T1RDS33M.116-33-13-7/88ded:user/release-keys
include vendor/lineage-priv/keys/keys.mk
