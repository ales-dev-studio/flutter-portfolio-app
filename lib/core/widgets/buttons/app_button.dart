import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/sized_context.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color,
    this.icon,
    this.spaceBetween = true,
    this.verticalMargin = Dimens.padding,
  });

  final String? title;
  final Color? color;
  final GestureTapCallback? onPressed;
  final IconData? icon;
  final bool spaceBetween;
  final double verticalMargin;

  @override
  Widget build(final BuildContext context) {
    return Container(
      width: context.sizePx.width - Dimens.largePadding,
      height: 45.0,
      margin: EdgeInsets.symmetric(vertical: verticalMargin),
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: color == null
              ? null
              : MaterialStateProperty.all<Color>(
                  color!,
                ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.corners),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: spaceBetween
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            if (icon == null) const SizedBox.shrink() else Icon(icon, size: 20),
            Text(
              title ?? '',
            ),
            if (icon == null)
              const SizedBox.shrink()
            else
              const SizedBox(
                width: Dimens.largePadding,
              ),
          ],
        ),
      ),
    );
  }
}
