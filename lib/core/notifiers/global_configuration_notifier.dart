import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/app_constants.dart';
import 'package:xbcodebase/core/global_configuration.dart';

class GlobalConfigurationStateNotifier
    extends StateNotifier<GlobalConfiguration> {
  GlobalConfigurationStateNotifier(GlobalConfiguration config) : super(config);

  toggleTheme() {
    state.toggleTheme();
    state = state.clone();
    Hive.box(BoxKeys.settings)
        .put(PKeys.themeMode, state.appTheme.currentThemeMode.name);
  }

  changeLocale(Locale locale) {
    state.setLocale(locale);
    state = state.clone();
    Hive.box(BoxKeys.settings).put(PKeys.locale, state.locale.languageCode);
  }

  ThemeMode get currentThemeMode => state.appTheme.currentThemeMode;
  Locale get currentLocale => state.locale;
}
