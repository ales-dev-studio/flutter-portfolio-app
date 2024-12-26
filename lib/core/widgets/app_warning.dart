import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/colors.dart';

import 'package:personal_portfolio/core/theme/dimens.dart';

class AppWarning extends StatelessWidget {
  const AppWarning({
    super.key,
    this.warningText,
    this.color,
    this.icon = Icons.warning_amber_rounded,
    this.centerAlignment = false,
    this.hasBackgroundColor = true,
    this.verticalMargin = Dimens.largePadding,
    this.isJustify = true,
    this.padding,
    this.child,
  });

  final String? warningText;
  final Color? color;
  final IconData icon;
  final bool centerAlignment;
  final bool hasBackgroundColor;
  final double? verticalMargin;
  final double? padding;
  final bool isJustify;
  final Widget? child;

  @override
  Widget build(final BuildContext context) {
    return Container(
      decoration: hasBackgroundColor
          ? BoxDecoration(
              color: color == null
                  ? AppColors.lightRed.withOpacity(0.08)
                  : color!.withOpacity(0.08),
              borderRadius: const BorderRadius.all(
                Radius.circular(Dimens.corners),
              ),
            )
          : null,
      margin: EdgeInsets.symmetric(vertical: verticalMargin!),
      padding: EdgeInsets.all(padding ?? Dimens.largePadding),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: centerAlignment
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                color: color ?? AppColors.lightRed,
              ),
              const SizedBox(width: Dimens.padding),
              Flexible(
                child: Text(
                  warningText ?? '',
                  style: TextStyle(
                    color: color ?? AppColors.lightRed,
                    overflow: TextOverflow.visible,
                  ),
                  textAlign: isJustify ? TextAlign.justify : TextAlign.start,
                ),
              ),
            ],
          ),
          if (child != null) child!,
        ],
      ),
    );
  }
}
