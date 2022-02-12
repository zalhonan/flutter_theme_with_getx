import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_theme_demo/cubit/themecubit_cubit.dart';
import 'package:get_theme_demo/themes/app_text_theme.dart';
import 'package:get_theme_demo/themes/custom_color_scheme.dart';

class BlocContextAppText extends StatelessWidget {
  const BlocContextAppText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = context.read<ThemeCubit>().state;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('Theme mode: ${themeState.currenThemeMode.name}')),
      backgroundColor: theme.colorScheme.success,
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(theme.colorScheme.warning),
          ),
          onPressed: context.read<ThemeCubit>().changeTheme,
          child: Text('Press to change theme', style: theme.textTheme.headline1),
        ),
      ),
    );
  }
}
