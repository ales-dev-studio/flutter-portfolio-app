import 'package:flutter/material.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/colors.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';
import 'package:personal_portfolio/core/utils/check_theme_status.dart';

Future<Jalali?> pickDate({
  required final BuildContext context,
  final Jalali? initialDate,
  final Jalali? firstDate,
  final Jalali? lastDate,
  final String? title,
  final PDatePickerEntryMode? initialEntryMode,
}) async {
  try {
    final Jalali? pickedDate = await showPersianDatePicker(
      context: context,
      helpText: title ?? '',
      initialDate: initialDate ?? Jalali(1370),
      firstDate: firstDate ?? Jalali(1300),
      lastDate: lastDate ?? Jalali(1450, 9),
      initialEntryMode: initialEntryMode ?? PDatePickerEntryMode.calendarOnly,
      builder: _datePickerBuilder,
    );
    return pickedDate;
  } catch (e) {
    showSnackBar(t.throwException);
    return null;
  }
}

Future<TimeOfDay?> pickTime({
  required final BuildContext context,
  final TimeOfDay? initialTime,
  final String? title,
  final PDatePickerEntryMode? initialEntryMode,
}) async {
  try {
    final TimeOfDay? pickedTime = await showPersianTimePicker(
      context: context,
      helpText: title ?? '',
      builder: _datePickerBuilder,
      initialTime: initialTime ??
          TimeOfDay(
            hour: DateTime.now().hour,
            minute: DateTime.now().minute,
          ),
    );
    return pickedTime;
  } catch (e) {
    showSnackBar(t.throwException);
    return null;
  }
}

Widget _datePickerBuilder(final context, final child) => Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.light(
          primary: checkDarkMode(context)
              ? AppColors.lightPrimaryColor
              : Theme.of(context).primaryColor,
          background: Colors.red,
          onSurface: checkDarkMode(context) ? Colors.white : Colors.black,
        ),
      ),
      child: child!,
    );
