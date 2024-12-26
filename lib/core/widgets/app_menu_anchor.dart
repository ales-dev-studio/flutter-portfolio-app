import 'package:flutter/material.dart';

class AppMenuAnchor extends StatelessWidget {
  const AppMenuAnchor({super.key, required this.menuChildren});

  final List<Widget> menuChildren;

  @override
  Widget build(final BuildContext context) {
    return MenuAnchor(
      builder: (
        final BuildContext context,
        final MenuController controller,
        final Widget? child,
      ) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: const Icon(Icons.more_vert),
        );
      },
      menuChildren: menuChildren,
      style: MenuStyle(
        elevation: MaterialStateProperty.resolveWith(
          (final Set<MaterialState> states) => 5,
        ),
      ),
    );
  }
}
