import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/widgets/app_loading.dart';

class AppCacheImage extends StatelessWidget {
  const AppCacheImage({
    super.key,
    this.imageUrl,
    this.boxFit,
    this.color,
  });

  final String? imageUrl;
  final Color? color;
  final BoxFit? boxFit;

  @override
  Widget build(final BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl ?? '',
      color: color,
      progressIndicatorBuilder: (
        final BuildContext context,
        final String url,
        final DownloadProgress downloadProgress,
      ) =>
          const AppLoading(),
      fit: boxFit ?? BoxFit.fill,
      errorWidget:
          (final BuildContext context, final String url, final error) =>
              const Icon(
        Icons.image_outlined,
        size: 17,
        color: Colors.grey,
      ),
    );
  }
}
