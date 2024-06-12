import 'package:flutter/material.dart';
import 'package:memorise_vocabulary/application/app_locale.dart';

import '../../tunnels.dart';
import '../app_constants.dart';
import '../app_settings.dart';

part 'app_settings_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppSettingsNotifier extends _$AppSettingsNotifier {
  Box get settingsBox => ref.read(settingsBoxProvider);

  @override
  AppSettings build() {
    final dark = settingsBox.get(PKeys.themeMode) as String?;
    final locale = settingsBox.get(PKeys.locale) as String?;
    final config = AppSettings(
      themeMode: dark == 'dark' ? ThemeMode.dark : null,
      locale: locale != null ? Locale(locale, '') : null,
    );
    return config;
  }

  toggleTheme() {
    state = state.toggleTheme();
    settingsBox.put(PKeys.themeMode, state.themeMode.name);
  }

  changeLocale(Locale locale) async {
    await AppLocale.instance.loadIfChanged(locale);
    state = state.setLocale(locale);
    settingsBox.put(PKeys.locale, locale.languageCode);
  }

  ThemeMode get themeMode => state.themeMode;
  Locale? get locale => state.locale;
}
