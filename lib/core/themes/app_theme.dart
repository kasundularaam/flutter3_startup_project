import 'package:flutter/material.dart';

import 'app_colors.dart';

enum AppTheme { lightTheme, darkTheme }

final ThemeData lightTheme = ThemeData(
    primarySwatch: AppColors.primarySwatch,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor);

final ThemeData darkTheme = ThemeData(
    primarySwatch: AppColors.primarySwatch,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor);
