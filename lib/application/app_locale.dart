import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:memorise_vocabulary/localization/app_localizations.dart';

import 'app_constants.dart';

class AppLocale {
  static const _defaultLocale = 'en';

  static AppLocale? _instance;
  static AppLocale get instance {
    _instance ??= AppLocale._();
    return _instance!;
  }

  AppLocale._();

  AppLocalizations? _strings;
  AppLocalizations get strings => _strings!;

  Future<void> initilize([Box? settingsBox]) async {
    final languageCode =
        settingsBox?.get(PKeys.locale) as String? ?? _defaultLocale;
    Locale locale = Locale(languageCode);

    if (AppLocalizations.supportedLocales.contains(locale) == false) {
      locale = const Locale(_defaultLocale);
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

AppLocalizations get $strings => AppLocale.instance.strings;