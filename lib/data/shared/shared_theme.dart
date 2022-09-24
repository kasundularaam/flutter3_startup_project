import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedTheme {
  static const String themeKey = "themeKey";

  static Future<ThemeMode> getTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final String theme = preferences.getString(themeKey) ?? "system";
    if (theme == "light") {
      return ThemeMode.light;
    }
    if (theme == "dark") {
      return ThemeMode.dark;
    }
    return ThemeMode.system;
  }

  static Future setTheme({required ThemeMode themeMode}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (themeMode == ThemeMode.light) {
      preferences.setString(themeKey, "light");
    }
    if (themeMode == ThemeMode.dark) {
      preferences.setString(themeKey, "dark");
    } else {
      preferences.setString(themeKey, "system");
    }
  }
}
