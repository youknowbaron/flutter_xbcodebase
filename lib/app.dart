import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:xbcodebase/features/auth/pages/login_page.dart';
import 'package:xbcodebase/features/dashboard_page.dart';
import 'package:xbcodebase/features/home_page.dart';
import 'package:xbcodebase/features/library_page.dart';
import 'package:xbcodebase/features/splash/splash_page.dart';
import 'package:xbcodebase/features/top_charts_page.dart';
import 'package:xbcodebase/features/youtube_page.dart';

import 'app_constants.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RKeys.splash,
    routes: <RouteBase>[
      GoRoute(
        path: RKeys.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: RKeys.login,
        builder: (context, state) => const LoginPage(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return DashboardPage(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: RKeys.home,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: RKeys.topCharts,
            builder: (context, state) => const TopChartsPage(),
          ),
          GoRoute(
            path: RKeys.youtube,
            builder: (context, state) => const YouTubePage(),
          ),
          GoRoute(
            path: RKeys.library,
            builder: (context, state) => const LibraryPage(),
          ),
        ],
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
