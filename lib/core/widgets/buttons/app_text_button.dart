import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';

class AppTextButton extends StatelessWidget {

  const AppTextButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color,
    this.icon,
    this.verticalMargin = Dimens.padding,
  });
  final String? title;
  final Color? color;
  final GestureTapCallback? onPressed;
  final IconData? icon;
  final double verticalMargin;

  @override
  Widget build(final BuildContext context) {
    return Container(
      height: 55.0,
      margin: EdgeInsets.symmetric(vertical: verticalMargin),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon == null) const SizedBox.shrink() else Icon(
                    icon,
                    size: 20,
                  ),
            if (icon == null) const SizedBox.shrink() else const AppHSpace(),
            Text(
              title ?? '',
            ),
            if (icon == null) const SizedBox.shrink() else const SizedBox(
                    width: Dimens.largePadding,
                  ),
          ],
        ),
      ),
    );
  }
}
