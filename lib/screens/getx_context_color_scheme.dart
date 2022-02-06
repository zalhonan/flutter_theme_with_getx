import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxContextColorScheme extends StatelessWidget {
  const GetxContextColorScheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
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
