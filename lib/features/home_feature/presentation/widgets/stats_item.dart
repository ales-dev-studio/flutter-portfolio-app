import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/gen/assets.gen.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/check_desktop_size.dart';
import 'package:personal_portfolio/core/utils/get_primary_color.dart';
import 'package:personal_portfolio/core/utils/locale_handler.dart';
import 'package:personal_portfolio/core/utils/sized_context.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/app_svg_viewer.dart';
import 'package:personal_portfolio/core/widgets/responsive_layout.dart';

class StatItems extends StatelessWidget {
  const StatItems({super.key});

  @override
  Widget build(final BuildContext context) {
    return ResponsiveLayout(
      children: [
        StatsItem(
          title: t.happyClients,
          stat: '8',
          iconPath: Assets.icons.users,
        ),
        if (!checkDesktopSize(context)) const Divider(),
        StatsItem(
          title: t.projects,
          stat: '13',
          iconPath: Assets.icons.projectsList,
        ),
        if (!checkDesktopSize(context)) const Divider(),
        StatsItem(
          title: t.trainedStudent,
          stat: '5',
          iconPath: Assets.icons.users,
        ),
        if (!checkDesktopSize(context)) const Divider(),
        StatsItem(
          title: t.hoursOfSupport,
          stat: checkEnState(context) ? '+300' : '300+',
          iconPath: Assets.icons.cloack,
        ),
      ],
    );
  }
}

class StatsItem extends StatelessWidget {
  const StatsItem({
    super.key,
    required this.title,
    required this.stat,
    required this.iconPath,
  });

  final String title;
  final String stat;
  final String iconPath;

  @override
  Widget build(final BuildContext context) {
    return Container(
      width: checkSmallDeviceSize(context) ? context.widthPx : null,
      padding: const EdgeInsets.all(Dimens.largePadding),
      child: checkDesktopSize(context)
          ? Column(
              children: [
                AppSvgViewer(
                  path: iconPath,
                  size: 50,
                  setDefaultColor: false,
                  color: getPrimaryColor(context),
                ),
                const AppVSpace(),
                Text(
                  stat,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                const AppVSpace(
                  space: Dimens.padding,
                ),
                Text(
                  title,
                ),
              ],
            )
          : ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppSvgViewer(
                path: iconPath,
                size: 50,
                setDefaultColor: false,
                color: getPrimaryColor(context),
              ),
              title: Text(
                stat,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  height: 0,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.padding,
                ),
                child: Text(
                  title,
                ),
              ),
            ),
    );
  }
}
