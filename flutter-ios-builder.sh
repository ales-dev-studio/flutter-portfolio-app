#!/bin/bash

# Some variables inside ios/Runner.xcodeproj/project.pbxproj must be changed.
# There are three of each one.
#
# CURRENT_PROJECT_VERSION = "$(FLUTTER_BUILD_NUMBER)";
# MARKETING_VERSION = "$(FLUTTER_BUILD_NAME)";

flutter clean
flutter pub get

flutter build ipa --release --export-method=ad-hoc #--obfuscate --split-debug-info=obfuscate

open /Users/pickopack/StudioProjects/personal_portfolio/build/ios/ipa
