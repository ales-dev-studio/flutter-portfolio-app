import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';
import 'package:personal_portfolio/core/widgets/app_scaffold.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_text_button.dart';
import 'package:personal_portfolio/core/widgets/cupertino_widgets/app_action_sheet.dart';
import 'package:personal_portfolio/core/widgets/cupertino_widgets/app_context_menu.dart';
import 'package:personal_portfolio/core/widgets/cupertino_widgets/app_cupertino_date_and_time_picker.dart';
import 'package:personal_portfolio/core/widgets/general_appbar.dart';
import 'package:personal_portfolio/core/widgets/lists/app_single_child_scroll_view.dart';
import 'package:personal_portfolio/core/widgets/typography/app_text.dart';

class CupertinoWidgetsDemoScreen extends StatefulWidget {
  const CupertinoWidgetsDemoScreen({super.key});

  @override
  State<CupertinoWidgetsDemoScreen> createState() =>
      _CupertinoWidgetsDemoScreenState();
}

class _CupertinoWidgetsDemoScreenState
    extends State<CupertinoWidgetsDemoScreen> {
  int segmentedControlGroupValue = 0;

  @override
  Widget build(final BuildContext context) {
    final Map<int, Widget> segmentedControlTabs = <int, Widget>{
      0: const Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.largePadding),
        child: Text('all'),
      ),
      1: const Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.largePadding),
        child: Text('Pay'),
      ),
      2: const Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.largePadding),
        child: Text('Receive'),
      ),
    };
    return AppScaffold(
      appBar: const GeneralAppBar(
        title: 'Cupertino Widgets',
      ),
      body: AppSingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.padding),
        child: Column(
          children: [
            AppTextButton(
              title: 'SHOW ACTION SHEET DIALOG',
              onPressed: () {
                appActionSheet(
                  context: context,
                  title: 'Action sheet dialog',
                  message: t.smallLoremIpsum,
                  actionSheetActions: <Widget>[
                    AppCupertinoActionSheetAction(
                      onPressed: () async {
                        context.pop();
                      },
                      title: 'Choose Image From Gallery',
                    ),
                    AppCupertinoActionSheetAction(
                      onPressed: () async {
                        context.pop();
                      },
                      title: 'Choose Image From Camera',
                    ),
                  ],
                );
              },
            ),
            AppTextButton(
              title: 'SHOW TIME PICKER DIALOG',
              onPressed: () => appCupertinoTimePickerDialog(
                context,
                'انتخاب زمان',
                t.smallLoremIpsum,
                onTimeChanged: (final DateTime newTime) {
                  if (kDebugMode) {
                    print(newTime);
                  }
                },
              ),
            ),
            AppTextButton(
              title: 'SHOW DATE PICKER DIALOG',
              onPressed: () => appCupertinoDatePickerDialog(
                context,
                'انتخاب تاریخ',
                t.smallLoremIpsum,
                onTimeChanged: (final DateTime newDate) {
                  if (kDebugMode) {
                    print(newDate);
                  }
                },
              ),
            ),
            const AppVSpace(),
            const AppText('Long press to open menu'),
            const AppVSpace(),
            Center(
              child: AppContextMenu(
                onTap: () {
                  showSnackBar('Long press to open menu!');
                },
                actions: <Widget>[
                  CupertinoContextMenuAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    trailingIcon: Icons.share,
                    child: const Text('Share'),
                  ),
                  CupertinoContextMenuAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    trailingIcon: Icons.favorite_border,
                    child: const Text('Favorite'),
                  ),
                  CupertinoContextMenuAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    isDestructiveAction: true,
                    trailingIcon: Icons.delete_outline,
                    child: const Text('Delete'),
                  ),
                ],
              ),
            ),
            const AppVSpace(
              space: Dimens.largePadding,
            ),
            const AppText('Cupertino Segmented Control Widget'),
            const AppVSpace(),
            CupertinoSlidingSegmentedControl(
              groupValue: segmentedControlGroupValue,
              children: segmentedControlTabs,
              onValueChanged: (final dynamic index) {
                setState(() {
                  segmentedControlGroupValue = index;
                });
              },
            ),
            const AppVSpace(),
            CupertinoSegmentedControl(
              groupValue: segmentedControlGroupValue,
              children: segmentedControlTabs,
              onValueChanged: (final dynamic index) {
                setState(() {
                  segmentedControlGroupValue = index;
                });
              },
            ),
          ],
        ),
      ),
      secondaryBody: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
        child: Column(
          
        ),
      ),
      bodyFlex: 1,
    );
  }
}
