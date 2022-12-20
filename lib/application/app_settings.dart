import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppSettings extends Equatable {
  final ThemeMode _themeMode;
  final Locale? _locale;

  ThemeMode get themeMode => _themeMode;
  Locale? get locale => _locale;

  const AppSettings({ThemeMode? themeMode, Locale? locale})
      : _themeMode = themeMode ?? ThemeMode.system,
        _locale = locale;

  AppSettings toggleTheme() {
    final isDark = _themeMode == ThemeMode.dark;
    final newTheme = isDark ? ThemeMode.light : ThemeMode.dark;
    return copyWith(themeMode: newTheme);
  }

  AppSettings setTheme(bool? isDark) {
    if (isDark == null) return this;
    return copyWith(themeMode: isDark ? ThemeMode.dark : ThemeMode.light);
  }

  AppSettings setLocale(Locale locale) {
    return copyWith(locale: locale);
  }

  AppSettings copyWith({ThemeMode? themeMode, Locale? locale}) {
    return AppSettings(
      themeMode: themeMode ?? _themeMode,
      locale: locale ?? _locale,
    );
  }

  @override
  List<Object?> get props => [_themeMode, _locale];
}
