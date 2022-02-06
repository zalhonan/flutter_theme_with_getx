import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_theme_demo/themes/app_themes.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Theme Demo',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const HomePage(),
    );
  }
}
