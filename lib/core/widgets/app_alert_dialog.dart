import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_button.dart';

Future<void> appAlertDialog({
  required final BuildContext context,
  required final String title,
  final Widget? content,
  final String? message,
  final List<Widget>? actions,
  final String? approveButtonTxt,
  final String? cancelButtonTxt,
  final double? approveButtonWidth,
  final double? cancelButtonWidth,
  final GestureTapCallback? approveOnTap,
  final GestureTapCallback? cancelOnTap,
  final bool barrierDismissible = true,
}) async {
  await showModal<void>(
    context: context,
    configuration: FadeScaleTransitionConfiguration(
      barrierColor: Theme.of(context).primaryColor.withOpacity(0.3),
      barrierDismissible: barrierDismissible,
      transitionDuration: const Duration(milliseconds: 400),
      reverseTransitionDuration: const Duration(milliseconds: 300),
    ),
    builder: (final BuildContext context) {
      return AlertDialog(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        content: content,
        actions: actions ??
            <Widget>[
              SizedBox(
                width: approveButtonWidth ?? 100.0,
                child: AppButton(
                  title: approveButtonTxt,
                  onPressed: approveOnTap,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              if (cancelButtonTxt != null && cancelOnTap != null)
                SizedBox(
                  width: cancelButtonWidth ?? 100.0,
                  child: AppButton(
                    title: cancelButtonTxt,
                    onPressed: cancelOnTap,
                  ),
                ),
            ],
      );
    },
  );
}
