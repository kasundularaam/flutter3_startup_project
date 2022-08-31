import 'package:flutter/material.dart';

import 'app_colors.dart';

// class AppTheme {
//   static const MaterialColor primarySwatch = MaterialColor(
//     AppColors.themeColor,
//     <int, Color>{
//       50: Color(AppColors.themeColor),
//       100: Color(AppColors.themeColor),
//       200: Color(AppColors.themeColor),
//       300: Color(AppColors.themeColor),
//       400: Color(AppColors.themeColor),
//       500: Color(AppColors.themeColor),
//       600: Color(AppColors.themeColor),
//       700: Color(AppColors.themeColor),
//       800: Color(AppColors.themeColor),
//       900: Color(AppColors.themeColor),
//     },
//   );
// }

final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light, primaryColor: AppColors.primaryColor);

final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark, primaryColor: AppColors.primaryColor);
