import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:xbcodebase/app_constants.dart';
import 'package:xbcodebase/core/shared/core_providers.dart';
import 'package:xbcodebase/core/widgets/space.dart';
import 'package:xbcodebase/features/home/shared/home_providers.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(homeProvider, (previous, next) {});
    final appTheme = ref.watch(appThemeProvider.notifier);

    final scrollController = useScrollController();
    return SafeArea(
      child: Stack(
        children: [
          NestedScrollView(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return _headerSliverBuilder(context, scrollController);
            },
            body: Column(
              children: [
                Text('Home Page', style: Theme.of(context).textTheme.headline1),
                Switch(
                  value: appTheme.currentTheme == ThemeMode.dark,
                  onChanged: (value) {
                    appTheme.toggleTheme();
                  },
                ),
              ],
            ),
          ),
          Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 4.0,
              ),
              child: Transform.rotate(
                angle: 22 / 7 * 2,
                child: IconButton(
                  icon: const Icon(
                    Icons.horizontal_split_rounded,
                  ),
                  // color: Theme.of(context).iconTheme.color,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),
            ),
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
                            AppLocalizations.of(context)!.homeGreet,
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
        backgroundColor: Colors.transparent,
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
                        AppLocalizations.of(context)!.searchText,
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
                  context.go('/${RKeys.search}');
                },
              );
            },
          ),
        ),
      ),
    ];
  }
}
