import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:xbcodebase/common/widgets/drawer_icon.dart';
import 'package:xbcodebase/domain/models/home_data.dart';
import 'package:xbcodebase/features/home/notifiers/home_notifier.dart';

import '../../../common/widgets/media_horizontal_list.dart';
import '../../../bridges.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();

    final scrollController = useScrollController();

    final state = ref.watch<AsyncValue<HomeData?>>(homeNotifierProvider);
    return SafeArea(
      child: Stack(
        children: [
          NestedScrollView(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return _headerSliverBuilder(context, scrollController);
            },
            body: state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              data: (_) => _buildBody(context, _),
            ),
          ),
          Builder(
            builder: (context) => const Padding(
              padding: EdgeInsets.only(
                top: 8.0,
                left: 4.0,
              ),
              child: DrawerIconButton(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context, HomeData? homeData) {
    if (homeData == null) return const SizedBox.shrink();
    return SingleChildScrollView(
      child: Column(
        children: [
          // if (homeData.newTrending.isNotEmpty)
          //   Column(
          //     crossAxisAlignment: CrossAxisAlignment.stretch,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.fromLTRB(16, 12, 0, 4),
          //         child: Text(
          //           'New Treding',
          //           style: TextStyle(
          //             color: Theme.of(context).colorScheme.secondary,
          //             fontSize: 18,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       ),
          //       MediaHorizontalList(
          //         mediaList: homeData.newTrending,
          //         onTap: (int idx) {},
          //       ),
          //     ],
          //   ),
          if (homeData.newAlbums.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 0, 4),
                  child: Text(
                    'New Albums',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                MediaHorizontalList(
                  mediaList: homeData.newAlbums,
                  onTap: (int idx) {
                    // context.goNamed(
                    //   'mediaDetails',
                    //   params: {'mid': homeData.newAlbums[idx].id},
                    //   extra: homeData.newAlbums[idx],
                    // );
                    context.go(
                      '/media/${homeData.newAlbums[idx].id}',
                      extra: homeData.newAlbums[idx],
                    );
                  },
                ),
              ],
            ),
          if (homeData.radio.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 0, 4),
                  child: Text(
                    'Radio Stations',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                MediaHorizontalList(
                  mediaList: homeData.radio,
                  onTap: (int idx) {},
                ),
              ],
            ),
        ],
      ),
    );
  }

  List<Widget> _headerSliverBuilder(
      BuildContext context, ScrollController scrollController) {
    return <Widget>[
      SliverAppBar(
        expandedHeight: 135,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // pinned: true,
        toolbarHeight: 65,
        // floating: true,
        automaticallyImplyLeading: false,
        flexibleSpace: LayoutBuilder(
          builder: (
            BuildContext context,
            BoxConstraints constraints,
          ) {
            return FlexibleSpaceBar(
              // collapseMode: CollapseMode.parallax,
              background: GestureDetector(
                onTap: () async {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Height(60),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            $strings.homeGreet,
                            style: TextStyle(
                              letterSpacing: 2,
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'xuanbach',
                            style: TextStyle(
                              letterSpacing: 2,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      SliverAppBar(
        automaticallyImplyLeading: false,
        pinned: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        stretch: true,
        toolbarHeight: 65,
        title: Align(
          alignment: Alignment.centerRight,
          child: AnimatedBuilder(
            animation: scrollController,
            builder: (context, child) {
              return GestureDetector(
                child: AnimatedContainer(
                  width: (!scrollController.hasClients ||
                          scrollController.positions.length > 1)
                      ? MediaQuery.of(context).size.width
                      : max(
                          MediaQuery.of(context).size.width -
                              scrollController.offset.roundToDouble(),
                          MediaQuery.of(context).size.width - 75,
                        ),
                  height: 52.0,
                  duration: const Duration(
                    milliseconds: 150,
                  ),
                  padding: const EdgeInsets.all(2.0),
                  // margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: Theme.of(context).cardColor,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5.0,
                        offset: Offset(1.5, 1.5),
                        // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const Width(10),
                      Icon(
                        CupertinoIcons.search,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const Width(10),
                      Text(
                        $strings.searchText,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Theme.of(context).textTheme.caption!.color,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  context.go('/search');
                },
              );
            },
          ),
        ),
      ),
    ];
  }
}
