import 'package:flutter/material.dart';
import 'package:get_theme_demo/themes/palette.dart';

extension CustomColorScheme on ColorScheme {
  Color get success => (brightness == Brightness.light) ? Palette.pink : Palette.blueBright2;

  Color get warning => (brightness == Brightness.light) ? Palette.red : Palette.yellowBright;

  /// для текста

  Color get headline2Color => (brightness == Brightness.light) ? const Color(0xFFFEF0A7) : const Color(0xFFFF89FF);
}
