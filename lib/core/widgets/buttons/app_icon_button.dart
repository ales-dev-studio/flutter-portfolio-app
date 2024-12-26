import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.isFilled = false,
    this.isBordered = false,
    this.iconColor,
  });

  final GestureTapCallback? onPressed;
  final IconData icon;
  final bool isFilled;
  final bool isBordered;
  final Color? iconColor;

  @override
  Widget build(final BuildContext context) {
    return isFilled
        ? IconButton.filled(
            isSelected: true,
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: iconColor,
            ),
          )
        : isBordered
            ? IconButton.outlined(
                isSelected: false,
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  color: iconColor,
                ),
              )
            : IconButton(
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  color: iconColor,
                ),
              );
  }
}
