import 'package:flutter/material.dart';

class GeneralAppBar extends StatelessWidget implements PreferredSizeWidget {

  const GeneralAppBar({
    super.key,
    this.title,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.scrolledUnderElevation,
    this.notificationPredicate = defaultScrollNotificationPredicate,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.backgroundColor,
    this.foregroundColor,
    this.iconTheme,
    this.actionsIconTheme,
    this.centerTitle,
    this.excludeHeaderSemantics = false,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.forceMaterialTransparency = false,
  });
  final String? title;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final double? scrolledUnderElevation;
  final ScrollNotificationPredicate notificationPredicate;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final bool? centerTitle;
  final bool excludeHeaderSemantics;
  final double? titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  final double? toolbarHeight;
  final double? leadingWidth;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final bool forceMaterialTransparency;

  @override
  Widget build(final BuildContext context) {
    return AppBar(
        title: Text(title ?? ''),
        shadowColor: Theme.of(context).colorScheme.shadow,
        bottom: bottom != null
            ? PreferredSize(
                preferredSize: preferredSize,
                child: bottom!,
              )
            : null,
        leading: leading,
        automaticallyImplyLeading: automaticallyImplyLeading,
        actions: actions,
        flexibleSpace: flexibleSpace,
        elevation: elevation,
        scrolledUnderElevation: scrolledUnderElevation,
        notificationPredicate: notificationPredicate,
        surfaceTintColor: surfaceTintColor,
        shape: shape,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        iconTheme: iconTheme,
        actionsIconTheme: actionsIconTheme,
        centerTitle: centerTitle ?? true,
        excludeHeaderSemantics: excludeHeaderSemantics,
        titleSpacing: titleSpacing,
        toolbarOpacity: toolbarOpacity,
        bottomOpacity: bottomOpacity,
        toolbarHeight: toolbarHeight,
        leadingWidth: leadingWidth,
        toolbarTextStyle: toolbarTextStyle,
        titleTextStyle: titleTextStyle,
        forceMaterialTransparency: forceMaterialTransparency,);
  }

  @override
  Size get preferredSize => Size.fromHeight(bottom != null ? 120.0 : 58.0);
}
