import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';
import 'package:share_plus/share_plus.dart';

class ShareHelper {
  static Future<void> shareText(
    final String text, {
    final String? subject,
  }) async {
    try {
      Share.share(text, subject: subject);
    } catch (e) {
      showSnackBar(t.throwException);
    }
  }

  static Future<ShareResult> shareXFiles(
    final List<XFile> files, {
    final String? subject,
    final String? text,
  }) async {
    assert(files.isNotEmpty);
    return Share.shareXFiles(
      files,
      subject: subject,
      text: text,
    );
  }
}
