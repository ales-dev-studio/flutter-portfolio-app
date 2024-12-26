import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/utils/app_date_formatter.dart';
import 'package:personal_portfolio/core/utils/get_sheba_bank.dart';
import 'package:personal_portfolio/core/utils/locale_handler.dart';
import 'package:personal_portfolio/core/utils/number_formatter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  test('Testing sheba bank name method: ', () {
    const String shebaNumber = '520560083188803437550001';
    final String? result = getShebaBank(shebaNumber: shebaNumber);
    expect(result, 'بانک سامان');
  });

  test('Testing get locale method from locale handler class', () async {
    SharedPreferences.setMockInitialValues({});
    final AppLocale appLocales = await LocaleHandler().getLocale();
    expect(appLocales, AppLocale.fa);
  });

  test('Testing number formatter method', () {
    final MockBuildContext mockBuildContext = MockBuildContext();
    final String result = numberFormatter(
      mockBuildContext,
      1000,
    );
    expect(result, '‎۱٬۰۰۰');
  });

  test('Testing date formatter class', () {
    final MockBuildContext mockBuildContext = MockBuildContext();

    const String datetime = '2023-10-25 14:00:00.00';
    final String dateResult = appDateFormatter(
      context: mockBuildContext,
      datetime: datetime,
    );
    expect(dateResult, '1402/8/3');

    final String dateTimeResult = appDateFormatter(
      context: mockBuildContext,
      datetime: datetime,
      withTime: true,
    );
    expect(dateTimeResult, '14:00  1402/8/3');
  });
}
