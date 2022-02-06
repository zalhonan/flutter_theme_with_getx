import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_theme_demo/screens/getx_and_context.dart';
import 'package:get_theme_demo/screens/getx_context_color_scheme.dart';
import 'package:get_theme_demo/screens/getx_custom_color_scheme.dart';
import 'package:get_theme_demo/screens/getx_custom_static.dart';

import 'getx_and_get.dart';

// выводы:
// заменить Get.theme на context.theme (из Get) или Theme.of(context)
// в CustomColorScheme нужно писать тернарки на каждый геттер (да и фиг с ним)
// либо делать абстрактный объект и поставлять унаследованные от него объекты "вторым этажом"
// для отказа от GetX нужно переписать подачу themeMode через Bloc и поставку в виджеты через Theme.of(context)
// цвета можно вынести в отдельную палитру - класс со статическими полями

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Changing theme variants')),
        backgroundColor: context.theme.backgroundColor,
        body: Column(
          children: [
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("Get.changeThemeMode + Get.theme.primaryColorLight"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Get.to(const GetxAndGet());
              },
            ),
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("Get.changeThemeMode + context.theme.primaryColorLight"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Get.to(const GetxAndContext());
              },
            ),
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("Get.changeThemeMode + context.theme.colorScheme.background"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Get.to(const GetxContextColorScheme());
              },
            ),
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("Get.changeThemeMode + context.theme.customColorScheme..."),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Get.to(const GetxCustomColorScheme());
              },
            ),
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("Get.changeThemeMode + customColorScheme with static switch"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Get.to(const GetxCustomStatic());
              },
            ),
          ],
        ));
  }
}
