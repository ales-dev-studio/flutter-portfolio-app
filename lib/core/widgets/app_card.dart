import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    this.child,
    this.onTap,
    this.onDoubleTap,
    this.margin,
    this.padding,
    this.height,
    this.width,
    this.borderRadius,
    this.constraints,
    this.color,
    this.elevation,
    this.hasBorder = false,
  });

  final Widget? child;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onDoubleTap;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;
  final BoxConstraints? constraints;
  final Color? color;
  final double? elevation;
  final bool hasBorder;

  @override
  Widget build(final BuildContext context) {
    final BorderRadius cardBorderRadius = borderRadius ??
        BorderRadius.circular(
          Dimens.corners,
        );
    return Padding(
      padding: margin ??
          const EdgeInsets.all(
            Dimens.padding,
          ),
      child: ConstrainedBox(
        constraints: constraints ?? const BoxConstraints(),
        child: Card(
          color: color,
          elevation: elevation ?? 3.0,
          shape: hasBorder
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline.withOpacity(
                          0.7,
                        ),
                  ),
                  borderRadius: cardBorderRadius,
                )
              : RoundedRectangleBorder(
                  borderRadius: cardBorderRadius,
                ),
          margin: EdgeInsets.zero,
          child: InkWell(
            borderRadius: cardBorderRadius,
            onTap: onTap,
            onDoubleTap: onDoubleTap,
            child: SizedBox(
              height: height,
              width: width,
              child: Padding(
                padding: padding ??
                    const EdgeInsets.all(
                      Dimens.largePadding,
                    ),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
