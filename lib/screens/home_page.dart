import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_theme_demo/screens/bloc_context_app_text.dart';
import 'package:get_theme_demo/screens/bloc_context_scheme.dart';
import 'package:get_theme_demo/screens/getx_and_context.dart';
import 'package:get_theme_demo/screens/getx_context_color_scheme.dart';
import 'package:get_theme_demo/screens/getx_custom_color_scheme.dart';
import 'package:get_theme_demo/screens/getx_custom_static.dart';

import 'getx_and_get.dart';

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
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("Bloc(Cubit) + Theme.of(context)"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Get.to(const BlocContextScheme());
              },
            ),
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("Bloc(Cubit) + Theme.of(context) + AppText"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Get.to(const BlocContextAppText());
              },
            ),
          ],
        ));
  }
}
