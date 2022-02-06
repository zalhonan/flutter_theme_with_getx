import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_theme_demo/themes/custom_color_scheme.dart';

import 'app_color_scheme.dart';
import 'app_fonts.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

const TextStyle _baseTextStyle = TextStyle(
  fontFamily: AppFonts.GRAPHIK,
  fontStyle: FontStyle.normal,
);

TextStyle _w400 = _baseTextStyle.copyWith(
  fontWeight: FontWeight.w400,
);

TextStyle _w600 = _baseTextStyle.copyWith(
  fontWeight: FontWeight.w600,
);

// TODO(any): Visual appearance of text does not match the Figma when using letter spacing in 3%, need to investigate problem. Tmp set in 0%
const double _letterSpacing = 0;
const double _height130 = 1.3;
const double _height150 = 1.5;

// ignore: avoid_classes_with_only_static_members
class AppTextTheme {
  static TextTheme appTextTheme = TextTheme(
    /// Figma name - 30r
    headline1: _w400.copyWith(
      fontSize: 30.sp,
      height: _height130,
      letterSpacing: _letterSpacing,
    ),

    ///  28r
    headline2: _w400.copyWith(
      fontSize: 28.sp,
      height: _height130,
      letterSpacing: _letterSpacing,
    ),

    ///  24r
    headline3: _w400.copyWith(
      fontSize: 24.sp,
      height: _height130,
      letterSpacing: _letterSpacing,
    ),

    ///  20r
    headline4: _w400.copyWith(
      fontSize: 20.sp,
      height: _height150,
      letterSpacing: _letterSpacing,
    ),

    ///  16r
    headline5: _w400.copyWith(
      fontSize: 16.sp,
      height: _height150,
      letterSpacing: _letterSpacing,
    ),

    ///  14r
    headline6: _w400.copyWith(
      fontSize: 14.sp,
      height: _height150,
      letterSpacing: _letterSpacing,
    ),

    /// 12r
    bodyText1: _w400.copyWith(
      fontSize: 12.sp,
      height: _height150,
      letterSpacing: _letterSpacing,
    ),

    /// 10r
    bodyText2: _w400.copyWith(
      fontSize: 10.sp,
      height: _height150,
      letterSpacing: _letterSpacing,
    ),

    /// Style for button widget
    button: _w600.copyWith(
      fontSize: 16.sp,
    ),

    /// Style for TextFormField widget
    subtitle1: _w400.copyWith(
      fontSize: 16.sp,
      color: AppColorScheme.lightScheme.onSecondary,
    ),
  );
}

/*
    To use these styles you need to import this class:
    import '../../resources/themes/app_text_theme.dart';
 */
extension CustomTextStyles on TextTheme {
  /// Figma name - 30m
  TextStyle get headline1Bold => Get.textTheme.headline1!.merge(_w600);

  /// 28m
  TextStyle get headline2Bold => Get.textTheme.headline2!.merge(_w600);

  /// 24m
  TextStyle get headline3Bold => Get.textTheme.headline3!.merge(_w600);

  /// 20m
  TextStyle get headline4Bold => Get.textTheme.headline4!.merge(_w600);

  /// 16m
  TextStyle get headline5Bold => Get.textTheme.headline5!.merge(_w600);

  /// 14m
  TextStyle get headline6Bold => Get.textTheme.headline6!.merge(_w600);

  /// 12m
  TextStyle get bodyText1Bold => Get.textTheme.bodyText1!.merge(_w600);

  /// -------------
  /// 28m
  TextStyle get headline5BoldColored =>
      Get.textTheme.headline5Bold.merge(_w600).copyWith(color: Get.theme.colorScheme.headline2Color);
}
