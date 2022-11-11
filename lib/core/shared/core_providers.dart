import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/app_constants.dart';
import 'package:xbcodebase/core/global_configuration.dart';

import '../notifiers/global_configuration_notifier.dart';

final globalConfigureProvider = StateNotifierProvider<GlobalConfigurationStateNotifier, GlobalConfiguration>(
  (ref) {
    final dark = Hive.box(BoxKeys.settings).get(PKeys.themeMode) as String?;
    final locale = Hive.box(BoxKeys.settings).get(PKeys.locale) as String?;
    final config = GlobalConfiguration();
    if (dark != null) {
      config.appTheme.setTheme(dark == 'dark');
    }
    if (locale != null) {
      config.setLocale(Locale(locale, ''));
    }
    return GlobalConfigurationStateNotifier(config);
  },
);
