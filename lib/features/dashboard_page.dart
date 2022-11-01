import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:xbcodebase/core/constants.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) {
          _onItemTapped(index, context);
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_rounded),
            title: const Text('Home'),
            selectedColor: Theme.of(context).colorScheme.secondary,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.trending_up_rounded),
            title: const Text('Top Charts'),
            selectedColor: Theme.of(context).colorScheme.secondary,
          ),
          SalomonBottomBarItem(
            icon: const Icon(MdiIcons.youtube),
            title: const Text('YouTube'),
            selectedColor: Theme.of(context).colorScheme.secondary,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.my_library_music_rounded),
            title: const Text('Library'),
            selectedColor: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith(RKeys.home)) {
      return 0;
    }
    if (location.startsWith(RKeys.topCharts)) {
      return 1;
    }
    if (location.startsWith(RKeys.youtube)) {
      return 2;
    }
    if (location.startsWith(RKeys.library)) {
      return 3;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(RKeys.home);
        break;
      case 1:
        GoRouter.of(context).go(RKeys.topCharts);
        break;
      case 2:
        GoRouter.of(context).go(RKeys.youtube);
        break;
      case 3:
        GoRouter.of(context).go(RKeys.library);
        break;
    }
  }
}
