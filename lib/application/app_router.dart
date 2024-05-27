import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';

import '../core/loggers/navigator_logger.dart';
import '../features/auth/pages/login_page.dart';
import '../features/dashboard_page.dart';
import '../features/home/pages/after_media_details_page.dart';
import '../features/home/pages/media_details_page.dart';
import '../features/search/search_page.dart';
import '../features/settings/settings_page.dart';
import '../features/splash/splash_page.dart';
import '../features/top_charts/detail_chart_page.dart';

final class AppRoute extends GoRoute {
  AppRoute(GoStep step, {bool root = false})
      : super(
          path: root && !step.path.startsWith('/') ? '/${step.path}' : step.path,
          // path: step.path,
          builder: step.builder,
          pageBuilder: step.pageBuilder,
          routes: step.routes,
          parentNavigatorKey: step.parentKey,
        );
}

enum GoStep {
  splash('/splash'),
  login('/login'),
  home('/'),
  search('search'),
  settings('settings'),
  mediaDetails('media/:mid'),
  afterMediaDetails('after_media_details'),
  chart('charts/:cid');

  final String path;

  const GoStep(this.path);

  GoRouterWidgetBuilder? get builder => switch (this) {
        splash => (context, state) => const SplashPage(),
        login => (context, state) => const LoginPage(),
        home => (context, state) {
            final index = int.tryParse(state.uri.queryParameters['index'] ?? '');
            return DashboardPage(initialIndex: index);
          },
        search => (context, state) => const SearchPage(),
        settings => (context, state) => const SettingsPage(),
        mediaDetails => (context, state) =>
            MediaDetailsPage(mediaId: int.parse(state.pathParameters['mid']!)),
        afterMediaDetails => (context, state) =>
            AfterMediaDetailsPage(id: state.pathParameters['mid']!),
        chart => (context, state) => DetailChartPage(int.parse(state.pathParameters['cid']!)),
      };

  GoRouterPageBuilder? get pageBuilder => null;

  Set<GoStep>? get children => switch (this) {
        home => {search, settings, mediaDetails, chart},
        mediaDetails => {afterMediaDetails, chart},
        _ => null,
      };

  GlobalKey<NavigatorState>? get parentKey => null;

  List<RouteBase> get routes => children?.map((e) => AppRoute(e)).toList() ?? [];

  // Set<GoStep>? get parent => switch (this) {
  //   search => {home},
  //   settings => {home},
  //   mediaDetails => {home},
  //   afterMediaDetails => {mediaDetails},
  //   chart => {home, mediaDetails},
  //   _ => null,
  // };

  /// Go to a new location, append new location to current location
  void go(
    BuildContext context, {
    List<String>? pathParameters,
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    context.go(
      _location(pathParameters: pathParameters, queryParameters: queryParameters),
      extra: extra,
    );
  }

  /// Push a new page onto the page stack, do not append the new location to current location
  Future<T?> push<T extends Object?>(
    BuildContext context, {
    List<String>? pathParameters,
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return context.push(
      _location(
        pathParameters: pathParameters,
        queryParameters: queryParameters,
        appendToCurrentLocation: false,
      ),
      extra: extra,
    );
  }

  String _location({
    List<String>? pathParameters,
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    bool appendToCurrentLocation = true,
  }) {
    var newPath = path;
    if (pathParameters != null) {
      newPath = _pathPatternToLocation(newPath, pathParameters);
    }
    Map<String, dynamic> params = {};
    if (appendToCurrentLocation) {
      final currentUri = appRouter.routeInformationProvider.value.uri;
      params.addAll(Map.of(currentUri.queryParameters));
      newPath = join(currentUri.path, newPath);
    } else {
      newPath = join('/', newPath);
    }
    if (queryParameters.isNotEmpty) {
      params.addAll(queryParameters);
    }
    Uri loc = Uri(path: newPath, queryParameters: params);
    return loc.toString();
  }

  String _pathPatternToLocation(String pattern, List<String> parameters) {
    final StringBuffer buffer = StringBuffer('');
    int start = 0;
    int count = 0;
    final RegExp parameterRegExp = RegExp(r':(\w+)(\((?:\\.|[^\\()])+\))?');
    for (final RegExpMatch match in parameterRegExp.allMatches(pattern)) {
      if (match.start > start) {
        buffer.write(RegExp.escape(pattern.substring(start, match.start)));
      }
      buffer.write(parameters[count]);
      start = match.end;
      count++;
    }
    if (start < pattern.length) {
      buffer.write(pattern.substring(start));
    }
    return buffer.toString();
  }
}

final appRouter = GoRouter(
  initialLocation: GoStep.splash.path,
  observers: [NavigatorLogger()],
  routes: <RouteBase>[
    AppRoute(GoStep.splash),
    AppRoute(GoStep.login),
    AppRoute(GoStep.home),
    AppRoute(GoStep.chart, root: true),
    AppRoute(GoStep.mediaDetails, root: true),
    // AppRoute(GoStep.mediaDetails, root: true),
  ],
);
