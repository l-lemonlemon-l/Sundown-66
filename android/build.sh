#!/usr/bin/env bash
# Builds Sundown66.apk from ../index.html.
# Needs (Ubuntu/Debian): sudo apt install aapt apksigner zipalign dalvik-exchange android-sdk-platform-23 default-jdk
set -euo pipefail
cd "$(dirname "$0")"
AJ=/usr/lib/android-sdk/platforms/android-23/android.jar
rm -rf build && mkdir -p build/assets build/obj
# the app page is the web page plus a flag that turns on app mode (full screen, touch, tilt)
sed 's|</head>|<script>window.SUNDOWN_APP=true</script></head>|' ../index.html > build/assets/index.html
javac -nowarn -source 8 -target 8 -bootclasspath "$AJ" -d build/obj src/com/sundown66/MainActivity.java
dalvik-exchange --dex --output=build/classes.dex build/obj
aapt package -f -0 arsc -M AndroidManifest.xml -S res -A build/assets -I "$AJ" -F build/app.unsigned.apk
(cd build && aapt add app.unsigned.apk classes.dex >/dev/null)
zipalign -f -p 4 build/app.unsigned.apk build/app.aligned.apk
KS=${KEYSTORE:-sundown.keystore}
[ -f "$KS" ] || keytool -genkeypair -keystore "$KS" -storepass sundown66 -keypass sundown66 -alias sundown -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Sundown 66"
apksigner sign --min-sdk-version 21 --ks "$KS" --ks-pass pass:sundown66 --key-pass pass:sundown66 --ks-key-alias sundown --out Sundown66.apk build/app.aligned.apk
echo "Built android/Sundown66.apk"
