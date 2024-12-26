import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/check_desktop_size.dart';
import 'package:personal_portfolio/core/utils/sized_context.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/general_appbar.dart';
import 'package:personal_portfolio/core/widgets/responsive_layout.dart';
import 'package:personal_portfolio/core/widgets/typography/app_title_text.dart';
import 'package:personal_portfolio/features/home_feature/presentation/widgets/about_item.dart';
import 'package:personal_portfolio/features/home_feature/presentation/widgets/profile_image.dart';
import 'package:personal_portfolio/features/home_feature/presentation/widgets/stats_item.dart';

class AboutSectionWidget extends StatelessWidget {
  const AboutSectionWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    return AppScaffold(
      appBar: GeneralAppBar(
        title: t.about,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.largePadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!checkDesktopSize(context))
                ProfileImage(size: context.widthPx),
              const AppVSpace(),
              AppTitleText(
                t.aboutTitle,
              ),
              const AppVSpace(),
              Text(
                t.aboutMeDescription,
                textAlign: TextAlign.justify,
              ),
              const AppVSpace(),
              ResponsiveLayout(
                crossAxisAlignment: checkDesktopSize(context)
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  if (checkDesktopSize(context))
                    const ProfileImage(size: 150.0),
                  if (checkDesktopSize(context))
                    const AppHSpace()
                  else
                    const AppVSpace(),
                  if (checkDesktopSize(context))
                    const Expanded(
                      child: AboutItems(),
                    )
                  else
                    const AboutItems(),
                ],
              ),
              const AppVSpace(
                space: Dimens.extraLargePadding,
              ),
              AppTitleText(
                t.stats,
              ),
              const StatItems(),
              const AppVSpace(),
            ],
          ),
        ),
      ),
    );
  }
}
