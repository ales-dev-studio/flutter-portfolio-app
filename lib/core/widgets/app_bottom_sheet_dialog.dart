import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/lists/app_single_child_scroll_view.dart';

Future<void> appModalBottomSheetDialog(
  final BuildContext context,
  final String title,
  final String? message, {
  final Widget? child,
  final bool isDismiss = true,
  final bool enableDrag = true,
  final EdgeInsets? padding,
}) async {
  await showModalBottomSheet<void>(
    showDragHandle: true,
    context: context,
    constraints: const BoxConstraints(maxWidth: 640),
    isDismissible: isDismiss,
    enableDrag: enableDrag,
    isScrollControlled: true,
    barrierColor: Theme.of(context).primaryColor.withOpacity(0.3),
    builder: (final BuildContext context) {
      return Padding(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: Dimens.largePadding,
            ),
        child: AppSingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              if (message != null)
                if (message != '')
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16.0,
                    ),
                    child: Text(
                      message,
                      textAlign: TextAlign.justify,
                    ),
                  ),
              const AppVSpace(),
              child ?? const SizedBox.shrink(),
            ],
          ),
        ),
      );
    },
  );
}
