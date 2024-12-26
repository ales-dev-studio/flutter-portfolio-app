import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';

/// Api request's response error handler
String responseErrorHandler({final dynamic error}) {
  try {
    if (error == null) {
      return t.throwException;
    }

    /// checks for common dio network connections error messages
    if (error.toString().contains('SocketException') ||
        error.toString().contains('NoSuchMethodError') ||
        error.toString().contains('TypeError') ||
        error.toString().contains('HttpException') ||
        error.toString().contains('connectTimeout') ||
        error.toString().contains('Connection') ||
        error.toString().contains('timeout')) {
      return t.noInternet;
    }
    return t.throwException;
  } catch (e) {
    return t.throwException;
  }
}
