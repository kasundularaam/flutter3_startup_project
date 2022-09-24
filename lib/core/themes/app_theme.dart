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
      ? AppColors.darkForegroundColor
      : AppColors.lightForegroundColor;

  Color get onGroundColor => brightness == Brightness.light
      ? AppColors.darkOnGroundColor
      : AppColors.lightOnGroundColor;

  Color get onGroundColorLow => brightness == Brightness.light
      ? AppColors.darkOnGroundColorLow
      : AppColors.lightOnGroundColorLow;
}
