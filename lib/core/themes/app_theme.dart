import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorSchemeSeed: AppColors.primaryColor,
    backgroundColor: AppColors.lightBackgroundColor,
  );

  static final ThemeData darkTheme = ThemeData(
    colorSchemeSeed: AppColors.primaryColor,
    backgroundColor: AppColors.darkBackgroundColor,
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: themeMode == ThemeMode.light
            ? AppColors.lightBackgroundColor
            : AppColors.darkBackgroundColor,
        statusBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: themeMode == ThemeMode.light
            ? AppColors.lightBackgroundColor
            : AppColors.darkBackgroundColor,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }
}

extension ThemeExtras on ThemeData {
  Color get foregroundColor => brightness == Brightness.light
      ? AppColors.lightForegroundColor
      : AppColors.darkForegroundColor;

  Color get onGroundColor => brightness == Brightness.light
      ? AppColors.lightOnGroundColor
      : AppColors.darkOnGroundColor;

  Color get onGroundColorLow => brightness == Brightness.light
      ? AppColors.lightOnGroundColorLow
      : AppColors.darkOnGroundColorLow;
}
