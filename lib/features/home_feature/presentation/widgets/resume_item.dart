import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/app_svg_viewer.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_button.dart';

class ResumeItem extends StatelessWidget {
  const ResumeItem({
    super.key,
    required this.logo,
    required this.title,
    required this.workTime,
    required this.description,
    required this.projectLink,
  });

  final String logo;
  final String title;
  final String workTime;
  final String description;
  final String projectLink;

  @override
  Widget build(final BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: AppSvgViewer(
            path: logo,
            size: 60,
            setDefaultColor: false,
          ),
          title: Text(title),
          subtitle: Opacity(
            opacity: 0.8,
            child: Text(workTime),
          ),
          trailing: SizedBox(
            width: 100,
            child: AppButton(title: t.view, onPressed: () {}),
          ),
        ),
        Row(
          children: [
            const SizedBox(width: 80.0),
            Expanded(
              child: Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: Dimens.largePadding),
          ],
        ),
        const AppVSpace(),
      ],
    );
  }
}
