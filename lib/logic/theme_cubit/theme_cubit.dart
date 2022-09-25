import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/themes/app_theme.dart';
import '../../data/shared/shared_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeMode: ThemeMode.system)) {
    setTheme();
  }

  void changeAppTheme({required ThemeMode themeMode}) async {
    await SharedTheme.setTheme(themeMode: themeMode);
    setTheme();
  }

  void setTheme() async {
    final ThemeMode selected = await SharedTheme.getTheme();
    if (selected == ThemeMode.system) {
      final Brightness brightness = AppTheme.currentSystemBrightness;
      if (brightness == Brightness.dark) {
        AppTheme.setStatusBarAndNavigationBarColors(ThemeMode.dark);
        emit(ThemeState(themeMode: ThemeMode.dark));
      }
      if (brightness == Brightness.light) {
        AppTheme.setStatusBarAndNavigationBarColors(ThemeMode.light);
        emit(ThemeState(themeMode: ThemeMode.light));
      }
    } else {
      AppTheme.setStatusBarAndNavigationBarColors(selected);
      emit(ThemeState(themeMode: selected));
    }
  }
}
