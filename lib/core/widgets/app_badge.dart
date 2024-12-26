import 'package:flutter/material.dart';

class AppBadge extends StatelessWidget {

  const AppBadge({
    super.key,
    this.count,
    required this.icon,
    this.iconColor,
  });
  final int? count;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(final BuildContext context) {
    return count == null
        ? Badge(
            child: Container(
              margin: const EdgeInsets.only(top: 3.0),
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
          )
        : Badge.count(
            count: count!,
            child: Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
          );
  }
}
