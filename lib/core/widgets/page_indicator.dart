import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/colors.dart';
import 'package:personal_portfolio/core/utils/check_theme_status.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppPageIndicator extends StatelessWidget {

  const AppPageIndicator({
    super.key,
    required this.controller,
    required this.count,
  });
  final PageController controller;
  final int count;

  @override
  Widget build(final BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      effect: ExpandingDotsEffect(
        activeDotColor: checkDarkMode(context)
            ? AppColors.lightPrimaryColor
            : Theme.of(context).primaryColor,
        dotColor: Colors.grey.shade300,
        dotWidth: 10.0,
        dotHeight: 10.0,
      ),
    );
  }
}
