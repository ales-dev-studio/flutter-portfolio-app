import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_outlined_button.dart';

class AppNoInternet extends StatelessWidget {
  const AppNoInternet({
    super.key,
    required this.onReloadButtonTap,
  });

  final GestureTapCallback onReloadButtonTap;

  @override
  Widget build(final BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            t.noInternet,
            textAlign: TextAlign.center,
          ),
          const AppVSpace(),
          AppOutlinedButton(
            onPressed: onReloadButtonTap,
            title: t.tryAgain,
            icon: Icons.refresh,
          ),
        ],
      ),
    );
  }
}
