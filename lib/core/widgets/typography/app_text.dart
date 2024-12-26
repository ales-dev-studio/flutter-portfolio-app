import 'package:flutter/material.dart';

class AppText extends StatelessWidget {

  const AppText(
    this.text, {
    super.key,
    this.textAlign,
    this.style,
    this.maxLines,
    this.textOverflow,
    this.textDirection,
  });
  final String? text;
  final TextAlign? textAlign;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final TextDirection? textDirection;

  @override
  Widget build(final BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Text(
      text ?? '',
      style: style ?? textTheme.bodyMedium,
      textAlign: textAlign ?? TextAlign.justify,
      maxLines: maxLines,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      textDirection: textDirection,
    );
  }
}
