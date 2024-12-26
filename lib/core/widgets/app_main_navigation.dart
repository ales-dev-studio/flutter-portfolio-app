import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/utils/check_desktop_size.dart';
import 'package:personal_portfolio/core/widgets/app_divider.dart';

class AppMainNavigation extends StatelessWidget {
  const AppMainNavigation({
    super.key,
    required this.body,
    this.drawer,
    this.bottomNavigationBar,
    this.navigationRail,
  });

  final Drawer? drawer;
  final Widget? bottomNavigationBar;
  final Widget body;
  final Widget? navigationRail;

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      body: !checkDesktopSize(context)
          ? body
          : Row(
              children: [
                if (checkDesktopSize(context) && navigationRail != null)
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 56.0),
                        child: navigationRail,
                      ),
                      const AppDivider(
                        width: 1,
                        verticalDivider: true,
                      ),
                    ],
                  )
                else
                  const SizedBox.shrink(),
                Expanded(
                  child: body,
                ),
              ],
            ),
      drawer: drawer,
      bottomNavigationBar:
          !checkDesktopSize(context) ? bottomNavigationBar : null,
    );
  }
}
