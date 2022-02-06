import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'themecubit_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(ThemeMode.light));

  void setDark() {
    emit(state.copyWith(currenThemeMode: ThemeMode.dark));
  }

  void setLight() {
    emit(state.copyWith(currenThemeMode: ThemeMode.light));
  }

  void changeTheme() {
    if (state.currenThemeMode == ThemeMode.light) {
      setDark();
    } else {
      setLight();
    }
  }
}
