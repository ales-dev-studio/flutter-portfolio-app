import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/gen/assets.gen.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/lottie_viewer.dart';
import 'package:personal_portfolio/core/widgets/typography/app_title_text.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return AppScaffold(
      smallBody: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieViewer(
              path: Assets.animations.notFound,
              width: 200.0,
              height: 200.0,
            ),
            const AppVSpace(space: Dimens.largePadding),
            AppTitleText(t.notFound),
          ],
        ),
      ),
    );
  }
}
