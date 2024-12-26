#!/bin/bash

app="personal_portfolio"
version=$(grep "version" "pubspec.yaml" | cut -d ' ' -f 2)
versionNumber=$(echo "$version" | cut -d '+' -f 1)
buildNumber=$(echo "$version" | cut -d '+' -f 2)

flutter clean
flutter pub get

#flutter build apk --target-platform android-arm,android-arm64 --obfuscate --split-debug-info=obfuscate --release
flutter build apk --target-platform android-arm,android-arm64 --release

cd build/app/outputs/apk
