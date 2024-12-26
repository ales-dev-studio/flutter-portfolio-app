import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/get_primary_color.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/general_appbar.dart';
import 'package:personal_portfolio/core/widgets/lists/app_list_view_builder.dart';
import 'package:personal_portfolio/core/widgets/lists/app_single_child_scroll_view.dart';
import 'package:personal_portfolio/core/widgets/typography/app_title_text.dart';
import 'package:personal_portfolio/features/home_feature/presentation/widgets/skill_progress_bar.dart';

class SkillsSectionWidget extends StatelessWidget {
  const SkillsSectionWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final List<String> skillsList = [
      'Flutter (Android, iOS, Web)',
      'State Managements (Bloc, Provider, GetX)',
      'Clean architecture',
      'Ui design (Material and Cupertino)',
      'Backend (Django)',
      'API Integration (Rest API, Web socket)',
      'Version control systems (Git, Github, Gitlab)',
      'Design Principles (OOP, SOLID, Design Patterns, Dependency Injection)',
      'Firebase (Authentication, Push notification, FireStore, etc)',
      'Testing (unit test, widget test)',
      'Teamwork (Jira, Trello)',
    ];
    return AppScaffold(
      appBar: GeneralAppBar(
        title: t.skills,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimens.largePadding),
        child: AppSingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTitleText(t.coreSkills),
              const AppVSpace(),
              const SkillProgressBarItems(),
              const AppVSpace(
                space: Dimens.veryLargePadding,
              ),
              AppTitleText(t.allSkills),
              const AppVSpace(),
              AppListViewBuilder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: skillsList.length,
                itemBuilder: (final context, final index) {
                  return ListTile(
                    leading: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: getPrimaryColor(context),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      margin: const EdgeInsets.only(bottom: 4),
                    ),
                    title: Text(skillsList[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
