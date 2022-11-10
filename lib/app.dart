import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/core/app_theme.dart';
import 'package:xbcodebase/core/loggers/navigator_logger.dart';
import 'package:xbcodebase/core/shared/core_providers.dart';
import 'package:xbcodebase/features/auth/pages/login_page.dart';
import 'package:xbcodebase/features/dashboard_page.dart';
import 'package:xbcodebase/features/splash/splash_page.dart';

import 'app_constants.dart';
import 'features/search/search_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RKeys.splash,
    observers: [NavigatorLogger()],
    routes: <RouteBase>[
      GoRoute(
        path: RKeys.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: RKeys.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RKeys.dashboard,
        builder: (context, state) => const DashboardPage(),
        routes: <GoRoute>[
          GoRoute(
            path: RKeys.search,
            builder: (context, state) => const SearchPage(),
          ),
        ],
      ),
      // ShellRoute(
      //   navigatorKey: _shellNavigatorKey,
      //   builder: (context, state, child) {
      //     return DashboardPage(child: child);
      //   },
      //   routes: <RouteBase>[
      //     GoRoute(
      //       path: RKeys.home,
      //       builder: (context, state) => const HomePage(),
      //       routes: <GoRoute>[
      //         GoRoute(
      //           parentNavigatorKey: _rootNavigatorKey,
      //           path: RKeys.search,
      //           builder: (context, state) => const SearchPage(),
      //         ),
      //       ],
      //     ),
      //     GoRoute(
      //       path: RKeys.topCharts,
      //       builder: (context, state) => const TopChartsPage(),
      //     ),
      //     GoRoute(
      //       path: RKeys.youtube,
      //       builder: (context, state) => const YouTubePage(),
      //     ),
      //     GoRoute(
      //       path: RKeys.library,
      //       builder: (context, state) => const LibraryPage(),
      //     ),
      //   ],
      // ),
      // GoRoute(
      //   parentNavigatorKey: _rootNavigatorKey,
      //   path: RKeys.search,
      //   builder: (context, state) => const SearchPage(),
      // ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeProvider);
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      themeMode: themeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
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
