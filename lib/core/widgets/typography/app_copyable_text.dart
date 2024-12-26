import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';

class AppCopyableText extends StatelessWidget {
  const AppCopyableText({
    super.key,
    required this.text,
    this.style,
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: text));
        showSnackBar(t.copied);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            text,
            style: style ??
                const TextStyle(
                  decoration: TextDecoration.underline,
                ),
          ),
          const SizedBox(width: Dimens.padding),
          const Icon(Icons.copy, size: 18),
        ],
      ),
    );
  }
}
