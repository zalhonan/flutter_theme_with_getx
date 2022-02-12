import 'package:flutter/material.dart';
import 'package:get_theme_demo/themes/palette.dart';

class AppColorScheme {
  static const ColorScheme lightScheme = ColorScheme.light(
    primary: Palette.tiffany,
    background: Palette.white,
  );

  static const ColorScheme darkScheme = ColorScheme.dark(
    primary: Palette.orange,
    background: Palette.lightGreen,
  );
}
