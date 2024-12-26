import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:personal_portfolio/core/utils/media_picker/file_picker_helper.dart';
import 'package:personal_portfolio/core/utils/media_picker/image_picker_helper.dart';

enum PickerType {
  imageGallery,
  imageCamera,
  videoCamera,
  videoGallery,
  any,
}

Future mediaPicker(
  final BuildContext context,
  final PickerType pickerType, {
  final bool multiSelect = false,
  final FileType type = FileType.any,
}) async {
  XFile? imageFile;
  XFile? cameraImageFile;
  XFile? videoFile;
  FilePickerResult? filePickerResult;

  switch (pickerType) {
    case PickerType.imageGallery:
      imageFile = await ImagePickerHelper.pickImage(
        source: ImageSource.gallery,
      );
      return imageFile;

    case PickerType.imageCamera:
      cameraImageFile = await ImagePickerHelper.pickImage(
        source: ImageSource.camera,
      );
      return cameraImageFile;

    case PickerType.videoGallery:
      videoFile = await ImagePickerHelper.pickVideo(
        source: ImageSource.camera,
        maxDuration: const Duration(minutes: 10),
      );
      return videoFile;

    case PickerType.videoCamera:
      videoFile = await ImagePickerHelper.pickVideo(
        source: ImageSource.gallery,
        maxDuration: const Duration(minutes: 10),
      );
      return videoFile;

    case PickerType.any:
      filePickerResult = await FilePickerHelper.pickFiles(
        allowMultiple: multiSelect,
        type: type,
      );
      return filePickerResult;
  }
}
