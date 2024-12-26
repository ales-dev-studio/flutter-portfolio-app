import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/utils/check_desktop_size.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.children,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  });

  final List<Widget> children;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(final BuildContext context) {
    return Center(
      child: checkDesktopSize(context)
          ? Row(
              mainAxisAlignment:
                  mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.start,
              children: children,
            )
          : Column(
              mainAxisAlignment:
                  mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.center,
              children: children,
            ),
    );
  }
}
