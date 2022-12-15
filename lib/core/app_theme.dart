import 'package:flutter/material.dart';

class AppTheme {
  ThemeMode _currentThemeMode = ThemeMode.system;

  ThemeMode get currentThemeMode => _currentThemeMode;

  void toggleTheme() {
    final isDark = _currentThemeMode == ThemeMode.dark;
    _currentThemeMode = isDark ? ThemeMode.light : ThemeMode.dark;
  }

  void setTheme(bool? isDark) {
    if (isDark == null) {
      _currentThemeMode = ThemeMode.system;
      return;
    }
    _currentThemeMode = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
        ),
      );

  AppTheme copyWith({ThemeMode? themeMode}) {
    return AppTheme().._currentThemeMode = themeMode ?? _currentThemeMode;
  }
}
