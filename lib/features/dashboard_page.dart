import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../app_constants.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: CustomScrollView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              elevation: 0,
              stretch: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.2,
              flexibleSpace: FlexibleSpaceBar(
                title: RichText(
                  text: TextSpan(
                    text: AppLocalizations.of(context)!.appTitle,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: '\nv1.0.0',
                        style: TextStyle(
                          fontSize: 7.0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.end,
                ),
                titlePadding: const EdgeInsets.only(bottom: 40.0),
                centerTitle: true,
                background: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.1),
                      ],
                    ).createShader(
                      Rect.fromLTRB(0, 0, rect.width, rect.height),
                    );
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image(
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    image: AssetImage(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/header-dark.jpg'
                          : 'assets/images/header.jpg',
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  ListTile(
                    title: Text(
                      AppLocalizations.of(context)!.home,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                    leading: Icon(
                      Icons.home_rounded,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    selected: true,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  if (Platform.isAndroid)
                    ListTile(
                      title: Text(AppLocalizations.of(context)!.myMusic),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Icon(
                        MdiIcons.folderMusic,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const DownloadedSongs(
                        //       showPlaylists: true,
                        //     ),
                        //   ),
                        // );
                      },
                    ),
                  ListTile(
                    title: Text(AppLocalizations.of(context)!.downs),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                    leading: Icon(
                      Icons.download_done_rounded,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/downloads');
                    },
                  ),
                  ListTile(
                    title: Text(AppLocalizations.of(context)!.playlists),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                    leading: Icon(
                      Icons.playlist_play_rounded,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/playlists');
                    },
                  ),
                  ListTile(
                    title: Text(AppLocalizations.of(context)!.settings),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                    leading: Icon(
                      Icons.settings_rounded, // miscellaneous_services_rounded,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => SettingPage(callback: callback),
                      //   ),
                      // );
                    },
                  ),
                  ListTile(
                    title: Text(AppLocalizations.of(context)!.about),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                    leading: Icon(
                      Icons.info_outline_rounded,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/about');
                    },
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 30, 5, 20),
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.madeBy,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
