import 'package:flutter/material.dart';
import 'package:get_theme_demo/cubit/themecubit_cubit.dart';
import 'package:get_theme_demo/screens/bloc_context_app_text.dart';
import 'package:get_theme_demo/screens/bloc_context_scheme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = context.read<ThemeCubit>().state;

    return Scaffold(
        appBar: AppBar(title: Text('Theme mode: ${themeState.currenThemeMode.name}')),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          children: [
            GestureDetector(
              child: const Card(
                child: ListTile(
                  title: Text("Bloc(Cubit) + Theme.of(context)"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BlocContextScheme()),
                );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BlocContextAppText()),
                );
              },
            ),
          ],
        ));
  }
}
