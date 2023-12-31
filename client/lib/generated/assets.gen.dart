/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_error_warning_fill.svg
  SvgGenImage get icErrorWarningFill =>
      const SvgGenImage('assets/icons/ic_error_warning_fill.svg');

  /// File path: assets/icons/ic_eye.svg
  SvgGenImage get icEye => const SvgGenImage('assets/icons/ic_eye.svg');

  /// File path: assets/icons/ic_eye_slash.svg
  SvgGenImage get icEyeSlash =>
      const SvgGenImage('assets/icons/ic_eye_slash.svg');

  /// File path: assets/icons/ic_logout.svg
  SvgGenImage get icLogout => const SvgGenImage('assets/icons/ic_logout.svg');

  /// File path: assets/icons/ic_profile.svg
  SvgGenImage get icProfile => const SvgGenImage('assets/icons/ic_profile.svg');

  /// File path: assets/icons/ic_setting.svg
  SvgGenImage get icSetting => const SvgGenImage('assets/icons/ic_setting.svg');

  /// File path: assets/icons/pc_fetch_api.svg
  SvgGenImage get pcFetchApi =>
      const SvgGenImage('assets/icons/pc_fetch_api.svg');

  /// File path: assets/icons/pc_hint_camera.svg
  SvgGenImage get pcHintCamera =>
      const SvgGenImage('assets/icons/pc_hint_camera.svg');

  /// File path: assets/icons/pc_hint_camera_change_position.svg
  SvgGenImage get pcHintCameraChangePosition =>
      const SvgGenImage('assets/icons/pc_hint_camera_change_position.svg');

  /// File path: assets/icons/pc_hint_camera_select_url.svg
  SvgGenImage get pcHintCameraSelectUrl =>
      const SvgGenImage('assets/icons/pc_hint_camera_select_url.svg');

  /// File path: assets/icons/pc_label_action_des1.svg
  SvgGenImage get pcLabelActionDes1 =>
      const SvgGenImage('assets/icons/pc_label_action_des1.svg');

  /// File path: assets/icons/pc_label_action_des2.svg
  SvgGenImage get pcLabelActionDes2 =>
      const SvgGenImage('assets/icons/pc_label_action_des2.svg');

  /// File path: assets/icons/pc_no_data.svg
  SvgGenImage get pcNoData => const SvgGenImage('assets/icons/pc_no_data.svg');

  /// File path: assets/icons/pc_tutorial_step1.svg
  SvgGenImage get pcTutorialStep1 =>
      const SvgGenImage('assets/icons/pc_tutorial_step1.svg');

  /// File path: assets/icons/pc_tutorial_step2.svg
  SvgGenImage get pcTutorialStep2 =>
      const SvgGenImage('assets/icons/pc_tutorial_step2.svg');

  /// File path: assets/icons/pc_tutorial_step3.svg
  SvgGenImage get pcTutorialStep3 =>
      const SvgGenImage('assets/icons/pc_tutorial_step3.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icErrorWarningFill,
        icEye,
        icEyeSlash,
        icLogout,
        icProfile,
        icSetting,
        pcFetchApi,
        pcHintCamera,
        pcHintCameraChangePosition,
        pcHintCameraSelectUrl,
        pcLabelActionDes1,
        pcLabelActionDes2,
        pcNoData,
        pcTutorialStep1,
        pcTutorialStep2,
        pcTutorialStep3
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_logo.jpg
  AssetGenImage get appLogo =>
      const AssetGenImage('assets/images/app_logo.jpg');

  /// File path: assets/images/image_loading.png
  AssetGenImage get imageLoading =>
      const AssetGenImage('assets/images/image_loading.png');

  /// File path: assets/images/pc_ai.jpg
  AssetGenImage get pcAi => const AssetGenImage('assets/images/pc_ai.jpg');

  /// File path: assets/images/pc_camera_controller_des1.jpg
  AssetGenImage get pcCameraControllerDes1 =>
      const AssetGenImage('assets/images/pc_camera_controller_des1.jpg');

  /// File path: assets/images/pc_camera_controller_des2.jpg
  AssetGenImage get pcCameraControllerDes2 =>
      const AssetGenImage('assets/images/pc_camera_controller_des2.jpg');

  /// File path: assets/images/pc_fetch_api.png
  AssetGenImage get pcFetchApi =>
      const AssetGenImage('assets/images/pc_fetch_api.png');

  /// File path: assets/images/pc_no_internet.jpg
  AssetGenImage get pcNoInternet =>
      const AssetGenImage('assets/images/pc_no_internet.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        appLogo,
        imageLoading,
        pcAi,
        pcCameraControllerDes1,
        pcCameraControllerDes2,
        pcFetchApi,
        pcNoInternet
      ];
}

class $AssetsLottiesGen {
  const $AssetsLottiesGen();

  /// File path: assets/lotties/lt_rotate_phone.json
  LottieGenImage get ltRotatePhone =>
      const LottieGenImage('assets/lotties/lt_rotate_phone.json');

  /// List of all assets
  List<LottieGenImage> get values => [ltRotatePhone];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/vi.json
  String get vi => 'assets/translations/vi.json';

  /// List of all assets
  List<String> get values => [vi];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottiesGen lotties = $AssetsLottiesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
