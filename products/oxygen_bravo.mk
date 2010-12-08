# Inherit AOSP device configuration for bravo.
$(call inherit-product, device/htc/bravo/full_bravo.mk)

# Inherit some common oxygen stuff.
$(call inherit-product, vendor/oxygen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/oxygen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := oxygen_bravo
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := bravo
PRODUCT_MODEL := HTC Desire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=FRG83 PRODUCT_NAME=htc_bravo BUILD_FINGERPRINT=htc_wwe/htc_bravo/bravo/bravo:2.2/FRF91/226611:user/release-keys TARGET_BUILD_TYPE=userdebug BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="2.10.405.2 CL226611 release-keys"

PRODUCT_PACKAGES += \
    FM

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=vorkKernel_bravo_defconfig
