import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/check_desktop_size.dart';
import 'package:personal_portfolio/core/utils/sized_context.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';

class SkillProgressBarItems extends StatelessWidget {
  const SkillProgressBarItems({super.key});

  @override
  Widget build(final BuildContext context) {
    if (checkDesktopSize(context)) {
      return const Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: SkillProgressBar(
                  title: 'Dart',
                  percentage: 100.0,
                ),
              ),
              Expanded(
                child: SkillProgressBar(
                  title: 'Flutter',
                  percentage: 90.0,
                ),
              ),
            ],
          ),
          AppVSpace(),
          Row(
            children: [
              Expanded(
                child: SkillProgressBar(
                  title: 'Android / Kotlin',
                  percentage: 70.0,
                ),
              ),
              Expanded(
                child: SkillProgressBar(
                  title: 'Swift',
                  percentage: 50.0,
                ),
              ),
            ],
          ),
          AppVSpace(),
          Row(
            children: [
              Expanded(
                child: SkillProgressBar(
                  title: 'UI/UX Design',
                  percentage: 80.0,
                ),
              ),
              Expanded(
                child: SkillProgressBar(
                  title: 'Django',
                  percentage: 80.0,
                ),
              ),
            ],
          ),
          AppVSpace(),
          Row(
            children: [
              Expanded(
                child: SkillProgressBar(
                  title: 'RESTFULL APIs ',
                  percentage: 100.0,
                ),
              ),
              Expanded(
                child: SkillProgressBar(
                  title: 'Version control',
                  percentage: 70.0,
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      return const Column(
        children: [
          SkillProgressBar(
            title: 'Dart',
            percentage: 100.0,
          ),
          SkillProgressBar(
            title: 'Flutter',
            percentage: 80.0,
          ),
          SkillProgressBar(
            title: 'Android / Kotlin',
            percentage: 70.0,
          ),
          SkillProgressBar(
            title: 'Swift',
            percentage: 50.0,
          ),
          SkillProgressBar(
            title: 'UI/UX Design',
            percentage: 80.0,
          ),
          SkillProgressBar(
            title: 'Django',
            percentage: 80.0,
          ),
          SkillProgressBar(
            title: 'RESTFULL APIs ',
            percentage: 100.0,
          ),
          SkillProgressBar(
            title: 'Version control',
            percentage: 70.0,
          ),
        ],
      );
    }
  }
}

class SkillProgressBar extends StatelessWidget {
  const SkillProgressBar({
    super.key,
    required this.title,
    required this.percentage,
  });

  final String title;
  final double percentage;

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.largePadding,
      ),
      child: SizedBox(
        width:
            checkDesktopSize(context) ? context.widthPx / 2 : context.widthPx,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Text('$percentage%'),
              ],
            ),
            const AppVSpace(
              space: Dimens.mediumPadding,
            ),
            LinearProgressIndicator(
              value: percentage / 100,
              borderRadius: BorderRadius.circular(100),
              minHeight: 8.0,
            ),
            const AppVSpace(),
          ],
        ),
      ),
    );
  }
}
