import 'dart:math' as math;

import 'package:flutter/widgets.dart';

class AnimatedFlipCounter extends StatelessWidget {
  const AnimatedFlipCounter({
    super.key,
    required this.value,
    this.duration = const Duration(milliseconds: 300),
    this.curve = Curves.linear,
    this.style,
    this.prefix,
    this.suffix,
    this.fractionDigits = 0,
    this.wholeDigits = 1,
    this.thousandSeparator,
    this.decimalSeparator = '.',
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.padding = EdgeInsets.zero,
  })  : assert(fractionDigits >= 0, 'fractionDigits must be non-negative'),
        assert(wholeDigits >= 0, 'wholeDigits must be non-negative');
  final num value;
  final Duration duration;
  final Curve curve;
  final TextStyle? style;
  final String? prefix;
  final String? suffix;

  /// How many digits to display, after the decimal point.
  ///
  /// The actual [value] will be rounded to the nearest digit.
  final int fractionDigits;

  /// How many digits to display, before the decimal point.
  ///
  /// For example, `wholeDigits: 4` means it will pad `48` into `0048`.
  /// Default value is `1`, setting it to `0` would turn `0.7` into `.7`.
  /// If the actual [value] has more digits, this property will be ignored.
  final int wholeDigits;

  /// Insert a symbol between every 3 digits, for example: 1,000,000.
  ///
  /// Typical symbol is either a comma or a period, based on locale. Default
  /// value is null, which disables this feature.
  final String? thousandSeparator;

  /// Insert a symbol between the integer part and the fractional part.
  ///
  /// Default value is a period. Can be changed to a comma for certain locale.
  final String decimalSeparator;

  final MainAxisAlignment mainAxisAlignment;

  final EdgeInsets padding;

  @override
  Widget build(final BuildContext context) {
    final textStyle = DefaultTextStyle.of(context).style.merge(style);
    // Layout number "8" (probably the widest digit) to see its size
    final prototypeDigit = TextPainter(
      text: TextSpan(text: '8', style: textStyle),
      textDirection: TextDirection.ltr,
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
    )..layout();

    // Find the text color (or red as warning). This is so we can avoid using
    // `Opacity` and `AnimatedOpacity` widget, for better performance.
    final Color color = textStyle.color ?? const Color(0xffff0000);

    // Convert the decimal value to int. For example, if we want 2 decimal
    // places, we will convert 5.21 into 521.
    final int value = (this.value * math.pow(10, fractionDigits)).round();

    // Split the integer value into separate digits.
    // For example, to draw 521, we split it into [5, 52, 521].
    List<int> digits = value == 0 ? [0] : [];
    int v = value.abs();
    while (v > 0) {
      digits.add(v);
      v = v ~/ 10;
    }
    while (digits.length < wholeDigits + fractionDigits) {
      digits.add(0);
    }
    digits = digits.reversed.toList(growable: false);

    final integerWidgets = <Widget>[];
    for (int i = 0; i < digits.length - fractionDigits; i++) {
      final digit = _SingleDigitFlipCounter(
        key: ValueKey(digits.length - i),
        value: digits[i].toDouble(),
        duration: duration,
        curve: curve,
        size: prototypeDigit.size,
        color: color,
        padding: padding,
      );
      integerWidgets.add(digit);
    }
    // Insert "thousand separator" widgets if needed.
    if (thousandSeparator != null) {
      int counter = 0;
      for (int i = integerWidgets.length; i > 0; i--) {
        if (counter > 0 && counter % 3 == 0) {
          integerWidgets.insert(i, Text(thousandSeparator!));
        }
        counter++;
      }
    }

    return DefaultTextStyle.merge(
      style: style,
      child: Directionality(
          textDirection: TextDirection.ltr,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: mainAxisAlignment,
          children: [
            if (prefix != null) Text(prefix!),
            ClipRect(
              child: TweenAnimationBuilder(
                // Animate the negative sign (-) appear and disappearing
                duration: duration,
                tween: Tween(end: value < 0 ? 1.0 : 0.0),
                builder: (final _, final double v, final __) => Center(
                  widthFactor: v,
                  child: Opacity(opacity: v, child: const Text('-')),
                ),
              ),
            ),
            ...integerWidgets,
            if (fractionDigits != 0) Text(decimalSeparator),
            for (int i = digits.length - fractionDigits; i < digits.length; i++)
              _SingleDigitFlipCounter(
                key: ValueKey('decimal$i'),
                value: digits[i].toDouble(),
                duration: duration,
                curve: curve,
                size: prototypeDigit.size,
                color: color,
                padding: padding,
              ),
            if (suffix != null) Text(suffix!),
          ],
        ),
      ),
    );
  }
}

class _SingleDigitFlipCounter extends StatelessWidget {
  const _SingleDigitFlipCounter({
    super.key,
    required this.value,
    required this.duration,
    required this.curve,
    required this.size,
    required this.color,
    required this.padding,
  });

  final double value;
  final Duration duration;
  final Curve curve;
  final Size size;
  final Color color;
  final EdgeInsets padding;

  @override
  Widget build(final BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(end: value),
      duration: duration,
      curve: curve,
      builder: (final _, final double value, final __) {
        final whole = value ~/ 1;
        final decimal = value - whole;
        final w = size.width + padding.horizontal;
        final h = size.height + padding.vertical;

        return SizedBox(
          width: w,
          height: h,
          child: Stack(
            children: <Widget>[
              _buildSingleDigit(
                digit: whole % 10,
                offset: h * decimal,
                opacity: 1 - decimal,
              ),
              _buildSingleDigit(
                digit: (whole + 1) % 10,
                offset: h * decimal - h,
                opacity: decimal,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSingleDigit({
    required final int digit,
    required final double offset,
    required final double opacity,
  }) {
    final Widget child;
    if (color.opacity == 1) {
      child = Text(
        '$digit',
        textAlign: TextAlign.center,
        style: TextStyle(color: color.withOpacity(opacity.clamp(0, 1))),
      );
    } else {
      child = Opacity(
        opacity: opacity.clamp(0, 1),
        child: Text(
          '$digit',
          textAlign: TextAlign.center,
        ),
      );
    }
    return Positioned(
      left: 0,
      right: 0,
      bottom: offset + padding.bottom,
      child: child,
    );
  }
}
