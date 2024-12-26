import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/widgets/lottie_viewer.dart';

class AppLoading extends StatelessWidget {

  const AppLoading({
    super.key,
    this.width,
    this.height,
  });
  final double? width;
  final double? height;

  @override
  Widget build(final BuildContext context) {
    return Center(
      child: LottieViewer(
        path: 'assets/animations/zp-loading.json',
        width: width ?? 50.0,
        height: height ?? 50.0,
      ),
    );
  }
}
