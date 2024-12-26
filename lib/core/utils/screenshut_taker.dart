import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:personal_portfolio/core/utils/locale_handler.dart';
import 'package:personal_portfolio/core/utils/share_helper.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

Future<void> shareScreenShutTaker({
  required final BuildContext context,
  required final Widget child,
  required final double screenshotHeight,
  required final double screenshotWidth,
}) async {
  try {
    final ScreenshotController screenshotController = ScreenshotController();
    final Widget shotWidget = SizedBox(
      width: screenshotWidth,
      child: Screenshot(
        controller: screenshotController,
        child: child,
      ),
    );

    await screenshotController
        .captureFromWidget(
      InheritedTheme.captureAll(
        context,
        Directionality(
          textDirection:
              checkEnState(context) ? TextDirection.ltr : TextDirection.rtl,
          child: SizedBox(
            width: screenshotWidth,
            height: screenshotHeight,
            child: Material(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: shotWidget,
              ),
            ),
          ),
        ),
      ),
    )
        .then(
      (final Uint8List capturedImage) async {
        final String directory =
            (await getApplicationDocumentsDirectory()).path;
        final String fileName = DateTime.now().toIso8601String();
        final String path = '$directory/$fileName.png';
        final File file = await File(path).writeAsBytes(capturedImage);
        ShareHelper.shareXFiles([XFile(file.path)]);
      },
    );
  } catch (e) {
    return;
  }
}
