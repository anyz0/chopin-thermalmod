#!/sbin/sh
device="$(getprop ro.product.device)"
version="$(getprop ro.vendor.build.version.release)"
ui_print ""
ui_print "- Checking device..."
sleep 1
ui_print "- $device"
if [[ "$device" != "chopin" ]]; then
    ui_print "- Unsupported device: $device"
    rm -rf "$MODPATH"
    exit 1
fi
ui_print "- Checking Android version..."
sleep 2
ui_print "- $version"
if [[ ! -d "$MODPATH/"$device"_$version" ]]; then
    ui_print "- Android $version is not supported!"
    rm -rf "$MODPATH"
    exit 1
fi
ui_print ""
ui_print "- Installing for $device Android $version"