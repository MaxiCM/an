# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := vendor/samsung/fortunave3g/overlay

PRODUCT_PACKAGES += \
    com.qualcomm.location

PRODUCT_PACKAGES += \
    libtime_genoff \
    TimeService

PRODUCT_PACKAGES += \
    libmm-abl

PRODUCT_PACKAGES += \
    libHevcSwDecoder

# Include non-open-source files
$(call inherit-product, vendor/samsung/fortunave3g/fortunave3g-common-vendor-blobs.mk)