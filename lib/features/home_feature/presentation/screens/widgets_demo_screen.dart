import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/routes/go_routes_path.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';
import 'package:personal_portfolio/core/utils/sized_context.dart';
import 'package:personal_portfolio/core/widgets/app_alert_dialog.dart';
import 'package:personal_portfolio/core/widgets/app_badge.dart';
import 'package:personal_portfolio/core/widgets/app_bottom_sheet_dialog.dart';
import 'package:personal_portfolio/core/widgets/app_card.dart';
import 'package:personal_portfolio/core/widgets/app_checkbox.dart';
import 'package:personal_portfolio/core/widgets/app_chip.dart';
import 'package:personal_portfolio/core/widgets/app_divider.dart';
import 'package:personal_portfolio/core/widgets/app_list_tile.dart';
import 'package:personal_portfolio/core/widgets/app_notify_banner.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/app_switch.dart';
import 'package:personal_portfolio/core/widgets/app_text_form_field.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_button.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_fab.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_icon_button.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_radio_button.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_text_button.dart';
import 'package:personal_portfolio/core/widgets/general_appbar.dart';
import 'package:personal_portfolio/core/widgets/lists/app_list_view.dart';
import 'package:personal_portfolio/core/widgets/lists/app_single_child_scroll_view.dart';

class WidgetsDemoScreen extends StatefulWidget {
  const WidgetsDemoScreen({super.key});

  @override
  State<WidgetsDemoScreen> createState() => _WidgetsDemoScreenState();
}

class _WidgetsDemoScreenState extends State<WidgetsDemoScreen> {
  bool showNotifyBanner = false;

