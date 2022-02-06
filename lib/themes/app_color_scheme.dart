import 'package:flutter/material.dart';

class AppColorScheme {
  static const Color _primary = Color(0xFFA9ECF0);
  static const Color _primaryVariant = Color(0xFFE9FAFB);
  static const Color _error = Color(0xFFE3BFE3);
  static const Color _black = Color(0xFF201F1F);
  static const Color _white = Color(0xFFFFFFFF);

  static const ColorScheme lightScheme = ColorScheme.light(
    primary: _primary,
    // primaryVariant: _primaryVariant,
    background: _white,
    // error: _error,
    // onPrimary: _white,
    // surface: _white,
    // onSurface: _black,
    // onBackground: _black,
    // onError: _white,
  );

  static const ColorScheme darkScheme = ColorScheme.dark(
    primary: _primaryVariant,
    // primaryVariant: _primaryVariant,
    background: _black,
    // error: _error,
    // onPrimary: _white,
    // surface: _white,
    // onSurface: _black,
    // onBackground: _black,
    // onError: _white,
  );
}
