import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformChecker {
  static bool isIOS(final BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS;
  }

  static bool isAndroid(final BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.android;
  }

  static bool isWeb(final BuildContext context) {
    return kIsWeb;
  }

  static bool isLinux(final BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.linux;
  }

  static bool isMacOS(final BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.macOS;
  }

  static bool isWindows(final BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.windows;
  }
}
