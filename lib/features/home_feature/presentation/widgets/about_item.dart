import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/get_primary_color.dart';
import 'package:personal_portfolio/core/utils/locale_handler.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/responsive_layout.dart';

class AboutItems extends StatelessWidget {
  const AboutItems({super.key});

  @override
  Widget build(final BuildContext context) {
    return ResponsiveLayout(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutItem(
              title: t.birthday,
              value: t.myBirthday,
            ),
            AboutItem(
              title: t.website,
              value: 'https://sample-site.com/',
              forceLtrValue: true,
            ),
            AboutItem(
              title: t.phone,
              value: '+44 123 455455',
              forceLtrValue: true,
            ),
            AboutItem(
              title: t.city,
              value: t.myCity,
              forceLtrValue: true,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutItem(
              title: t.age,
              value: '${DateTime.now().year - 1998}',
            ),
            AboutItem(
              title: t.degree,
              value: t.myDegree,
            ),
            AboutItem(
              title: t.email,
              value: 'ales.dev@gmail',
              forceLtrValue: true,
            ),
            AboutItem(
              title: t.freelance,
              value: t.available,
            ),
          ],
        ),
      ],
    );
  }
}

class AboutItem extends StatelessWidget {
  const AboutItem({
    super.key,
    required this.title,
    required this.value,
    this.forceLtrValue = false,
  });

  final String title;
  final String value;
  final bool? forceLtrValue;

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.padding),
      child: Row(
        children: [
          Icon(
            Icons.chevron_right,
            size: 24,
            color: getPrimaryColor(context),
          ),
          const AppHSpace(),
          Text(
            '$title:  ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Directionality(
            textDirection: forceLtrValue!
                ? TextDirection.ltr
                : checkEnState(context)
                    ? TextDirection.ltr
                    : TextDirection.rtl,
            child: Text(
              value,
            ),
          ),
        ],
      ),
    );
  }
}
