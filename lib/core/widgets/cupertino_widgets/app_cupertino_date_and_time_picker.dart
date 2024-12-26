import 'package:flutter/cupertino.dart';
import 'package:personal_portfolio/core/widgets/app_bottom_sheet_dialog.dart';

Future<void> appCupertinoTimePickerDialog(
    final BuildContext context,
    final String title,
    final String? message, {
      final bool isDismiss = true,
      final bool enableDrag = true,
      final EdgeInsets? padding,
      final Duration? initialTimerDuration,
      required final ValueChanged<DateTime> onTimeChanged,
      final bool? use24hFormat,
    }) async {
  await appModalBottomSheetDialog(
    context,
    title,
    message,
    isDismiss: isDismiss,
    enableDrag: enableDrag,
    padding: padding,
    child: SizedBox(
      height: 200,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.time,
        use24hFormat: use24hFormat ?? true,
        onDateTimeChanged: onTimeChanged,
      ),
    ),
  );
}


Future<void> appCupertinoDatePickerDialog(
    final BuildContext context,
    final String title,
    final String? message, {
      final bool isDismiss = true,
      final bool enableDrag = true,
      final EdgeInsets? padding,
      final Duration? initialTimerDuration,
      required final ValueChanged<DateTime> onTimeChanged,
    }) async {
  await appModalBottomSheetDialog(
    context,
    title,
    message,
    isDismiss: isDismiss,
    enableDrag: enableDrag,
    padding: padding,
    child: SizedBox(
      height: 200,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        use24hFormat: true,
        showDayOfWeek: true,
        onDateTimeChanged: onTimeChanged,
      ),
    ),
  );
}
