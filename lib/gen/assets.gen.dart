/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/addIcon.svg
  String get addIcon => 'assets/icons/addIcon.svg';

  /// File path: assets/icons/bellIcon.svg
  String get bellIcon => 'assets/icons/bellIcon.svg';

  /// File path: assets/icons/cameraIcon.svg
  String get cameraIcon => 'assets/icons/cameraIcon.svg';

  /// File path: assets/icons/chanceHeader.svg
  String get chanceHeader => 'assets/icons/chanceHeader.svg';

  /// File path: assets/icons/chatIcon.svg
  String get chatIcon => 'assets/icons/chatIcon.svg';

  /// File path: assets/icons/commentIcon.svg
  String get commentIcon => 'assets/icons/commentIcon.svg';

  /// File path: assets/icons/filterIcon.svg
  String get filterIcon => 'assets/icons/filterIcon.svg';

  /// File path: assets/icons/galleryIcon.svg
  String get galleryIcon => 'assets/icons/galleryIcon.svg';

  /// File path: assets/icons/heartIcon.svg
  String get heartIcon => 'assets/icons/heartIcon.svg';

  /// File path: assets/icons/homeFilledIcon.svg
  String get homeFilledIcon => 'assets/icons/homeFilledIcon.svg';

  /// File path: assets/icons/profileIcon.svg
  String get profileIcon => 'assets/icons/profileIcon.svg';

  /// File path: assets/icons/saveIcon.svg
  String get saveIcon => 'assets/icons/saveIcon.svg';

  /// File path: assets/icons/searchIcon.svg
  String get searchIcon => 'assets/icons/searchIcon.svg';

  /// File path: assets/icons/sendIcon.svg
  String get sendIcon => 'assets/icons/sendIcon.svg';

  /// File path: assets/icons/settingIcon.svg
  String get settingIcon => 'assets/icons/settingIcon.svg';

  /// File path: assets/icons/shareIcon.svg
  String get shareIcon => 'assets/icons/shareIcon.svg';

  /// File path: assets/icons/threeDotIcon.svg
  String get threeDotIcon => 'assets/icons/threeDotIcon.svg';

  /// File path: assets/icons/topicIcon.svg
  String get topicIcon => 'assets/icons/topicIcon.svg';

  /// File path: assets/icons/verifyIcon.svg
  String get verifyIcon => 'assets/icons/verifyIcon.svg';

  /// List of all assets
  List<String> get values => [
        addIcon,
        bellIcon,
        cameraIcon,
        chanceHeader,
        chatIcon,
        commentIcon,
        filterIcon,
        galleryIcon,
        heartIcon,
        homeFilledIcon,
        profileIcon,
        saveIcon,
        searchIcon,
        sendIcon,
        settingIcon,
        shareIcon,
        threeDotIcon,
        topicIcon,
        verifyIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/natauralImage.png
  AssetGenImage get natauralImage =>
      const AssetGenImage('assets/images/natauralImage.png');

  /// File path: assets/images/user1Image.png
  AssetGenImage get user1Image =>
      const AssetGenImage('assets/images/user1Image.png');

  /// File path: assets/images/user2Image.png
  AssetGenImage get user2Image =>
      const AssetGenImage('assets/images/user2Image.png');

  /// List of all assets
  List<AssetGenImage> get values => [natauralImage, user1Image, user2Image];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
