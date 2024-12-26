import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';

void appActionSheet({
  required final BuildContext context,
  final String? title,
  final String? message,
  required final List<Widget> actionSheetActions,
}) {
  final Widget action = CupertinoActionSheet(
    title: title == null
        ? null
        : Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
    message: message == null
        ? null
        : Text(
            message,
          ),
    actions: actionSheetActions,
    cancelButton: AppCupertinoActionSheetAction(
      isDestructiveAction: true,
      title: t.cancel,
      onPressed: () {
        context.pop();
      },
    ),
  );

  showCupertinoModalPopup(
    context: context,
    builder: (final BuildContext context) => action,
  );
}

class AppCupertinoActionSheetAction extends StatelessWidget {
  const AppCupertinoActionSheetAction({
    super.key,
    required this.onPressed,
    required this.title,
    this.isDestructiveAction,
  });

  final VoidCallback onPressed;
  final String title;
  final bool? isDestructiveAction;

  @override
  Widget build(final BuildContext context) {
    return CupertinoActionSheetAction(
      isDestructiveAction: isDestructiveAction ?? false,
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(fontSize: 15.0),
      ),
    );
  }
}
