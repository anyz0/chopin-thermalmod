stop logd
echo 3 > /proc/cpufreq/cpufreq_power_mode
echo 1 > /sys/devices/system/cpu/sched/sched_boost
chmod 0444 /sys/devices/system/cpu/sched/sched_boost
echo 0 > /sys/kernel/eara_thermal/enable
echo always_on > /sys/devices/platform/13000000.mali/power_policy
sleep 37
settings put system pointer_speed 1
settings put system speed_mode 1
echo 1 > /proc/cpufreq/cpufreq_cci_mode
chmod 0444 /proc/cpufreq/cpufreq_cci_mode
