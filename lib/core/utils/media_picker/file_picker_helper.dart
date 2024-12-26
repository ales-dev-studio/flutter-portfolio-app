import 'package:file_picker/file_picker.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';

/// Helper class for picking files using the file_picker package.
class FilePickerHelper {
  /// Opens the file picker and allows the user to select a file.
  ///
  /// Returns the picked file as a [FilePickerResult] object
  /// or null if no file was picked.
  static Future<FilePickerResult?> pickFiles({
    final String? dialogTitle,
    final String? initialDirectory,
    final FileType type = FileType.any,
    final List<String>? allowedExtensions,
    final Function(FilePickerStatus)? onFileLoading,
    final bool allowCompression = true,
    final bool allowMultiple = false,
    final bool withData = false,
    final bool withReadStream = false,
    final bool lockParentWindow = false,
    final bool readSequential = false,
  }) async {
    try {
      final FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: type,
        dialogTitle: dialogTitle,
        initialDirectory: initialDirectory,
        allowedExtensions: allowedExtensions,
        allowCompression: allowCompression,
        allowMultiple: allowMultiple,
        withData: withData,
        withReadStream: withReadStream,
        lockParentWindow: lockParentWindow,
        readSequential: readSequential,
        onFileLoading: onFileLoading,
      );

      if (result != null) {
        if (result.files.isNotEmpty) {
          /// To get file path:
          /// final String? filePath = result.files.single.path;
          return result;
        }
      }
    } catch (e) {
      showSnackBar(t.throwException);
    }

    return null;
  }
}
