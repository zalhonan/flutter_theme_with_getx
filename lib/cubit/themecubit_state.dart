part of 'themecubit_cubit.dart';

@immutable
class ThemeState {
  final ThemeMode currenThemeMode;

  const ThemeState(this.currenThemeMode);

  ThemeState copyWith({
    ThemeMode? currenThemeMode,
  }) {
    return ThemeState(
      currenThemeMode ?? this.currenThemeMode,
    );
  }
}
