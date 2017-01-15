#!/system/bin/sh

ksm_enabled=`getprop ro.config.ksm`

if [ "$ksm_enabled" != true ]; then
	echo "0" > /sys/kernel/mm/ksm/run
fi

