#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay-lineage

# ANGLE - Almost Native Graphics Layer Engine
PRODUCT_PACKAGES += \
    ANGLE

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.mep.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.mep.xml \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk

# Build necessary packages for vendor

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth-V1-ndk.vendor

# Codec2
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.0.vendor \
    libexynosv4l2

# Confirmation UI
PRODUCT_PACKAGES += \
    android.hardware.confirmationui-V1-ndk.vendor

# ContextHub
PRODUCT_PACKAGES += \
    android.hardware.contexthub-V3-ndk.vendor

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_PACKAGES += \
    android.hardware.biometrics.common-V3-ndk.vendor

# Graphics
PRODUCT_PACKAGES += \
    libEGL_angle \
    libGLESv1_CM_angle \
    libGLESv2_angle

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport.vendor

# Neural Networks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks-V4-ndk.vendor

# Keymint
PRODUCT_PACKAGES += \
    libcppbor.vendor \
    libnos.vendor

# Powerstats
PRODUCT_PACKAGES += \
    pixelpowerstats_provider_aidl_interface-cpp.vendor

# RIL
PRODUCT_PACKAGES += \
    hardware.google.ril_ext-V1-ndk.vendor \
    modem_clock_manager.vendor

# Sensors
PRODUCT_PACKAGES += \
    sensors.dynamic_sensor_hal

# Trusty
PRODUCT_PACKAGES += \
    libtrusty_metrics.vendor

# Misc
PRODUCT_PACKAGES += \
    libjson.vendor \
    libziparchive.vendor \
    libevent.vendor
