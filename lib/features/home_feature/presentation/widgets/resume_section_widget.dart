import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/gen/assets.gen.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/widgets/app_divider.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/general_appbar.dart';
import 'package:personal_portfolio/core/widgets/lists/app_list_view_builder.dart';
import 'package:personal_portfolio/features/home_feature/presentation/widgets/resume_item.dart';

class ResumeSectionWidget extends StatelessWidget {
  const ResumeSectionWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final List<String> logos = [
      Assets.icons.logo1,
      Assets.icons.logo2,
      Assets.icons.logo3,
      Assets.icons.logo4,
      Assets.icons.logo5,
      Assets.icons.logo6,
      Assets.icons.logo1,
      Assets.icons.logo2,
      Assets.icons.logo3,
      Assets.icons.logo4,
    ];
    return AppScaffold(
      appBar: GeneralAppBar(
        title: t.resume,
      ),
      body: AppListViewBuilder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (final context, final index) {
          return ResumeItem(
            logo: logos[index],
            title: 'Sample test application',
            workTime: 'From 2020 until now',
            description: t.loremIpsum,
            projectLink: '',
          );
        },
        separatorBuilder: (final context, final index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.largePadding,
            ),
            child: AppDivider(),
          );
        },
      ),
    );
  }
}
