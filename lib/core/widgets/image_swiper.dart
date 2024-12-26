import 'dart:async';

import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/widgets/app_cache_image.dart';
import 'package:personal_portfolio/core/widgets/app_space.dart';
import 'package:personal_portfolio/core/widgets/buttons/app_fab.dart';
import 'package:personal_portfolio/core/widgets/page_indicator.dart';

class ImageSwiper extends StatefulWidget {
  const ImageSwiper({
    super.key,
    required this.imageList,
    required this.width,
    required this.height,
    this.duration = 10000,
  });

  final List<String> imageList;
  final double width;
  final double height;
  final int duration;

  @override
  State<ImageSwiper> createState() => _ImageSwiperState();
}

class _ImageSwiperState extends State<ImageSwiper> {
  late final PageController pageController;
  bool showButtons = false;

  @override
  void initState() {
    pageController = PageController();
    Timer.periodic(Duration(milliseconds: widget.duration),
        (final Timer timer) {
      if(mounted){
        pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    switch (Theme.of(context).platform) {
      case TargetPlatform.windows:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
        showButtons = true;
        break;
      case TargetPlatform.iOS:
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        break;
    }
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: widget.width,
              height: widget.height,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (final int position) {},
                allowImplicitScrolling: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (final BuildContext context, final int position) {
                  return AppCacheImage(
                    imageUrl:
                        widget.imageList[position % widget.imageList.length],
                    boxFit: BoxFit.fitHeight,
                  );
                },
              ),
            ),
            if (showButtons) ...<Widget>[
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Container(
                  margin: EdgeInsets.only(
                    top: widget.height * 0.5 - 20,
                  ),
                  padding: const EdgeInsets.all(Dimens.base),
                  width: 55.0,
                  height: 55.0,
                  child: FittedBox(
                    child: AppFab(
                      onPressed: () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      icon: Icons.chevron_right,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Container(
                  margin: EdgeInsets.only(
                    top: widget.height * 0.5 - 20,
                  ),
                  padding: const EdgeInsets.all(Dimens.base),
                  width: 55.0,
                  height: 55.0,
                  child: FittedBox(
                    child: AppFab(
                      onPressed: () {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      icon: Icons.chevron_left,
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
        const AppVSpace(space: Dimens.veryLargePadding),
        SizedBox(
          height: Dimens.base,
          child: AppPageIndicator(
            controller: pageController,
            count: widget.imageList.length,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
