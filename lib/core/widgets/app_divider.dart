import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {

  const AppDivider({
    super.key,
    this.verticalDivider = false,
    this.width,
    this.height,
  });
  final bool verticalDivider;

  final double? width;
  final double? height;

  @override
  Widget build(final BuildContext context) {
    return verticalDivider
        ? VerticalDivider(
            width: width,
          )
        : Divider(
            height: height,
          );
  }
}
