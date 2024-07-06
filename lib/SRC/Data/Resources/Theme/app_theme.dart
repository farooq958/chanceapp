import 'package:chance/SRC/Application/Utils/app_preferences.dart';
import 'package:flutter/material.dart';


import 'dark_theme.dart';
import 'light_theme.dart';

class AppTheme with customLightTheme, customDarkTheme {
  AppTheme._();

  static AppTheme instance = AppTheme._();

  factory AppTheme() => instance;
  ValueNotifier<ThemeMode> currentTheme = ValueNotifier(ThemeMode.light);

  toggleTheme() {
    currentTheme.value = currentTheme.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;

    currentTheme.notifyListeners();
  SharedPrefs.setThemePrefs();

  }

  setTheme(ThemeMode themeMode) {
    currentTheme.value = themeMode;
    currentTheme.notifyListeners();
  }

}
