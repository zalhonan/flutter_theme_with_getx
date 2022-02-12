import 'package:flutter/material.dart';
import 'package:get_theme_demo/themes/palette.dart';

import 'app_color_scheme.dart';

class AppThemes {
  static final lightTheme = ThemeData.light().copyWith(
    backgroundColor: Palette.black,
    colorScheme: AppColorScheme.lightScheme,
  );
  static final darkTheme = ThemeData.dark().copyWith(
    backgroundColor: Palette.beige,
    colorScheme: AppColorScheme.darkScheme,
  );
}
