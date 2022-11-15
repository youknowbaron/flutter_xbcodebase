import 'package:flutter/material.dart';

class AppTheme {
  ThemeMode _currentTheme = ThemeMode.system;

  ThemeMode get currentTheme => _currentTheme;

  void toggleTheme() {
    final isDark = _currentTheme == ThemeMode.dark;
    _currentTheme = isDark ? ThemeMode.light : ThemeMode.dark;
  }

  void setTheme(bool? isDark) {
    if (isDark == null) {
      _currentTheme = ThemeMode.system;
      return;
    }
    _currentTheme = isDark ? ThemeMode.dark : ThemeMode.light;
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
    return AppTheme().._currentTheme = themeMode ?? _currentTheme;
  }
}
