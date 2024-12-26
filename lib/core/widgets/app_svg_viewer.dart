import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/core/theme/colors.dart';
import 'package:personal_portfolio/core/utils/check_theme_status.dart';

class AppSvgViewer extends StatelessWidget {
  const AppSvgViewer({
    super.key,
    required this.path,
    this.size,
    this.color,
    this.setDefaultColor = true,
    this.fit,
  });

  final String path;
  final double? size;
  final Color? color;
  final bool setDefaultColor;
  final BoxFit? fit;

  @override
  Widget build(final BuildContext context) {
    return SvgPicture.asset(
      path,
      width: size ?? 50,
      height: size ?? 50,
      colorFilter: setDefaultColor
          ? ColorFilter.mode(
              checkDarkMode(context) ? AppColors.white : AppColors.black,
              BlendMode.srcIn,
            )
          : color == null
              ? null
              : ColorFilter.mode(
                  color!,
                  BlendMode.srcIn,
                ),
      fit: fit ?? BoxFit.contain,
    );
  }
}
