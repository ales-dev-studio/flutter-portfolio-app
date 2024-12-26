import 'package:flutter/material.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    this.avatar,
    this.icon,
    required this.label,
    this.labelStyle,
    this.labelPadding,
    this.deleteIcon,
    this.onDeleted,
    this.deleteIconColor,
    this.deleteButtonTooltipMessage,
    this.side,
    this.shape,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.autofocus = false,
    this.color,
    this.backgroundColor,
    this.padding,
    this.visualDensity,
    this.materialTapTargetSize,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.iconTheme,
  });

  final Widget? avatar;
  final IconData? icon;
  final String label;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? labelPadding;
  final BorderSide? side;
  final OutlinedBorder? shape;
  final Clip clipBehavior;
  final FocusNode? focusNode;
  final bool autofocus;
  final MaterialStateProperty<Color?>? color;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final VisualDensity? visualDensity;
  final Widget? deleteIcon;
  final VoidCallback? onDeleted;
  final Color? deleteIconColor;
  final String? deleteButtonTooltipMessage;
  final MaterialTapTargetSize? materialTapTargetSize;
  final double? elevation;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final IconThemeData? iconTheme;

  @override
  Widget build(final BuildContext context) {
    return Chip(
      avatar: icon == null ? avatar : Icon(icon, size: 20),
      label: Text(label),
      labelStyle: labelStyle,
      labelPadding: labelPadding,
      deleteIcon: deleteIcon,
      onDeleted: onDeleted,
      deleteIconColor: deleteIconColor,
      deleteButtonTooltipMessage: deleteButtonTooltipMessage,
      side: side,
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      color: color,
      backgroundColor: backgroundColor,
      padding: padding,
      visualDensity: visualDensity,
      materialTapTargetSize: materialTapTargetSize,
      elevation: elevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
    );
  }
}
