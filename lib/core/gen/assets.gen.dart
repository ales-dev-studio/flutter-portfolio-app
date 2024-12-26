/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/not-found.json
  String get notFound => 'assets/animations/not-found.json';

  /// File path: assets/animations/zp-loading.json
  String get zpLoading => 'assets/animations/zp-loading.json';

  /// List of all assets
  List<String> get values => [notFound, zpLoading];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/IRANYekanX-Bold.ttf
  String get iRANYekanXBold => 'assets/fonts/IRANYekanX-Bold.ttf';

  /// File path: assets/fonts/IRANYekanX-Regular.ttf
  String get iRANYekanXRegular => 'assets/fonts/IRANYekanX-Regular.ttf';

  /// File path: assets/fonts/IRANYekanXFaNum-Bold.ttf
  String get iRANYekanXFaNumBold => 'assets/fonts/IRANYekanXFaNum-Bold.ttf';

  /// File path: assets/fonts/IRANYekanXFaNum-Regular.ttf
  String get iRANYekanXFaNumRegular =>
      'assets/fonts/IRANYekanXFaNum-Regular.ttf';

  /// List of all assets
  List<String> get values => [
        iRANYekanXBold,
        iRANYekanXRegular,
        iRANYekanXFaNumBold,
        iRANYekanXFaNumRegular
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/cloack.svg
  String get cloack => 'assets/icons/cloack.svg';

  /// File path: assets/icons/github_logo.png
  AssetGenImage get githubLogo =>
      const AssetGenImage('assets/icons/github_logo.png');

  /// File path: assets/icons/instagram_logo.png
  AssetGenImage get instagramLogo =>
      const AssetGenImage('assets/icons/instagram_logo.png');

  /// File path: assets/icons/logo-1.svg
  String get logo1 => 'assets/icons/logo-1.svg';

  /// File path: assets/icons/logo-2.svg
  String get logo2 => 'assets/icons/logo-2.svg';

  /// File path: assets/icons/logo-3.svg
  String get logo3 => 'assets/icons/logo-3.svg';

  /// File path: assets/icons/logo-4.svg
  String get logo4 => 'assets/icons/logo-4.svg';

  /// File path: assets/icons/logo-5.svg
  String get logo5 => 'assets/icons/logo-5.svg';

  /// File path: assets/icons/logo-6.svg
  String get logo6 => 'assets/icons/logo-6.svg';

  /// File path: assets/icons/pause.svg
  String get pause => 'assets/icons/pause.svg';

  /// File path: assets/icons/play.svg
  String get play => 'assets/icons/play.svg';

  /// File path: assets/icons/projects-list.svg
  String get projectsList => 'assets/icons/projects-list.svg';

  /// File path: assets/icons/telegram_logo.png
  AssetGenImage get telegramLogo =>
      const AssetGenImage('assets/icons/telegram_logo.png');

  /// File path: assets/icons/users.svg
  String get users => 'assets/icons/users.svg';

  /// File path: assets/icons/whatsapp_logo.png
  AssetGenImage get whatsappLogo =>
      const AssetGenImage('assets/icons/whatsapp_logo.png');

  /// File path: assets/icons/youtube_logo.png
  AssetGenImage get youtubeLogo =>
      const AssetGenImage('assets/icons/youtube_logo.png');

  /// List of all assets
  List<dynamic> get values => [
        cloack,
        githubLogo,
        instagramLogo,
        logo1,
        logo2,
        logo3,
        logo4,
        logo5,
        logo6,
        pause,
        play,
        projectsList,
        telegramLogo,
        users,
        whatsappLogo,
        youtubeLogo
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ales-logo.svg
  String get alesLogo => 'assets/images/ales-logo.svg';

  /// File path: assets/images/home-background.jpg
  AssetGenImage get homeBackground =>
      const AssetGenImage('assets/images/home-background.jpg');

  /// File path: assets/images/profile-image.jpg
  AssetGenImage get profileImage =>
      const AssetGenImage('assets/images/profile-image.jpg');

  /// File path: assets/images/sample.svg
  String get sample => 'assets/images/sample.svg';

  /// File path: assets/images/small-home-bg.jpg
  AssetGenImage get smallHomeBg =>
      const AssetGenImage('assets/images/small-home-bg.jpg');

  /// List of all assets
  List<dynamic> get values =>
      [alesLogo, homeBackground, profileImage, sample, smallHomeBg];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const String pubspec = 'pubspec.yaml';

  /// List of all assets
  static List<String> get values => [pubspec];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
