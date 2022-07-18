#!/system/bin/sh
MODPATH="/data/adb/modules/thermal-mod"
device="$(getprop ro.product.device)"
version="$(getprop ro.vendor.build.version.release)"
if [[ ! -d "$MODPATH/"$device"_$version" ]]; then
    exit 1
fi
rm -rf "$MODPATH/system"
cp -r "$MODPATH/"$device"_$version" "$MODPATH/system"
rm -rf "$MODPATH/"$device"_$version"
rm -rf "$MODPATH/service.sh"
cp -r "$MODPATH/service$version.sh" "$MODPATH/service.sh"
rm -rf "$MODPATH/service$version.sh"