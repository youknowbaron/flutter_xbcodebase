import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../app_constants.dart';
import '../app_settings.dart';

part 'app_settings_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppSettingsNotifier extends _$AppSettingsNotifier {

  @override
  AppSettings build() {
    final dark = Hive.box(BoxKeys.settings).get(PKeys.themeMode) as String?;
    final locale = Hive.box(BoxKeys.settings).get(PKeys.locale) as String?;
    final config = AppSettings(
      themeMode: dark == 'dark' ? ThemeMode.dark : null,
      locale: locale != null ? Locale(locale, '') : null,
    );
    return config;
  }

  toggleTheme() {
    state = state.toggleTheme();
    Hive.box(BoxKeys.settings).put(PKeys.themeMode, state.themeMode.name);
  }

  changeLocale(Locale locale) {
    state = state.setLocale(locale);
    Hive.box(BoxKeys.settings).put(PKeys.locale, locale.languageCode);
  }

  ThemeMode get themeMode => state.themeMode;
  Locale? get locale => state.locale;
}
