import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorise_vocabulary/core/loggers/logger.dart';
import 'package:memorise_vocabulary/tunnels.dart';

import '../localization/app_localizations.dart';
import 'app_theme.dart';
import 'app_router.dart';
import 'notifiers/app_settings_notifier.dart';

// final GlobalKey<NavigatorState> _rootNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'root');
// final GlobalKey<NavigatorState> _shellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'shell');

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appSettings = ref.watch(appSettingsNotifierProvider);

    ref.listen(onAuthStateChangedProvider, (previous, next) {
      next.whenData(
        (user) {
          if (user?.emailVerified == true) {
          } else {
            logger.d('sendEmailVerification to email: ${user?.email}');
            user?.sendEmailVerification();
          }
        },
      );
    });

    EasyLoading.instance.userInteractions = false;

    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Flutter Demo',
      themeMode: appSettings.themeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      locale: appSettings.locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: EasyLoading.init(),
    );
  }
}
