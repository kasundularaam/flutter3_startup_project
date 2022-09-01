import 'package:shared_preferences/shared_preferences.dart';

import '../../core/themes/app_theme.dart';

class SharedTheme {
  static const String isDarkKey = "isDarkKey";

  static Future<bool> isDark() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool isDark = preferences.getBool(isDarkKey) ?? false;
    return isDark;
  }

  static Future setTheme({required AppTheme appTheme}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (appTheme == AppTheme.lightTheme) {
      preferences.setBool(isDarkKey, false);
    } else {
      preferences.setBool(isDarkKey, true);
    }
  }
}
