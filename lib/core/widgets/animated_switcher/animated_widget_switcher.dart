import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/widgets/animated_switcher/animated_widget_switcher_controller.dart';

class AnimatedWidgetSwitcher extends StatefulWidget {
  const AnimatedWidgetSwitcher({
    required this.controller,
    required this.children,
    super.key,
    this.onTap,
    this.size = 24.0,
    this.duration = const Duration(milliseconds: 300),
    this.clockwise = true,
    this.isActive = true,
  }) : assert(children.length == 2, _kRequiredChildrenAssertMessage);

  /// A [controller] class that provides full control over the SVGs.
  final WidgetSwitcherController controller;

  /// Only two [children] are required therefore more or less than number of
  /// widgets will throw an error.
  final List<Widget> children;

  /// [onTap] Function that provides you the ability to control tap action.
  ///
  /// With this function, you can easily assign tasks to the widget.
  final void Function()? onTap;

  /// A variable to determine the [size] of the AnimatedSvg.
  ///
  /// Default value is 24.0.
  final double size;

  /// A variable to determine the [duration] of the animation.
  ///
  /// Default value is Duration(milliseconds: 300).
  final Duration duration;

  /// A variable to determine the direction of the animation.
  ///
  /// Default value is true.
  final bool clockwise;

  /// A variable to set the state of the widget.
  ///
  /// Default value is true.
  final bool isActive;

  @override
  State<AnimatedWidgetSwitcher> createState() => _AnimatedWidgetSwitcherState();
}

class _AnimatedWidgetSwitcherState extends State<AnimatedWidgetSwitcher>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    widget.controller
      ..init(
        AnimationController(
          vsync: this,
          duration: widget.duration,
        ),
      )
      ..addListener(listener);
  }

  void listener() {
    if (!mounted) {
      return;
    }

    setState(() {});
  }

  @override
  void dispose() {
    widget.controller
      ..removeListener(listener)
      ..dispose();

    super.dispose();
  }

  void onTap() {
    if (!widget.isActive) {
      return;
    }
    if (widget.controller.isAnimating) {
      return;
    }
    widget.onTap?.call();
    if (widget.controller.isCompleted) {
      widget.controller.reverse();
    } else {
      widget.controller.forward();
    }
  }

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: drawWidgetBoxes(),
      ),
    );
  }

  List<Widget> drawWidgetBoxes() {
    final children = <Widget>[];
    final controllerValueX = widget.controller.value;
    final controllerValueY = 1.0 - widget.controller.value;
    final angleX = math.pi / 180.0 * (180.0 * controllerValueX);
    final angleY = math.pi / 180.0 * (180.0 * controllerValueY);

    if (controllerValueX == 1.0 && controllerValueY == 0.0) {
      children.add(
        WidgetBox(
          widget: widget.children[1],
          angle: widget.clockwise ? -angleY : angleY,
          opacity: controllerValueX,
          size: widget.size,
        ),
      );
    } else {
      children.add(
        WidgetBox(
          widget: widget.children[0],
          angle: widget.clockwise ? angleX : -angleX,
          opacity: controllerValueY,
          size: widget.size,
        ),
      );
    }

    if (controllerValueX == 0.0 && controllerValueY == 1.0) {
      children.add(
        WidgetBox(
          widget: widget.children[0],
          angle: widget.clockwise ? angleX : -angleX,
          opacity: controllerValueY,
          size: widget.size,
        ),
      );
    } else {
      children.add(
        WidgetBox(
          widget: widget.children[1],
          angle: widget.clockwise ? -angleY : angleY,
          opacity: controllerValueX,
          size: widget.size,
        ),
      );
    }
    return children;
  }
}

class WidgetBox extends StatelessWidget {
  const WidgetBox({
    required this.widget,
    required this.angle,
    required this.opacity,
    required this.size,
    super.key,
  });

  final Widget widget;
  final double angle;
  final double opacity;
  final double size;

  @override
  Widget build(final BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Opacity(
        opacity: opacity,
        child: SizedBox(
          height: size,
          width: size,
          child: FittedBox(child: widget),
        ),
      ),
    );
  }
}

/// Assertion message to show required children count.
const _kRequiredChildrenAssertMessage = 'AnimatedWidgetSwitcher: '
    'It is required to provide only 2 Widgets as children!';
