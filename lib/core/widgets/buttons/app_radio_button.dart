import 'package:flutter/material.dart';

class AppRadioButton<T> extends StatelessWidget {

  const AppRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    this.title,
    this.onChanged,
    this.contentPadding,
    this.isListTile = false,
  });
  final T value;
  final T groupValue;
  final String? title;
  final ValueChanged<T?>? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final bool isListTile;

  @override
  Widget build(final BuildContext context) {
    return isListTile
        ? RadioListTile<T?>(
            visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity,
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: value,
            groupValue: groupValue,
            title: Text(title ?? ''),
            onChanged: onChanged,
            contentPadding: contentPadding,
          )
        : Radio<T>(
            visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity,
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: value,
            onChanged: onChanged,
            groupValue: groupValue,
          );
  }
}
