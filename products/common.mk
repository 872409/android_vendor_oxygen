#
# Set ro.modversion
# 
ifdef OXYGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Oxygen-1-$(shell date +%m%d%Y)-NIGHTLY
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Oxygen-1.0.1
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.com.android.dataroaming=false \
    persist.adb.notify=0

# Common oxygen overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/oxygen/overlay

OXYGEN_WITH_GOOGLE:=true

PRODUCT_COPY_FILES += \
    vendor/oxygen/oxygen-updater/OxygenUpdater.apk:system/app/OxygenUpdater.apk \
    vendor/oxygen/prebuilt/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/oxygen/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/oxygen/prebuilt/etc/hosts:system/etc/hosts \
    vendor/oxygen/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    vendor/oxygen/prebuilt/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/oxygen/prebuilt/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/oxygen/prebuilt/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

ifdef OXYGEN_WITH_GOOGLE
    PRODUCT_COPY_FILES += \
        vendor/oxygen/proprietary/com.google.android.maps.jar:./system/framework/com.google.android.maps.jar \
        vendor/oxygen/proprietary/com.google.android.maps.xml:./system/etc/permissions/com.google.android.maps.xml \
        vendor/oxygen/proprietary/features.xml:./system/etc/permissions/features.xml \
        vendor/oxygen/proprietary/Gmail.apk:./system/app/Gmail.apk \
        vendor/oxygen/proprietary/GoogleBackupTransport.apk:./system/app/GoogleBackupTransport.apk \
        vendor/oxygen/proprietary/GoogleCalendarSyncAdapter.apk:./system/app/GoogleCalendarSyncAdapter.apk \
        vendor/oxygen/proprietary/GoogleContactsSyncAdapter.apk:./system/app/GoogleContactsSyncAdapter.apk \
        vendor/oxygen/proprietary/GoogleServicesFramework.apk:./system/app/GoogleServicesFramework.apk \
        vendor/oxygen/proprietary/LatinImeTutorial.apk:./system/app/LatinImeTutorial.apk \
        vendor/oxygen/proprietary/Maps.apk:./system/app/Maps.apk \
        vendor/oxygen/proprietary/MarketUpdater.apk:./system/app/MarketUpdater.apk \
        vendor/oxygen/proprietary/MediaUploader.apk:./system/app/MediaUploader.apk \
        vendor/oxygen/proprietary/NetworkLocation.apk:./system/app/NetworkLocation.apk \
        vendor/oxygen/proprietary/SetupWizard.apk:./system/app/SetupWizard.apk \
        vendor/oxygen/proprietary/Talk.apk:./system/app/Talk.apk \
        vendor/oxygen/proprietary/Vending.apk:./system/app/Vending.apk \
        vendor/oxygen/proprietary/YouTube.apk:./system/app/YouTube.apk
else
    PRODUCT_PACKAGES += \
        Provision \
        GoogleSearch
endif

ifdef OXYGEN_WITH_THEME
	PRODUCT_PACKAGE_OVERLAYS += vendor/oxygen/theme
endif

PRODUCT_COPY_FILES += \
    vendor/oxygen/misc/Superuser.apk:./system/app/Superuser.apk \
    vendor/oxygen/misc/ZeamLauncher.apk:./system/app/ZeamLauncher.apk \
    vendor/oxygen/misc/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/oxygen/misc/LatinIME.apk:system/app/LatinIME.apk
