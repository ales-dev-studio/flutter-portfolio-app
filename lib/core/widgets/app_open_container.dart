import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class AppOpenContainer extends StatelessWidget {
  const AppOpenContainer({
    super.key,
    this.openColor,
    this.closedColor,
    this.middleColor,
    this.closedElevation,
    this.openElevation,
    this.tappable,
    required this.closedBuilder,
    required this.transitionType,
    required this.targetPage,
    this.onClosed,
  });

  final Color? openColor;
  final Color? closedColor;
  final Color? middleColor;
  final double? closedElevation;
  final double? openElevation;
  final bool? tappable;
  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final ClosedCallback<bool?>? onClosed;
  final Widget targetPage;

  @override
  Widget build(final BuildContext context) {
    return OpenContainer<bool>(
      openColor: openColor ?? Colors.transparent,
      closedColor: closedColor ?? Colors.transparent,
      middleColor: middleColor ?? Colors.transparent,
      openElevation: openElevation ?? 0,
      closedElevation: closedElevation ?? 0,
      transitionType: transitionType,
      openBuilder: (final BuildContext context, final VoidCallback _) {
        return targetPage;
      },
      onClosed: onClosed,
      tappable: tappable ?? false,
      closedBuilder: closedBuilder,
    );
  }
}
