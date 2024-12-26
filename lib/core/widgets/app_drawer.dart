import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/widgets/app_divider.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';

class AppDrawer extends StatelessWidget {

  const AppDrawer({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
  });
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(final BuildContext context) {
    return NavigationDrawer(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      children: [
        const AppVSpace(
          space: Dimens.largePadding,
        ),
        const Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: FlutterLogo(),
          ),
        ),
        const AppVSpace(
          space: Dimens.largePadding,
        ),
        const AppDivider(),
        const AppVSpace(),
        ...fDestinations.map(
          (final AppNavigationDestination destination) {
            return NavigationDrawerDestination(
              label: Text(destination.label),
              icon: destination.icon,
              selectedIcon: destination.selectedIcon,
            );
          },
        ),
        const AppVSpace(),
        const AppDivider(),
        const AppVSpace(),
        ...tDestinations.map(
          (final AppNavigationDestination destination) {
            return NavigationDrawerDestination(
              label: Text(destination.label),
              icon: destination.icon,
              selectedIcon: destination.selectedIcon,
            );
          },
        ),
      ],
    );
  }
}

const List<AppNavigationDestination> fDestinations = <AppNavigationDestination>[
  AppNavigationDestination(
    label: 'home',
    selectedIcon: Icon(Icons.home),
    icon: Icon(Icons.home_outlined),
  ),
  AppNavigationDestination(
    label: 'Store',
    selectedIcon: Icon(Icons.store_mall_directory),
    icon: Icon(Icons.store_mall_directory_outlined),
  ),
  AppNavigationDestination(
    label: 'Widgets',
    selectedIcon: Icon(Icons.widgets),
    icon: Icon(Icons.widgets_outlined),
  ),
  AppNavigationDestination(
    label: 'Components',
    selectedIcon: Icon(Icons.account_tree),
    icon: Icon(Icons.account_tree_outlined),
  ),
];

const List<AppNavigationDestination> tDestinations = <AppNavigationDestination>[
  AppNavigationDestination(
    label: 'Inbox',
    icon: Icon(Icons.inbox_outlined),
    selectedIcon: Icon(Icons.inbox),
  ),
  AppNavigationDestination(
    label: 'Outbox',
    icon: Icon(Icons.send_outlined),
    selectedIcon: Icon(Icons.send),
  ),
  AppNavigationDestination(
    label: 'Favorites',
    icon: Icon(Icons.favorite_outline),
    selectedIcon: Icon(Icons.favorite),
  ),
  AppNavigationDestination(
    label: 'Trash',
    icon: Icon(Icons.delete_outline),
    selectedIcon: Icon(Icons.delete),
  ),
];

class AppNavigationDestination {
  const AppNavigationDestination({
    required this.label,
    required this.icon,
    required this.selectedIcon,
  });

  final String label;
  final Widget icon;
  final Widget selectedIcon;
}
