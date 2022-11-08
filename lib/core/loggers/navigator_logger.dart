import 'package:flutter/material.dart';

import 'logger.dart';

class NavigatorLogger extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    logger.d('didPop from ${route.settings.name} to ${previousRoute?.settings.name}');
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    logger.d('didPush from ${previousRoute?.settings.name} to ${route.settings.name}');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    logger.d('didRemove ${route.settings.name}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    logger.d('didReplace ${oldRoute?.settings.name} by ${newRoute?.settings.name}');
  }
}
