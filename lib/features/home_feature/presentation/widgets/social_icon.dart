import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';
import 'package:personal_portfolio/core/utils/get_primary_color.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.onTap,
    required this.imageUrl,
  });

  final GestureTapCallback onTap;
  final String imageUrl;

  @override
  Widget build(final BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        Dimens.largePadding,
      ),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(Dimens.padding),
        child: Image.asset(
          imageUrl,
          width: 30.0,
          color: getPrimaryColor(context),
        ),
      ),
    );
  }
}
