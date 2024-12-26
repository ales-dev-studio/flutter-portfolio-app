import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/widgets/app_card.dart';

class AppContextMenu extends StatelessWidget {
  const AppContextMenu({
    super.key,
    this.width,
    this.height,
    this.onTap,
    required this.actions,
  });

  final double? width;
  final double? height;
  final GestureTapCallback? onTap;
  final List<Widget> actions;

  @override
  Widget build(final BuildContext context) {
    return SizedBox(
      width: width ?? 100,
      height: height ?? 100,
      child: CupertinoContextMenu(
        actions: actions,
        child: AppCard(
          onTap: onTap,
          margin: EdgeInsets.zero,
          child: const FlutterLogo(size: 200.0),
        ),
      ),
    );
  }
}
