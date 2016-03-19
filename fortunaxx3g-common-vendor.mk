# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := vendor/samsung/fortunaxx3g/overlay

# Include common blobs
$(call inherit-product, vendor/samsung/fortunaxx3g/fortunaxx3g-common-vendor-blobs.mk)

# Include fortunave3g blobs
ifneq ($(filter fortunave3g,$(TARGET_DEVICE)),)
$(call inherit-product, vendor/samsung/fortunaxx3g/fortunave3g-vendor-blobs.mk) 
endif

# Include fortuna3g blobs
ifneq ($(filter fortuna3g,$(TARGET_DEVICE)),)
$(call inherit-product, vendor/samsung/fortunaxx3g/fortuna3g-vendor-blobs.mk)
endif