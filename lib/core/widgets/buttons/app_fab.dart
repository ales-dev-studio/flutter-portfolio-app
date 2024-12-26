import 'package:flutter/material.dart';

class AppFab extends StatelessWidget {

  const AppFab({
    super.key,
    this.onPressed,
    this.isExtended = false,
    required this.icon,
    this.label,
  });
  final GestureTapCallback? onPressed;
  final bool isExtended;
  final IconData icon;
  final String? label;

  @override
  Widget build(final BuildContext context) {
    return isExtended
        ? FloatingActionButton.extended(
            heroTag: null,
            onPressed: onPressed,
            icon: Icon(icon),
            label: Text(
              label ?? '',
            ),
          )
        : FloatingActionButton(
            heroTag: null,
            onPressed: onPressed,
            child: Icon(icon),
          );
  }
}
