/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/delivery_man.png
  AssetGenImage get deliveryMan =>
      const AssetGenImage('assets/images/delivery_man.png');

  /// File path: assets/images/delivery_man_masked.png
  AssetGenImage get deliveryManMasked =>
      const AssetGenImage('assets/images/delivery_man_masked.png');

  $AssetsImagesFruitGen get fruit => const $AssetsImagesFruitGen();

  /// File path: assets/images/undraw_On_the_way_re_swjt.png
  AssetGenImage get undrawOnTheWayReSwjt =>
      const AssetGenImage('assets/images/undraw_On_the_way_re_swjt.png');

  /// File path: assets/images/undraw_Online_payments_re_y8f2.png
  AssetGenImage get undrawOnlinePaymentsReY8f2 =>
      const AssetGenImage('assets/images/undraw_Online_payments_re_y8f2.png');

  /// File path: assets/images/undraw_online_groceries_a02y.png
  AssetGenImage get undrawOnlineGroceriesA02y =>
      const AssetGenImage('assets/images/undraw_online_groceries_a02y.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        deliveryMan,
        deliveryManMasked,
        undrawOnTheWayReSwjt,
        undrawOnlinePaymentsReY8f2,
        undrawOnlineGroceriesA02y
      ];
}

class $AssetsImagesFruitGen {
  const $AssetsImagesFruitGen();

  /// File path: assets/images/fruit/apple.png
  AssetGenImage get apple =>
      const AssetGenImage('assets/images/fruit/apple.png');

  /// File path: assets/images/fruit/banana.png
  AssetGenImage get banana =>
      const AssetGenImage('assets/images/fruit/banana.png');

  /// File path: assets/images/fruit/blueberries.png
  AssetGenImage get blueberries =>
      const AssetGenImage('assets/images/fruit/blueberries.png');

  /// File path: assets/images/fruit/guava.png
  AssetGenImage get guava =>
      const AssetGenImage('assets/images/fruit/guava.png');

  /// File path: assets/images/fruit/mango.png
  AssetGenImage get mango =>
      const AssetGenImage('assets/images/fruit/mango.png');

  /// File path: assets/images/fruit/orange.png
  AssetGenImage get orange =>
      const AssetGenImage('assets/images/fruit/orange.png');

  /// File path: assets/images/fruit/pear.png
  AssetGenImage get pear => const AssetGenImage('assets/images/fruit/pear.png');

  /// File path: assets/images/fruit/pineapple.png
  AssetGenImage get pineapple =>
      const AssetGenImage('assets/images/fruit/pineapple.png');

  /// File path: assets/images/fruit/raspberries.png
  AssetGenImage get raspberries =>
      const AssetGenImage('assets/images/fruit/raspberries.png');

  /// File path: assets/images/fruit/watermelon.png
  AssetGenImage get watermelon =>
      const AssetGenImage('assets/images/fruit/watermelon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        apple,
        banana,
        blueberries,
        guava,
        mango,
        orange,
        pear,
        pineapple,
        raspberries,
        watermelon
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
