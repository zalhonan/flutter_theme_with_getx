import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_theme_demo/cubit/themecubit_cubit.dart';
import 'package:get_theme_demo/themes/app_themes.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => ThemeCubit(),
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: () => const CoreApp(),
        ));
  }
}

class CoreApp extends StatelessWidget {
  const CoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return GetMaterialApp(
          title: 'GetX Theme Demo',
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: state.currenThemeMode,
          home: const HomePage(),
        );
      },
    );
  }
}
