import 'dart:io';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:xbcodebase/common/widgets/no_app_bar.dart';
import 'package:xbcodebase/features/home/pages/home_page.dart';
import 'package:xbcodebase/features/library_page.dart';
import 'package:xbcodebase/features/top_charts/top_charts_page.dart';
import 'package:xbcodebase/features/youtube_page.dart';

import '../bridges.dart';

class DashboardPage extends HookWidget {
  const DashboardPage({this.initialIndex, super.key});

  final int? initialIndex;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useValueNotifier(initialIndex ?? 0);
    useEffect(() {
      if (initialIndex == null) return;
      currentPage.value = initialIndex!;
      pageController.animateToPage(
        initialIndex!,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      return;
    }, [initialIndex]);

    return Scaffold(
      appBar: const NoAppBar(),
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
                    text: $strings.appTitle,
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
                      $strings.home,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20.0),
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
                      title: Text($strings.myMusic),
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
                    title: Text($strings.downs),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20.0),
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
                    title: Text($strings.playlists),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20.0),
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
                    title: Text($strings.settings),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20.0),
                    leading: Icon(
                      Icons.settings_rounded, // miscellaneous_services_rounded,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      context.go('/settings');
                    },
                  ),
                  ListTile(
                    title: Text($strings.about),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20.0),
                    leading: Icon(
                      Icons.info_outline_rounded,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      // Navigator.pushNamed(context, '/about');
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
                        $strings.madeBy,
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
      body: PageView(
        controller: pageController,
        physics: const CustomPhysics(),
        children: const [
          HomePage(),
          TopChartsPage(),
          YouTubePage(),
          LibraryPage(),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: useValueListenable(currentPage),
        onTap: (index) {
          currentPage.value = index;
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
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
            icon: Icon(MdiIcons.youtube),
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
}

class CustomPhysics extends ScrollPhysics {
  const CustomPhysics({super.parent});

  @override
  CustomPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomPhysics(parent: buildParent(ancestor));
  }

  @override
  SpringDescription get spring => const SpringDescription(
        mass: 150,
        stiffness: 100,
        damping: 1,
      );
}
