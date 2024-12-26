import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieViewer extends StatelessWidget {

  const LottieViewer({
    super.key,
    required this.path,
    this.width,
    this.height,
  });
  final String path;
  final double? width;
  final double? height;

  @override
  Widget build(final BuildContext context) {
    return Lottie.asset(
      path,
      width: width ?? 100,
      height: height ?? 100,
    );
  }
}
