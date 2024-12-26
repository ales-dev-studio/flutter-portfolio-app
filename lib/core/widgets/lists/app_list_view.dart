import 'package:flutter/material.dart';

class AppListView extends StatelessWidget {

  const AppListView({
    super.key,
    this.scrollDirection,
    this.reverse,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap,
    this.padding,
    this.itemExtent,
    this.prototypeItem,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    required this.children,
  });
  final Axis? scrollDirection;
  final bool? reverse;
  final ScrollController? controller;
  final bool? primary;
  final ScrollPhysics? physics;
  final bool? shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final double? itemExtent;
  final Widget? prototypeItem;
  final bool? addAutomaticKeepAlives;
  final bool? addRepaintBoundaries;
  final bool? addSemanticIndexes;
  final List<Widget> children;

  @override
  Widget build(final BuildContext context) {
    return ListView(
      scrollDirection: scrollDirection ?? Axis.vertical,
      reverse: reverse ?? false,
      controller: controller,
      primary: primary,
      physics: physics ?? const BouncingScrollPhysics(),
      shrinkWrap: shrinkWrap ?? false,
      padding: padding,
      itemExtent: itemExtent,
      prototypeItem: prototypeItem,
      addAutomaticKeepAlives: addAutomaticKeepAlives!,
      addRepaintBoundaries: addRepaintBoundaries!,
      addSemanticIndexes: addSemanticIndexes!,
      children: children,
    );
  }
}
