import 'package:flutter/material.dart';

class AppListViewBuilder extends StatelessWidget {

  const AppListViewBuilder({
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
    required this.itemBuilder,
    this.separatorBuilder,
    required this.itemCount,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
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
  final NullableIndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;
  final int itemCount;
  final bool? addAutomaticKeepAlives;
  final bool? addRepaintBoundaries;
  final bool? addSemanticIndexes;

  @override
  Widget build(final BuildContext context) {
    return separatorBuilder == null
        ? ListView.builder(
            scrollDirection: scrollDirection ?? Axis.vertical,
            reverse: reverse ?? false,
            controller: controller,
            primary: primary,
            physics: physics ?? const BouncingScrollPhysics(),
            shrinkWrap: shrinkWrap ?? false,
            padding: padding,
            itemExtent: itemExtent,
            prototypeItem: prototypeItem,
            itemCount: itemCount,
            addAutomaticKeepAlives: addAutomaticKeepAlives!,
            addRepaintBoundaries: addRepaintBoundaries!,
            addSemanticIndexes: addSemanticIndexes!,
            itemBuilder: itemBuilder,)
        : ListView.separated(
            scrollDirection: scrollDirection ?? Axis.vertical,
            reverse: reverse ?? false,
            controller: controller,
            primary: primary,
            physics: physics ?? const BouncingScrollPhysics(),
            shrinkWrap: shrinkWrap ?? false,
            padding: padding,
            itemCount: itemCount,
            addAutomaticKeepAlives: addAutomaticKeepAlives!,
            addRepaintBoundaries: addRepaintBoundaries!,
            addSemanticIndexes: addSemanticIndexes!,
            separatorBuilder: separatorBuilder!,
            itemBuilder: itemBuilder,
          );
  }
}
