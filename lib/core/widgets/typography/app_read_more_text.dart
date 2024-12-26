import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/colors.dart';
import 'package:personal_portfolio/core/utils/check_theme_status.dart';
import 'package:readmore/readmore.dart';

class AppReadMoreText extends StatelessWidget {

  const AppReadMoreText(
    this.text, {
    super.key,
    this.textAlign,
    this.style,
    this.trimLines,
  });
  final String? text;
  final TextAlign? textAlign;
  final TextStyle? style;
  final int? trimLines;

  @override
  Widget build(final BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return ReadMoreText(
      text ?? '',
      style: style ?? textTheme.bodyMedium,
      textAlign: textAlign ?? TextAlign.justify,
      trimLines: trimLines ?? 2,
      trimMode: TrimMode.Line,
      trimCollapsedText: t.showMore,
      trimExpandedText: t.showLess,
      moreStyle: textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: checkDarkMode(context) ?
        AppColors.lightPrimaryColor :
        Theme.of(context).primaryColor,
      ),
      lessStyle: textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: checkDarkMode(context) ?
        AppColors.lightPrimaryColor :
        Theme.of(context).primaryColor,
      ),
    );
  }
}
