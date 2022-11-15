import 'package:flutter/material.dart';

import 'logger.dart';

class NavigatorLogger extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    logger.d(
        'didPop from ${route.settings.name} to ${previousRoute?.settings.name}');
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    var log = 'didPush from ${previousRoute?.settings.name}';
    final argument = previousRoute?.settings.arguments;
    if (argument != null && argument is Map && argument.isNotEmpty) {
      log += ' with params ${previousRoute?.settings.arguments}';
    }
    log += ' to ${route.settings.name}';
    final argument2 = route.settings.arguments;
    if (argument2 != null && argument2 is Map && argument2.isNotEmpty) {
      log += ' with params ${route.settings.arguments}';
    }
    logger.v(log);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    logger.v('didRemove ${route.settings.name}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    logger.v(
        'didReplace ${oldRoute?.settings.name} by ${newRoute?.settings.name}');
  }
}
