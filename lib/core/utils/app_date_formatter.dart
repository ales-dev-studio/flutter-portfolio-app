import 'package:flutter/cupertino.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:personal_portfolio/core/utils/locale_handler.dart';

String appDateFormatter({
  required final BuildContext context,
  required final String datetime,
  final bool withTime = false,
}) {
  try {
    final bool checkEnglish = checkEnState(context);
    final String date = datetime.split(' ')[0];
    String time = datetime.split(' ')[1];
    time = time.split('.')[0].substring(0, 5);
    if (checkEnglish) {
      if (withTime) {
        return '$time  $date';
      }
      return date;
    } else {
      final List<String> splitDate = date.split('-');
      final String year = splitDate[0];
      final String month = splitDate[1];
      final String day = splitDate[2];
      final Gregorian gregorian = Gregorian(
        int.parse(year),
        int.parse(month),
        int.parse(day),
      );
      final Jalali jalali = gregorian.toJalali();

      String formattedDate = '${jalali.year}/${jalali.month}/${jalali.day}';
      if (withTime) {
        formattedDate = '$time  $formattedDate';
      }
      return formattedDate;
    }
  } catch (e) {
    return '';
  }
}
