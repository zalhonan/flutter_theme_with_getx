import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_theme_demo/cubit/themecubit_cubit.dart';
import 'package:get_theme_demo/themes/custom_color_scheme.dart';

class BlocContextScheme extends StatelessWidget {
  const BlocContextScheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.warning),
          ),
          onPressed: context.read<ThemeCubit>().changeTheme,
          child: const Text('Press to change theme'),
        ),
      ),
    );
  }
}
