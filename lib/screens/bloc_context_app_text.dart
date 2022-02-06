import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_theme_demo/cubit/themecubit_cubit.dart';
import 'package:get_theme_demo/themes/app_text_theme.dart';
import 'package:get_theme_demo/themes/custom_color_scheme.dart';

class BlocContextAppText extends StatelessWidget {
  const BlocContextAppText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: context.theme.colorScheme.success,
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.warning),
          ),
          onPressed: context.read<ThemeCubit>().changeTheme,
          child: Text('Press to change theme', style: context.textTheme.headline5BoldColored),
        ),
      ),
    );
  }
}
