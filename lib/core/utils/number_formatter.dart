import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:personal_portfolio/core/utils/locale_handler.dart';

String numberFormatter(final BuildContext context, final int number) {
  // try {
    NumberFormat numberFormat;
    if (checkEnState(context)) {
      numberFormat = NumberFormat.currency(
        locale: 'en_US',
        symbol: '',
      );
    } else {
      numberFormat = NumberFormat.currency(
        locale: 'fa_IR',
        symbol: '',
      );
    }
    return numberFormat.format(number);
  // } catch (e) {
  //   return '';
  // }
}

String doubleNumberFormatter(
  final BuildContext context,
  final double doubleNumber, {
  int? decimalDigit,
}) {
  try {
    decimalDigit ??= 2;
    NumberFormat numberFormat;
    final String number = doubleNumber.toString();

    if (checkEnState(context)) {
      numberFormat = NumberFormat.currency(
        locale: 'en_US',
        symbol: '',
        decimalDigits: decimalDigit,
      );
    } else {
      numberFormat = NumberFormat.currency(
        locale: 'fa_IR',
        symbol: '',
        decimalDigits: decimalDigit,
      );
    }
    final String result = numberFormat.format(double.parse(number));

    if (checkEnState(context)) {
      return result;
    } else {
      return result.replaceAll('٫', '/');
    }
  } catch (e) {
    return '';
  }
}
