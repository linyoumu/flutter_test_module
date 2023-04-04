/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetImagesGen {
  const $AssetImagesGen();

  /// File path: asset/images/add.png
  AssetGenImage get add => const AssetGenImage('asset/images/add.png');

  /// File path: asset/images/avatar.jpg
  AssetGenImage get avatar => const AssetGenImage('asset/images/avatar.jpg');

  /// File path: asset/images/default_photo.jpg
  AssetGenImage get defaultPhoto =>
      const AssetGenImage('asset/images/default_photo.jpg');

  /// File path: asset/images/edit.png
  AssetGenImage get edit => const AssetGenImage('asset/images/edit.png');

  /// File path: asset/images/img.png
  AssetGenImage get img => const AssetGenImage('asset/images/img.png');

  /// File path: asset/images/img_1.png
  AssetGenImage get img1 => const AssetGenImage('asset/images/img_1.png');

  /// File path: asset/images/lock.png
  AssetGenImage get lock => const AssetGenImage('asset/images/lock.png');

  /// File path: asset/images/play.png
  AssetGenImage get play => const AssetGenImage('asset/images/play.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [add, avatar, defaultPhoto, edit, img, img1, lock, play];
}

class $AssetVideosGen {
  const $AssetVideosGen();

  /// File path: asset/videos/test.flv
  String get test => 'asset/videos/test.flv';

  /// File path: asset/videos/video1.mp4
  String get video1 => 'asset/videos/video1.mp4';

  /// File path: asset/videos/video2.mp4
  String get video2 => 'asset/videos/video2.mp4';

  /// List of all assets
  List<String> get values => [test, video1, video2];
}

class Assets {
  Assets._();

  static const $AssetImagesGen images = $AssetImagesGen();
  static const $AssetVideosGen videos = $AssetVideosGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
