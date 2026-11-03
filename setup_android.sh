#!/usr/bin/env bash
# Generates the android/ folder (Flutter template), allows internet access and names the app.
set -e
cd "$(dirname "$0")"
if [ ! -d android ]; then
  tmp="$(mktemp -d)"
  flutter create --platforms=android --project-name conwi_inventory --org ph.conwi "$tmp/app"
  cp -r "$tmp/app/android" ./android
fi
M=android/app/src/main/AndroidManifest.xml
grep -q 'android.permission.INTERNET' "$M" || \
  sed -i 's#<application#<uses-permission android:name="android.permission.INTERNET"/>\n    <application#' "$M"
sed -i 's#android:label="[^"]*"#android:label="conwiInventory"#' "$M"
