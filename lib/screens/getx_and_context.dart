import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxAndContext extends StatelessWidget {
  const GetxAndContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: context.theme.backgroundColor,
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.theme.primaryColorLight),
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
