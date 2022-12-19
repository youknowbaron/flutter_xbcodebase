import 'package:flutter/material.dart';
import 'package:xbcodebase/core/app_theme.dart';

class GlobalConfiguration {
  AppTheme _appTheme = AppTheme();
  Locale _locale = WidgetsBinding.instance.window.locales.first;

  AppTheme get appTheme => _appTheme;
  Locale get locale => _locale;

  void toggleTheme() {
    _appTheme.toggleTheme();
  }

  void setTheme(bool? isDark) {
    _appTheme.setTheme(isDark);
  }

  void setLocale(Locale locale) {
    _locale = locale;
  }

  GlobalConfiguration copyWith({AppTheme? appTheme, Locale? locale}) {
    return GlobalConfiguration()
      .._appTheme = appTheme ?? _appTheme
      .._locale = locale ?? _locale;
  }

  GlobalConfiguration clone() {
    return GlobalConfiguration()
      .._appTheme = _appTheme
      .._locale = _locale;
  }
}
