import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*
    To use these colors you need to import this class:
    import '../../../resources/colors/custom_color_scheme.dart';
*/
extension CustomColorScheme on ColorScheme {
  // bool isLight = Get.theme.brightness == Brightness.light;
  // так нельзя! Extensions can't declare instance fields

  Color get success => (Get.theme.brightness == Brightness.light) ? const Color(0xFF7CDF8B) : const Color(0xFFA9ECF0);

  Color get warning => (Get.theme.brightness == Brightness.light) ? const Color(0xFFFF8941) : const Color(0xFF7CDF8B);

  // так сделать можно, но не будет меняться тема - isLight фиксируется при компилляции
  static bool isLight = Get.theme.brightness == Brightness.light;

  Color get successStatic => isLight ? const Color(0xFF7CDF8B) : const Color(0xFFA9ECF0);

  Color get warningStatic => isLight ? const Color(0xFFFF8941) : const Color(0xFF7CDF8B);

  // Color get primaryExtraLight => const Color(0xFFF6F6F6);

  // Color get primaryText => const Color(0xFF333333);

  // Color get boldShade => const Color(0xFF999999);

  // Color get midShade => const Color(0xFFC4C4C4);

  // Color get lightShade => const Color(0xFFE0E0E0);

  // Color get extraLightShade => const Color(0xFFEEEEEE);

  // Color get thinShade => const Color(0xFFF6F6F6);

  // Color get dce4ff => const Color(0xFFE9FAFB);

  // Color get c3d1ff => const Color(0xFFC3D1FF);

  // Color get fcd4fc => const Color(0xFFFCD4FC);
  // Color get a9ecf0 => const Color(0xFFA9ECF0);
  // Color get fef0a7 => const Color(0xFFFEF0A7);
  // Color get ff80afb1 => const Color(0xFF80AFB1);
}