  @override
  Widget build(final BuildContext context) {
    return AppScaffold(
      appBar: const GeneralAppBar(
        title: 'Widgets',
      ),
      body: AppSingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.padding),
        child: Column(
          children: [
            const Text('Buttons'),
            const AppVSpace(),
            AppButton(
              onPressed: () {},
              title: 'Filled Button',
            ),
            AppButton(
              onPressed: () {},
              title: 'Filled Button with icon',
              icon: Icons.check,
            ),
            const AppVSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextButton(
                  onPressed: () {},
                  title: 'Text Button',
                ),
                const AppHSpace(),
                AppTextButton(
                  onPressed: () {},
                  title: 'Text Button',
                  icon: Icons.check,
                ),
              ],
            ),
            const AppVSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppFab(
                  onPressed: () {},
                  icon: Icons.add,
                ),
                const AppHSpace(),
                AppFab(
                  onPressed: () {},
                  icon: Icons.add,
                  isExtended: true,
                  label: 'Floating button',
                ),
              ],
            ),
            const AppVSpace(
              space: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppIconButton(
                  onPressed: () {},
                  icon: Icons.add,
                ),
                const AppHSpace(),
                AppIconButton(
                  onPressed: () {},
                  icon: Icons.add,
                  isFilled: true,
                ),
                const AppHSpace(),
                AppIconButton(
                  onPressed: () {},
                  icon: Icons.add,
                  isBordered: true,
                ),
              ],
            ),
            const AppVSpace(
              space: Dimens.largePadding,
            ),
            const Text('Badges'),
            const AppVSpace(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBadge(
                  icon: Icons.person_pin_sharp,
                ),
                AppHSpace(
                  space: 32.0,
                ),
                AppBadge(
                  count: 10,
                  icon: Icons.mail,
                ),
                AppHSpace(
                  space: 32.0,
                ),
                AppBadge(
                  count: 5,
                  icon: Icons.chat_bubble,
                ),
              ],
            ),
            const AppVSpace(
              space: Dimens.largePadding,
            ),
            const Text('Dividers'),
            const AppVSpace(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: AppDivider(),
                ),
                AppHSpace(),
                SizedBox(
                  height: 50,
                  child: AppDivider(
                    verticalDivider: true,
                  ),
                ),
              ],
            ),
            const AppVSpace(),
            const Text('Chips'),
            const AppVSpace(),
            SizedBox(
              height: 50,
              child: AppListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppChip(
                        label: 'Simple chip',
                      ),
                      const AppHSpace(),
                      const AppChip(
                        label: 'Chip with icon',
                        icon: Icons.person_pin_sharp,
                      ),
                      const AppHSpace(),
                      AppChip(
                        label: 'Deletable',
                        onDeleted: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (showNotifyBanner) const AppVSpace(),
            AppNotifyBanner(
              title: 'Notify banner',
              subtitle: 'This is a test banner!',
              showBanner: showNotifyBanner,
              actions: [
                AppIconButton(
                  icon: Icons.close,
                  onPressed: () {
                    setState(() {
                      showNotifyBanner = false;
                    });
                  },
                ),
              ],
              icon: Icons.warning_amber,
            ),
            const AppVSpace(),
            AppTextButton(
              title: showNotifyBanner
                  ? 'HIDE NOTIFY BANNER'
                  : 'SHOW NOTIFY BANNER',
              onPressed: () {
                setState(() {
                  showNotifyBanner = !showNotifyBanner;
                });
              },
            ),
            AppTextButton(
              title: 'SHOW SNACK BAR',
              onPressed: () {
                showSnackBar('This is a simple snack bar!!!');
              },
            ),
            AppTextButton(
              title: 'SHOW BOTTOM SHEET DIALOG',
              onPressed: () {
                appModalBottomSheetDialog(
                  context,
                  'اشتراک گذاری اطلاعات ...',
                  t.loremIpsum,
                  child: SizedBox(
                    height: 150,
                    width: context.sizePx.width,
                    child: ListView(
                      shrinkWrap: true,
                      children: const [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.share),
                          title: Text('اشتراک گذاری اطلاعات'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.share),
                          title: Text('اشتراک گذاری اطلاعات'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.share),
                          title: Text('اشتراک گذاری اطلاعات'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            AppTextButton(
              title: 'SHOW DIALOG',
              onPressed: () {
                appAlertDialog(
                  context: context,
                  title: 'تست',
                  content: Text(t.smallLoremIpsum),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('انصراف'),
                      onPressed: () => context.pop(),
                    ),
                    FilledButton(
                      child: const Text('باشه'),
                      onPressed: () => context.pop(),
                    ),
                  ],
                );
              },
            ),
            const AppVSpace(),
            AppTextButton(
              title: 'SHOW SIMPLE TAB SCREEN',
              onPressed: () {
                context.push(GoRoutesPath.tabScreen);
              },
            ),
            const AppVSpace(),
          ],
        ),
      ),
      secondaryBody: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.padding),
        child: Column(
          children: [
            const AppVSpace(),
            const Text('Cards'),
            const AppVSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppCard(
                  elevation: 0.0,
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  child: const Text('Filled'),
                ),
                const AppCard(
                  child: Text('Sample'),
                ),
                const AppCard(
                  hasBorder: true,
                  child: Text('bordered'),
                ),
                const AppCard(
                  hasBorder: true,
                  elevation: 0.0,
                  child: Text('bordered'),
                ),
              ],
            ),
            const AppVSpace(),
            const Text('Checkbox'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppCheckbox(
                  value: true,
                  onChanged: (final bool? value) {},
                ),
                const AppHSpace(),
                AppCheckbox(
                  value: false,
                  onChanged: (final bool? value) {},
                ),
                const AppHSpace(),
                AppCheckbox(
                  onChanged: (final bool? value) {},
                ),
              ],
            ),
            AppCheckbox(
              title: 'Sample checkbox list tile',
              value: true,
              onChanged: (final bool? value) {},
              isListTile: true,
            ),
            AppCheckbox(
              title: 'Sample checkbox list tile',
              value: false,
              onChanged: (final bool? value) {},
              isListTile: true,
            ),
            AppCheckbox(
              title: 'Sample checkbox list tile',
              onChanged: (final bool? value) {},
              isListTile: true,
            ),
            const AppVSpace(),
            const Text('Radio button'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppRadioButton(
                  value: true,
                  groupValue: true,
                  onChanged: (final bool? value) {},
                ),
                const AppHSpace(),
                AppRadioButton(
                  value: false,
                  groupValue: true,
                  onChanged: (final bool? value) {},
                ),
              ],
            ),
            AppRadioButton(
              title: 'Sample checkbox list tile',
              value: true,
              groupValue: true,
              onChanged: (final bool? value) {},
              isListTile: true,
            ),
            AppRadioButton(
              title: 'Sample checkbox list tile',
              value: false,
              groupValue: true,
              onChanged: (final bool? value) {},
              isListTile: true,
            ),
            const AppVSpace(),
            AppListTile(
              leading: const Icon(Icons.account_circle_rounded),
              title: 'Card list tile',
              subtitle: 'subtitle',
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
              onTap: () {},
            ),
            const AppVSpace(),
            AppListTile(
              leading: const Icon(Icons.account_circle_rounded),
              title: 'Simple list tile',
              subtitle: 'subtitle',
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
              hasCard: false,
              onTap: () {},
            ),
            const AppVSpace(),
            const Text('Switch'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppSwitch(
                  value: true,
                  onChanged: (final bool value) {},
                ),
                const AppHSpace(),
                AppSwitch(
                  value: false,
                  onChanged: (final bool value) {},
                ),
                const AppHSpace(),
                AppSwitch(
                  value: true,
                  onChanged: (final bool value) {},
                  thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                    (final Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return const Icon(Icons.check);
                      }
                      return const Icon(Icons.close);
                    },
                  ),
                ),
                const AppHSpace(),
                AppSwitch(
                  value: false,
                  onChanged: (final bool value) {},
                  thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                    (final Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return const Icon(Icons.check);
                      }
                      return const Icon(Icons.close);
                    },
                  ),
                ),
                const AppHSpace(),
              ],
            ),
            const AppVSpace(
              space: 32.0,
            ),
            AppTextFormField(
              controller: TextEditingController(),
              labelText: 'text input text',
            ),
            const AppVSpace(
              space: 32.0,
            ),
          ],
        ),
      ),
      bodyFlex: 1,
    );
  }
}
