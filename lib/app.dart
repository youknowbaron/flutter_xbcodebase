import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'application/app_theme.dart';
import 'application/app_router.dart';
import 'application/notifiers/app_settings_notifier.dart';

// final GlobalKey<NavigatorState> _rootNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'root');
// final GlobalKey<NavigatorState> _shellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'shell');

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appSettings = ref.watch(appSettingsNotifierProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Flutter Demo',
      themeMode: appSettings.themeMode,
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      locale: appSettings.locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
