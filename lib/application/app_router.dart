import 'package:go_router/go_router.dart';

import '../core/loggers/logger.dart';
import '../core/loggers/navigator_logger.dart';
import '../domain/models/media.dart';
import '../features/auth/pages/login_page.dart';
import '../features/dashboard_page.dart';
import '../features/home/pages/after_media_details_page.dart';
import '../features/home/pages/media_details_page.dart';
import '../features/search/search_page.dart';
import '../features/settings/settings_page.dart';
import '../features/splash/splash_page.dart';
import '../features/top_charts/detail_chart_page.dart';
import '../features/top_charts/top_charts_page.dart';

final appRouter = GoRouter(
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
        final index = int.tryParse(state.pathParameters['index'] ?? '');
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
                return AfterMediaDetailsPage(id: state.pathParameters['mid']!);
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
