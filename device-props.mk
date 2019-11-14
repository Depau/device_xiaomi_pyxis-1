# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.cfa.thres.front=0 \
    persist.camera.cfa.thres.rear=200 \
    persist.camera.sat.fallback.dist=28 \
    persist.camera.sat.fallback.dist.d=5 \
    persist.camera.sat.fallback.luxindex=230 \
    persist.camera.sat.fallback.lux.d=50

# Display density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480

# Display features
PRODUCT_PROPERTY_OVERRIDES += \
    ro.display.type=oled \
    ro.displayfeature.histogram.enable=true \
    ro.eyecare.brightness.level=5 \
    ro.eyecare.brightness.threshold=11 \
    ro.hist.brightness.threshold=7 \
    sys.displayfeature_hidl=true \
    sys.displayfeature.hbm.enable=true

# FOD
PRODUCT_PROPERTY_OVERRIDES +=  \
    persist.vendor.sys.fp.fod.location.X_Y=448,1938 \
    persist.vendor.sys.fp.fod.size.width_height=185,185 \
    ro.hardware.fp.fod=true

# NFC
PRODUCT_PROPERTY_OVERRIDES +=  \
    ro.hardware.nfc_nci=nqx.default
    ro.nfc.port=I2C

# SSR
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ssr.enable_ramdumps=0 \
    persist.vendor.ssr.restart_level=ALL_ENABLE
