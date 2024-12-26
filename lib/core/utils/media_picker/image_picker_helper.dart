import 'package:image_picker/image_picker.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';

/// Helper class for picking images using the image_picker package.
class ImagePickerHelper {
  /// Opens the image picker
  /// and allows the user to select an image from the gallery
  /// or take a new photo.
  ///
  /// Returns the picked image file as a [XFile] object
  /// or null if no image was picked.
  static Future<XFile?> pickImage({
    required final ImageSource source,
    final double? maxWidth,
    final double? maxHeight,
    final int? imageQuality,
    final CameraDevice preferredCameraDevice = CameraDevice.rear,
    final bool requestFullMetadata = true,
  }) async {
    try {
      final picker = ImagePicker();
      final XFile? pickedFile = await picker.pickImage(
        source: source,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        imageQuality: imageQuality,
        preferredCameraDevice: preferredCameraDevice,
        requestFullMetadata: requestFullMetadata,
      );

      if (pickedFile != null) {
        return pickedFile;
      }
    } catch (e) {
      showSnackBar(t.throwException);
    }

    return null;
  }

  static Future<XFile?> pickVideo({
    required final ImageSource source,
    final CameraDevice preferredCameraDevice = CameraDevice.rear,
    final Duration? maxDuration,
  }) async {
    try {
      final picker = ImagePicker();
      final XFile? pickedFile = await picker.pickVideo(
        source: source,
        preferredCameraDevice: preferredCameraDevice,
        maxDuration: maxDuration,
      );

      if (pickedFile != null) {
        return pickedFile;
      }
    } catch (e) {
      showSnackBar(t.throwException);
    }

    return null;
  }
}
