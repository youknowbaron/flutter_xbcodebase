import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/core/app_theme.dart';
import 'package:xbcodebase/core/loggers/logger.dart';
import 'package:xbcodebase/core/loggers/navigator_logger.dart';
import 'package:xbcodebase/core/shared/core_providers.dart';
import 'package:xbcodebase/domain/models/media.dart';
import 'package:xbcodebase/features/auth/pages/login_page.dart';
import 'package:xbcodebase/features/dashboard_page.dart';
import 'package:xbcodebase/features/home/pages/after_media_details_page.dart';
import 'package:xbcodebase/features/home/pages/media_details_page.dart';
import 'package:xbcodebase/features/settings/settings_page.dart';
import 'package:xbcodebase/features/splash/splash_page.dart';
import 'package:xbcodebase/features/top_charts/detail_chart_page.dart';
import 'package:xbcodebase/features/top_charts/top_charts_page.dart';

import 'features/search/search_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/splash',
    observers: [NavigatorLogger()],
    routes: <RouteBase>[
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) {
          final index = int.tryParse(state.queryParams['index'] ?? '');
          logger.w('index $index');
          return DashboardPage(initialIndex: index);
        },
        routes: <GoRoute>[
          GoRoute(
            path: 'search',
            builder: (context, state) => const SearchPage(),
          ),
          GoRoute(
            path: 'settings',
            builder: (context, state) => const SettingsPage(),
          ),
          GoRoute(
            path: 'media/:mid',
            builder: (context, state) {
              return MediaDetailsPage(media: state.extra as Media);
            },
            routes: [
              GoRoute(
                path: 'after_media_details',
                builder: (context, state) {
                  return AfterMediaDetailsPage(id: state.params['mid']!);
                },
              )
            ],
          ),
          GoRoute(
            path: 'chart/:cid',
            builder: (context, state) => DetailChartPage(state.extra as Chart),
          ),
        ],
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final globalConfig = ref.watch(globalConfigureProvider);
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      themeMode: globalConfig.appTheme.currentTheme,
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      locale: globalConfig.locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('vi', ''), // Vietnamese, no country code
      ],
    );
  }
}
