import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';

class AppSearchBar extends StatelessWidget {

  const AppSearchBar({
    super.key,
    required this.suggestionsBuilder,
    this.isFullScreen,
    this.dividerColor,
    this.barLeading,
    this.barTrailing,
    this.barHintText,
    this.onTap,
    this.barSide,
    this.barPadding,
    this.barTextStyle,
    this.barHintStyle,
    this.constraints,
  });
  final SuggestionsBuilder suggestionsBuilder;
  final Widget? barLeading;
  final Iterable<Widget>? barTrailing;
  final String? barHintText;
  final GestureTapCallback? onTap;
  final MaterialStateProperty<BorderSide?>? barSide;
  final MaterialStateProperty<EdgeInsetsGeometry?>? barPadding;
  final MaterialStateProperty<TextStyle?>? barTextStyle;
  final MaterialStateProperty<TextStyle?>? barHintStyle;
  final Color? dividerColor;
  final BoxConstraints? constraints;
  final bool? isFullScreen;

  @override
  Widget build(final BuildContext context) {
    return SearchAnchor.bar(
      barHintText: barHintText,
      suggestionsBuilder: suggestionsBuilder,
      isFullScreen: isFullScreen,
      dividerColor: dividerColor,
      barLeading: barLeading,
      barTrailing: barTrailing,
      onTap: onTap,
      barSide: barSide,
      barPadding: barPadding,
      barTextStyle: barTextStyle,
      barHintStyle: barHintStyle,
      constraints: constraints,
      barElevation: MaterialStateProperty.all(1),
      barShape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.corners),
        ),
      ),
    );
  }
}
