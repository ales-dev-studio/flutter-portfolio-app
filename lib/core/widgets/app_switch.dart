import 'package:flutter/material.dart';

class AppSwitch extends StatelessWidget {

  const AppSwitch({
    super.key,
    required this.value,
    this.onChanged,
    this.thumbIcon,
  });
  final bool value;
  final ValueChanged<bool>? onChanged;
  final MaterialStateProperty<Icon?>? thumbIcon;

  @override
  Widget build(final BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      thumbIcon: thumbIcon,
    );
  }
}
