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

  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.deepOrange,
    brightness: Brightness.light,
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.deepPurple,
    brightness: Brightness.dark,
  );
}
