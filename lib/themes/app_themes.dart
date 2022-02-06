import 'package:flutter/material.dart';

import 'app_color_scheme.dart';

class AppThemes {
  static final lightTheme = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    primaryColorLight: Colors.blue,
    colorScheme: AppColorScheme.lightScheme,
  );
  static final darkTheme = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    primaryColorLight: Colors.red,
    colorScheme: AppColorScheme.darkScheme,
  );
}
