import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AppRatingBar extends StatelessWidget {
  const AppRatingBar({
    super.key,
    required this.rate,
    this.itemPadding,
    this.starSize,
    this.onRatingUpdate,
    this.ignoreGestures = true,
    this.allowHalfRating = true,
  });

  final double rate;
  final double? itemPadding;
  final double? starSize;
  final ValueChanged<double>? onRatingUpdate;
  final bool ignoreGestures;
  final bool allowHalfRating;

  @override
  Widget build(final BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: RatingBar.builder(
          initialRating: rate,
          allowHalfRating: allowHalfRating,
          itemSize: starSize ?? 15,
          ignoreGestures: ignoreGestures,
          itemPadding: EdgeInsets.symmetric(
            horizontal: itemPadding ?? 0.0,
          ),
          itemBuilder: (final BuildContext context, final int index) =>
              const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: onRatingUpdate ?? (final double value) {},
        ),
      ),
    );
  }
}
