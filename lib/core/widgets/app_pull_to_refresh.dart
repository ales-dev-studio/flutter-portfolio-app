import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/widgets/app_loading.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_text_button.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AppPullToRefresh extends StatelessWidget {
  const AppPullToRefresh({
    super.key,
    required this.child,
    required this.onRefresh,
    required this.refreshController,
    this.scrollController,
    this.onLoading,
    this.showFooter = false,
  });

  final Widget child;
  final RefreshController refreshController;
  final ScrollController? scrollController;
  final Function onRefresh;
  final Function? onLoading;
  final bool? showFooter;

  @override
  Widget build(final BuildContext context) {
    return SmartRefresher(
      enablePullUp: onLoading == null,
      scrollController: scrollController,
      footer: showFooter!
          ? CustomFooter(
              builder: (final BuildContext context, final LoadStatus? mode) {
                Widget body;
                switch (mode) {
                  case LoadStatus.idle:
                  case LoadStatus.canLoading:
                    body = const Center();
                    break;
                  case LoadStatus.loading:
                    body = const AppLoading();
                    break;
                  case LoadStatus.failed:
                    body = SizedBox(
                      width: 150.0,
                      child: AppTextButton(
                        onPressed: () => onLoading?.call(),
                        title: t.seeMore,
                      ),
                    );
                    break;
                  case LoadStatus.noMore:
                  case null:
                    body = const Text('');
                }
                return SizedBox(
                  height: 30.0,
                  child: Center(child: body),
                );
              },
            )
          : CustomFooter(
              height: 0.0,
              builder: (final BuildContext context, final LoadStatus? mode) {
                return const SizedBox.shrink();
              },
            ),
      header: const ClassicHeader(
        completeText: ' ',
        releaseText: ' ',
        refreshingText: ' ',
        failedText: ' ',
        idleText: ' ',
        completeIcon: Icon(
          Icons.check,
          size: 0.0,
        ),
        refreshingIcon: CupertinoActivityIndicator(),
        idleIcon: RotatedBox(
          quarterTurns: 45,
          child: Icon(
            Icons.arrow_right_alt_outlined,
            color: Colors.grey,
          ),
        ),
        releaseIcon: RotatedBox(
          quarterTurns: 135,
          child: Icon(
            Icons.arrow_right_alt_outlined,
            color: Colors.grey,
          ),
        ),
      ),
      controller: refreshController,
      onRefresh: onRefresh as void Function()?,
      onLoading: onLoading as void Function()?,
      child: child,
    );
  }
}
