import 'package:flutter/material.dart';

class AppSingleChildScrollView extends StatelessWidget {

  const AppSingleChildScrollView({
    super.key,
    this.scrollDirection,
    this.reverse,
    this.controller,
    this.primary,
    this.physics,
    this.padding,
    required this.child,
  });
  final Axis? scrollDirection;
  final bool? reverse;
  final ScrollController? controller;
  final bool? primary;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;
  final Widget child;

  @override
  Widget build(final BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: scrollDirection ?? Axis.vertical,
      reverse: reverse ?? false,
      controller: controller,
      primary: primary,
      physics: physics ?? const BouncingScrollPhysics(),
      padding: padding,
      child: child,
    );
  }
}
