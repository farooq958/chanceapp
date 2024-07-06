import 'dart:convert';

import 'package:chance/SRC/Data/AppData/prefs_keys.dart';
import 'package:chance/SRC/Data/Resources/Theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../Data/AppData/data.dart';

class SharedPrefs {
  // SharedPrefs._();

  /// reference of Shared Preferences
  static SharedPreferences? _preferences;

  /// Initialization of Shared Preferences
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();





  static Future<void> setGetTheme() async {
    String? themeMode = _preferences?.getString(PrefsKeys.THEME_KEY);

    if (themeMode != null) {
      if (themeMode == 'darkTheme') {
        AppTheme.instance.setTheme(ThemeMode.dark);
      } else {
        AppTheme.instance.setTheme(ThemeMode.light);
      }
    } else {
      await _preferences?.setString(PrefsKeys.THEME_KEY, 'lightTheme');
    }

    //  return themeMode;
  }

  static Future<void> setThemePrefs() async {
    if (AppTheme.instance.currentTheme.value == ThemeMode.light) {
      await _preferences?.setString(PrefsKeys.THEME_KEY, 'lightTheme');
    } else {
      await _preferences?.setString(PrefsKeys.THEME_KEY, 'darkTheme');
    }
  }
}
