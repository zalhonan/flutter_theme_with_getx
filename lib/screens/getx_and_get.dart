import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxAndGet extends StatelessWidget {
  const GetxAndGet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Get.theme.backgroundColor,
      // backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Get.theme.primaryColorLight),
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
