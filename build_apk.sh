#!/usr/bin/env bash
# Local build: needs Flutter (stable) + Android SDK installed. Output: build/app/outputs/flutter-apk/app-release.apk
set -e
cd "$(dirname "$0")"
bash setup_android.sh
flutter pub get
dart run flutter_launcher_icons
flutter build apk --release --dart-define=API_URL="${API_URL:-https://conwiinventory.onrender.com}"
echo "APK: $(pwd)/build/app/outputs/flutter-apk/app-release.apk"
