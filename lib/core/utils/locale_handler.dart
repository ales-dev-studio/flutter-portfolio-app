import 'package:flutter/cupertino.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/features/home_feature/data/data_sources/local/home_storage.dart';

class LocaleHandler {
  Future<AppLocale> getLocale() async {
    final String storedLocale = await HomeStorage().getLanguageLocale() ?? '';
    if (storedLocale == '') {
      return AppLocale.en;
    }
    if (storedLocale == 'fa') {
      return AppLocale.fa;
    } else {
      return AppLocale.en;
    }
  }

  String getLocaleTitle(final BuildContext context) {
    if (checkEnState(context)) {
      return t.english;
    } else {
      return t.farsi;
    }
  }

  void setFaLocale(final BuildContext context) {
    LocaleSettings.setLocale(AppLocale.fa);
    HomeStorage().setLanguageLocale('fa');
  }

  void setEnLocale(final BuildContext context) {
    LocaleSettings.setLocale(AppLocale.en);
    HomeStorage().setLanguageLocale('en');
  }
}

void changeLocale(final BuildContext context) {
  if (checkEnState(context)) {
    LocaleSettings.setLocale(AppLocale.fa);
    HomeStorage().setLanguageLocale('fa');
  } else {
    LocaleSettings.setLocale(AppLocale.en);
    HomeStorage().setLanguageLocale('en');
  }
}

bool checkEnState(final BuildContext context) {
  try {
    if (TranslationProvider.of(context).flutterLocale == const Locale('en')) {
      return true;
    }
    return false;
  } catch (e) {
    return false;
  }
}
