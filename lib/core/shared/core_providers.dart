import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/app_constants.dart';
import 'package:xbcodebase/core/app_theme.dart';
import 'package:xbcodebase/core/notifiers/app_theme_notifier.dart';

final _appThemeProvider = Provider<AppTheme>((ref) {
  final dark = Hive.box(BoxKeys.settings).get(PKeys.themeMode) as String?;
  return AppTheme()..setTheme(dark == 'dark');
});

final appThemeProvider =
    StateNotifierProvider<AppThemeStateNotifier, ThemeMode>(
  (ref) => AppThemeStateNotifier(ref.watch(_appThemeProvider)),
);
