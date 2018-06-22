# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common CM stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Call device specific makefile
$(call inherit-product, device/highscreen/giraffe/lineage_giraffe.mk)

LOCAL_PATH := device/highscreen/giraffe

# Common CM stuff
CM_BUILD := giraffe

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_giraffe
PRODUCT_DEVICE := giraffe
PRODUCT_BRAND := Highscreen
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := Zera F

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Release name
PRODUCT_RELEASE_NAME := Zera F
