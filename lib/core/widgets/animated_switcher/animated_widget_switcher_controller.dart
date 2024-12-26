import 'package:flutter/material.dart';

abstract class WidgetSwitcherController {
  /// A getter that provides the current [value] of the controller.
  double get value;

  /// A getter that returns true if the animation is running.
  bool get isAnimating;

  /// A getter that returns true if the animation is completed.
  bool get isCompleted;

  /// A method to initialize SvgController.
  ///
  /// This needs to be called before everything else.
  void init(final AnimationController controller);

  /// A method to run animation in the [forward] direction.
  bool forward();

  /// A method to run animation in the [reverse] direction.
  bool reverse();

  /// A method to add a [listener] to the controller.
  void addListener(final void Function() listener);

  /// A method to remove a [listener] from the controller.
  void removeListener(final void Function() listener);

  void dispose();
}

class AnimatedWidgetSwitcherController implements WidgetSwitcherController {
  AnimatedWidgetSwitcherController();

  AnimationController? _controller;

  @override
  double get value => _controller != null ? _controller!.value : 0.0;

  @override
  bool get isAnimating {
    if (_controller == null) {
      return false;
    }

    return _controller!.value > 0.0 && _controller!.value < 1.0;
  }

  @override
  bool get isCompleted => _controller?.value == 1.0;

  @override
  void init(final AnimationController controller) {
    if (_controller != null) {
      return;
    }
    _controller = controller;
  }

  @override
  bool forward() {
    if (_controller == null) {
      return false;
    }
    _controller!.forward();
    return true;
  }

  @override
  bool reverse() {
    if (_controller == null) {
      return false;
    }
    _controller!.reverse();
    return true;
  }

  @override
  void addListener(final void Function() listener) {
    if (_controller == null) {
      return;
    }
    _controller!.addListener(listener);
  }

  @override
  void removeListener(final void Function() listener) {
    if (_controller == null) {
      return;
    }
    _controller!.removeListener(listener);
  }

  @override
  void dispose() {
    if (_controller != null) {
      _controller!.dispose();
      _controller = null;
    }
  }
}
