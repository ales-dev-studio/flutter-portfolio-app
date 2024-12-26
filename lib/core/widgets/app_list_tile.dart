import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/widgets/app_card.dart';

class AppListTile extends StatelessWidget {

  const AppListTile({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine = false,
    this.dense,
    this.visualDensity,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.leadingAndTrailingTextStyle,
    this.contentPadding,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.onFocusChange,
    this.mouseCursor,
    this.selected = false,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.focusNode,
    this.autofocus = false,
    this.tileColor,
    this.selectedTileColor,
    this.enableFeedback,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.titleAlignment,
    this.hasCard = true,
  });
  final Widget? leading;
  final String? title;
  final String? subtitle;
  final Widget? trailing;
  final bool isThreeLine;
  final bool? dense;
  final VisualDensity? visualDensity;
  final ShapeBorder? shape;
  final Color? selectedColor;
  final Color? iconColor;
  final Color? textColor;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final TextStyle? leadingAndTrailingTextStyle;
  final ListTileStyle? style;
  final EdgeInsetsGeometry? contentPadding;
  final bool enabled;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;
  final ValueChanged<bool>? onFocusChange;
  final MouseCursor? mouseCursor;
  final bool selected;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? splashColor;
  final FocusNode? focusNode;
  final bool autofocus;
  final Color? tileColor;
  final Color? selectedTileColor;
  final bool? enableFeedback;
  final double? horizontalTitleGap;
  final double? minVerticalPadding;
  final double? minLeadingWidth;
  final ListTileTitleAlignment? titleAlignment;
  final bool? hasCard ;

  @override
  Widget build(final BuildContext context) {
    return AppCard(
      elevation: hasCard! ? 3.0 :  0.0,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      onTap: onTap,
      child: ListTile(
        title: Text(title ?? ''),
        subtitle: Text(subtitle ?? ''),
        trailing: trailing,
        leading: leading,
        isThreeLine: isThreeLine,
        dense: dense,
        visualDensity: visualDensity,
        shape: shape,
        style: style,
        selectedColor: selectedColor,
        iconColor: iconColor,
        textColor: textColor,
        titleTextStyle: titleTextStyle,
        subtitleTextStyle: subtitleTextStyle,
        leadingAndTrailingTextStyle: leadingAndTrailingTextStyle,
        contentPadding: contentPadding,
        enabled: enabled,
        onLongPress: onLongPress,
        onFocusChange: onFocusChange,
        mouseCursor: mouseCursor,
        selected: selected,
        focusColor: focusColor,
        hoverColor: hoverColor,
        splashColor: splashColor,
        focusNode: focusNode,
        autofocus: autofocus,
        tileColor: tileColor,
        selectedTileColor: selectedTileColor,
        enableFeedback: enableFeedback,
        horizontalTitleGap: horizontalTitleGap,
        minVerticalPadding: minVerticalPadding,
        minLeadingWidth: minLeadingWidth,
        titleAlignment: titleAlignment,
      ),
    );
  }
}
