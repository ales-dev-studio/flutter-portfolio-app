import 'dart:async';

import 'package:flutter/material.dart';

/// Debouncing is needed when
/// there is a possibility of multiple calls to a method
/// being made within a short duration of each other,
/// and it's desirable that only the last of those calls
/// actually invoke the target method.

class DeBouncer {

  DeBouncer({this.milliseconds});
  final int? milliseconds;
  VoidCallback? action;
  Timer? _timer;

  void run(final VoidCallback action) {
    if (null != _timer) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds!), action);
  }
}
