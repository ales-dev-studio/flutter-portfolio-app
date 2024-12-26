import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/gen/assets.gen.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/theme/colors.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/check_desktop_size.dart';
import 'package:personal_portfolio/core/utils/check_theme_status.dart';
import 'package:personal_portfolio/core/utils/get_primary_color.dart';
import 'package:personal_portfolio/core/utils/sized_context.dart';

class HomeSectionWidget extends StatelessWidget {
  const HomeSectionWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    const int speed = 150;
    return Stack(
      children: [
        Image.asset(
          width: context.widthPx,
          height: context.heightPx,
          checkSmallDeviceSize(context) ?
          Assets.images.smallHomeBg.path:
          Assets.images.homeBackground.path,
          fit: BoxFit.cover,
        ),
        Container(
          width: context.widthPx,
          height: context.heightPx,
          color: checkDarkMode(context)
              ? Colors.black.withOpacity(0.4)
              : Colors.white.withOpacity(0.1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.largePadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                t.myName,
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                  color: getPrimaryColor(context),
                ),
              ),
              SizedBox(
                width: 250.0,
                child: Row(
                  children: [
                    Text(
                      t.iAm,
                      style: TextStyle(
                        fontSize: 35.0,
                        color: AppColors.white,
                      ),
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 30.0,
                      ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            t.developer,
                            speed: const Duration(milliseconds: speed),
                            textStyle: TextStyle(
                              fontFamily: 'IranYekanXFaNum',
                              color: AppColors.white,
                            ),
                          ),
                          TypewriterAnimatedText(
                            t.designer,
                            speed: const Duration(milliseconds: speed),
                            textStyle: TextStyle(
                              fontFamily: 'IranYekanXFaNum',
                              color: AppColors.white,
                            ),
                          ),
                          TypewriterAnimatedText(
                            t.freelancer,
                            speed: const Duration(milliseconds: speed),
                            textStyle: TextStyle(
                              fontFamily: 'IranYekanXFaNum',
                              color: checkDarkMode(context)
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          TypewriterAnimatedText(
                            t.youtuber,
                            speed: const Duration(milliseconds: speed),
                            textStyle: TextStyle(
                              fontFamily: 'IranYekanXFaNum',
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
