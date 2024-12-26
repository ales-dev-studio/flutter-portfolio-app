import 'package:flutter/material.dart';

class AppCheckbox extends StatelessWidget {

  const AppCheckbox({
    super.key,
    this.tristate,
    this.value,
    this.title,
    this.onChanged,
    this.contentPadding,
    this.isListTile = false,
  });
  final bool? tristate;
  final bool? value;
  final String? title;
  final ValueChanged<bool?>? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final bool isListTile;

  @override
  Widget build(final BuildContext context) {
    return isListTile
        ? CheckboxListTile(
            tristate: true,
            value: value,
            title: Text(title ?? ''),
            onChanged: onChanged,
            contentPadding: contentPadding,
          )
        : Checkbox(
            tristate: true,
            value: value,
            onChanged: onChanged,
          );
  }
}
