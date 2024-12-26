import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/widgets/app_list_tile.dart';

class AppNotifyBanner extends StatefulWidget {
  const AppNotifyBanner({
    super.key,
    required this.showBanner,
    required this.title,
    this.subtitle,
    required this.actions,
    this.accentColor,
    this.icon,
  });

  final bool showBanner;
  final String title;
  final String? subtitle;
  final List<Widget>? actions;
  final Color? accentColor;
  final IconData? icon;

  @override
  State<AppNotifyBanner> createState() => _AppNotifyBannerState();
}

class _AppNotifyBannerState extends State<AppNotifyBanner>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    if (widget.showBanner) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(final AppNotifyBanner oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.showBanner != oldWidget.showBanner) {
      switch (_controller.status) {
        case AnimationStatus.completed:
        case AnimationStatus.dismissed:
          widget.showBanner ? _controller.forward() : _controller.reverse();
          break;
        case AnimationStatus.forward:
        case AnimationStatus.reverse:
          break;
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final Widget banner = Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.padding),
      child: AppListTile(
        leading: Icon(
          widget.icon,
        ),
        title: widget.title,
        subtitle: widget.subtitle,
        trailing: widget.actions != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: widget.actions!,
              )
            : null,
      ),
    );

    return Hero(
      tag: '<AppNotifyBanner Hero tag - ${widget.title}>',
      child: MediaQuery.of(context).accessibleNavigation
          ? banner
          : SizeTransition(
              axisAlignment: 1,
              sizeFactor: _animation,
              child: banner,
            ),
    );
  }
}
