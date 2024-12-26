import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/utils/get_primary_color.dart';

class AppTitleText extends StatelessWidget {
  const AppTitleText(this.text, {super.key});

  final String? text;

  @override
  Widget build(final BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(
        color: getPrimaryColor(context),
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    );
  }
}
