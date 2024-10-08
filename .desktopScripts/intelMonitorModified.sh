#!/bin/bash
DRM=/sys/class/drm/card0
HWMON=/sys/class/hwmon/hwmon5
while :
do
	POWER1=$(cat $HWMON/energy1_input)
	sleep 0.25
	POWER2=$(cat $HWMON/energy1_input)
	POWER=$((($POWER2 - $POWER1) / 252525))
	clear
	echo "============================="
	echo " "
	echo "Power Usage: $POWER Watts"
	echo "Voltage: $(cat $HWMON/in0_input) mV"
	echo "RPS ACT Freq: $(cat $DRM/gt/gt0/rps_act_freq_mhz) MHz"
	echo "Power Limit: $(($(cat $HWMON/power1_max) / 1000000)) Watts"
	echo "Is Throttling: $(cat $DRM/gt/gt0/throttle_reason_status)"
	echo " "
	echo "============================="
	echo " "
	echo "Throttling Reason Thermal: $(cat $DRM/gt/gt0/throttle_reason_thermal)"
	echo "Throttling Reason PL1: $(cat $DRM/gt/gt0/throttle_reason_pl1)"
	echo "Throttling Reason PL2: $(cat $DRM/gt/gt0/throttle_reason_pl2)"
	echo "Throttling Reason PL4: $(cat $DRM/gt/gt0/throttle_reason_pl4)"
	echo "Throttling Reason Prochot: $(cat $DRM/gt/gt0/throttle_reason_prochot)"
	echo "Throttling Reason Ratl: $(cat $DRM/gt/gt0/throttle_reason_ratl)"
	echo "Throttling Reason VR_TDC: $(cat $DRM/gt/gt0/throttle_reason_vr_tdc)"
	echo "Throttling Reason VR_THERMALERT: $(cat $DRM/gt/gt0/throttle_reason_vr_thermalert)"
	echo " "
	echo "============================="
	echo " "
	echo "Media RP0 Freq: $(cat $DRM/gt/gt0/media_RP0_freq_mhz) MHz"
	echo "Media RPn Freq: $(cat $DRM/gt/gt0/media_RPn_freq_mhz) MHz"
	echo "Media Freq Factor: $(cat $DRM/gt/gt0/media_freq_factor)"
	echo "Media Freq Factor Scale: $(cat $DRM/gt/gt0/media_freq_factor.scale)"
	echo "Punit REQ Freq: $(cat $DRM/gt/gt0/punit_req_freq_mhz) MHz"
	echo "RPS RP0 Freq: $(cat $DRM/gt/gt0/rps_RP0_freq_mhz) MHz"
	echo "RPS RP1 Freq: $(cat $DRM/gt/gt0/rps_RP1_freq_mhz) MHz"
	echo "RPS RPn Freq: $(cat $DRM/gt/gt0/rps_RPn_freq_mhz) MHz"
	echo "RPS ACT Freq: $(cat $DRM/gt/gt0/rps_act_freq_mhz) MHz"
	echo "RPS Boost Freq: $(cat $DRM/gt/gt0/rps_boost_freq_mhz) MHz"
	echo "RPS Current Freq: $(cat $DRM/gt/gt0/rps_cur_freq_mhz) MHz"
	echo "RPS Max Freq: $(cat $DRM/gt/gt0/rps_max_freq_mhz) MHz"
	echo "RPS Min Freq: $(cat $DRM/gt/gt0/rps_min_freq_mhz) MHz"
	echo " "
	echo "============================="
done
