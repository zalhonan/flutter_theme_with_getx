import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_theme_demo/themes/custom_color_scheme.dart';

class GetxCustomStatic extends StatelessWidget {
  const GetxCustomStatic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: context.theme.colorScheme.successStatic,
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.theme.colorScheme.warningStatic),
          ),
          onPressed: () {
            if (Get.isDarkMode) {
              Get.changeThemeMode(ThemeMode.light);
            } else {
              Get.changeThemeMode(ThemeMode.dark);
            }
          },
          child: const Text('Press to change theme'),
        ),
      ),
    );
  }
}
