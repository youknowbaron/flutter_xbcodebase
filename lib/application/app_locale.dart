import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive/hive.dart';

import 'app_constants.dart';

class AppLocale {

  static const defaultLocale = 'en';

  static AppLocale? _instance;
  static AppLocale get instance {
    _instance ??= AppLocale._();
    return _instance!;
  }

  AppLocale._();

  AppLocalizations? _strings;
  AppLocalizations get strings => _strings!;

  Future<void> load() async {
    final languageCode =
        Hive.box(BoxKeys.settings).get(PKeys.locale) as String?;
    Locale locale = languageCode != null
        ? Locale(languageCode)
        : WidgetsBinding.instance.window.locales.first;

    if (AppLocalizations.supportedLocales.contains(locale) == false) {
      locale = const Locale(defaultLocale);
    }
    _strings = await AppLocalizations.delegate.load(locale);
  }

  Future<void> loadIfChanged(Locale locale) async {
    bool didChange = _strings?.localeName != locale.languageCode;
    if (didChange && AppLocalizations.supportedLocales.contains(locale)) {
      _strings = await AppLocalizations.delegate.load(locale);
    }
  }
}
