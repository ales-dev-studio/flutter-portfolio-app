import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/check_desktop_size.dart';
import 'package:personal_portfolio/core/utils/get_primary_color.dart';
import 'package:personal_portfolio/core/widgets/app_card.dart';
import 'package:personal_portfolio/core/widgets/app_divider.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/app_text_form_field.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_button.dart';
import 'package:personal_portfolio/core/widgets/general_appbar.dart';
import 'package:personal_portfolio/core/widgets/lists/app_list_view.dart';

class ContactSectionWidget extends StatelessWidget {
  const ContactSectionWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    return AppScaffold(
      appBar: GeneralAppBar(
        title: t.contact,
      ),
      body: AppCard(
        margin: const EdgeInsets.all(Dimens.largePadding),
        padding: const EdgeInsets.all(
          Dimens.largePadding,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (checkDesktopSize(context))
              Row(
                children: [
                  Expanded(
                    child: AppTextFormField(
                      labelText: t.yourName,
                    ),
                  ),
                  const AppHSpace(),
                  Expanded(
                    child: AppTextFormField(
                      labelText: t.email,
                    ),
                  ),
                ],
              )
            else
              Column(
                children: [
                  AppTextFormField(
                    labelText: t.yourName,
                  ),
                  const AppVSpace(),
                  AppTextFormField(
                    labelText: t.email,
                  ),
                ],
              ),
            const AppVSpace(),
            AppTextFormField(
              labelText: t.subject,
            ),
            const AppVSpace(),
            AppTextFormField(
              labelText: t.message,
              maxLine: 2,
            ),
            const AppVSpace(),
            AppButton(
              title: t.sensMessage,
              onPressed: () {},
            ),
          ],
        ),
      ),
      secondaryBody: AppCard(
        margin: const EdgeInsets.all(Dimens.largePadding),
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.largePadding,
          vertical: Dimens.veryLargePadding,
        ),
        child: AppListView(
          shrinkWrap: true,
          physics: checkDesktopSize(context)
              ? const BouncingScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          children: [
            contatcItem(
              context,
              t.phone,
              '020 7491 7761',
              Icons.phone,
            ),
            const AppDivider(
              height: 18.0,
            ),
            contatcItem(
              context,
              t.email,
              'info@example.com',
              Icons.email,
            ),
            const AppDivider(
              height: 18.0,
            ),
            contatcItem(
              context,
              t.address,
              '83 Main Road, London, WC64 0TM',
              Icons.location_on,
            ),
          ],
        ),
      ),
    );
  }

  Widget contatcItem(
    final BuildContext context,
    final String title,
    final String subTitle,
    final IconData icon,
  ) =>
      ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(title),
        subtitle: Text(subTitle),
        leading: Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.symmetric(
            horizontal: Dimens.padding,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: getPrimaryColor(context),
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            icon,
            color: getPrimaryColor(context),
            size: 20,
          ),
        ),
      );
}
