import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_theme_demo/cubit/themecubit_cubit.dart';
import 'package:get_theme_demo/themes/custom_color_scheme.dart';

class BlocContextScheme extends StatefulWidget {
  const BlocContextScheme({Key? key}) : super(key: key);

  @override
  State<BlocContextScheme> createState() => _BlocContextSchemeState();
}

class _BlocContextSchemeState extends State<BlocContextScheme> {
  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();
    final themeData = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text('Theme mode: ${themeCubit.state.currenThemeMode.name}')),
      backgroundColor: themeData.success,
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(themeData.warning),
          ),
          onPressed: themeCubit.changeTheme,
          child: const Text('Press to change theme'),
        ),
      ),
    );
  }
}
