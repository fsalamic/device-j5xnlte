# Audio 
PRODUCT_PROPERTY_OVERRIDES += \
	qcom.hw.aac.encoder=true

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
	ro.gps.agps_provider=1 \
	ro.pip.gated=0

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	persist.cne.feature=0 \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.radio.lte_vrte_ltd=1 \
	persist.radio.add_power_save=1 \
	persist.radio.sib16_support=1 \
	rild.libpath=/system/lib/libsec-ril.so \
	ro.telephony.samsung.realcall=true \
	ro.telephony.ril_class=SamsungQcomRIL \
	ro.use_data_netmgrd=false

# Volume
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.vc_call_vol_steps=15 \
	ro.config.media_vol_steps=30
