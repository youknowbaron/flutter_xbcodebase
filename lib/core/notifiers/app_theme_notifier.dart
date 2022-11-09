import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/app_constants.dart';
import 'package:xbcodebase/core/app_theme.dart';

class AppThemeStateNotifier extends StateNotifier<ThemeMode> {
  AppThemeStateNotifier(this._appTheme) : super(_appTheme.currentTheme);

  final AppTheme _appTheme;

  toggleTheme() {
    _appTheme.toggleTheme();
    Hive.box(BoxKeys.settings)
        .put(PKeys.themeMode, _appTheme.currentTheme.name);
    state = _appTheme.currentTheme;
  }

  ThemeMode get currentTheme => _appTheme.currentTheme;
}
