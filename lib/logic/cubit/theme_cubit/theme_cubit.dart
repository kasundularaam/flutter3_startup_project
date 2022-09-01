import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/themes/app_theme.dart';
import '../../../data/shared/shared_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(appTheme: AppTheme.lightTheme));

  Future loadTheme() async {
    final bool isDark = await SharedTheme.isDark();
    if (isDark) {
      emit(const ThemeState(appTheme: AppTheme.darkTheme));
    } else {
      emit(const ThemeState(appTheme: AppTheme.lightTheme));
    }
  }

  Future setTheme({required AppTheme appTheme}) async {
    await SharedTheme.setTheme(appTheme: appTheme);
    loadTheme();
  }
}
