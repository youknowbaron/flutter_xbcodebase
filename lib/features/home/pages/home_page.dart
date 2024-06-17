import 'package:memorise_vocabulary/common/extensions/loading.dart';
import 'package:memorise_vocabulary/common/widgets/drawer_icon.dart';
import 'package:memorise_vocabulary/common/widgets/pull_to_refresh.dart';
import 'package:memorise_vocabulary/domain/models/collection.dart';
import 'package:memorise_vocabulary/features/home/notifiers/home_notifier.dart';

import '../../../bridges.dart';
import '../widgets/add_new_collection_popup.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();

    final scrollController = useScrollController();

    final state = ref.watch<AsyncValue<List<Collection>?>>(homeNotifierProvider);

    addNewCollection() async {
      await showDialog(
          context: context,
          builder: (context) {
            return AddNewCollectionPopup(
              onDoneTapped: (name) async {
                showLoading();
                await ref.read(homeNotifierProvider.notifier).addNewCollection(name);
                hideLoading();
                if (context.mounted) {
                  context.pop();
                }
              },
            );
          });
    }

    Widget buildBody(BuildContext context, List<Collection>? collections) {
      if (collections == null) return const SizedBox.shrink();
      return PullToRefresh(
        onRefresh: () async => ref.invalidate(homeNotifierProvider),
        child: ListView.builder(
          itemCount: collections.length,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          itemBuilder: (context, index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                collections[index].name,
              ),
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Stack(
        children: [
          NestedScrollView(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return _headerSliverBuilder(context, scrollController);
            },
            body: buildBody(context, state.value),
          ),
          Builder(
            builder: (context) => Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 8.0,
                    left: 4.0,
                  ),
                  child: DrawerIconButton(),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    right: 4.0,
                  ),
                  child: IconButton(
                    icon: const Icon($icons.add),
                    onPressed: addNewCollection,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _headerSliverBuilder(BuildContext context, ScrollController scrollController) {
    return <Widget>[
      SliverAppBar(
        expandedHeight: 135,
        collapsedHeight: 65,
        backgroundColor: context.theme.canvasColor,
        elevation: 0,
        pinned: true,
        // snap: true,
        // floating: true,
        toolbarHeight: 65,
        automaticallyImplyLeading: false,
        flexibleSpace: LayoutBuilder(
          builder: (
            BuildContext context,
            BoxConstraints constraints,
          ) {
            return FlexibleSpaceBar(
              // collapseMode: CollapseMode.pin,
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
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
      // SliverAppBar(
      //   automaticallyImplyLeading: false,
      //   pinned: true,
      //   backgroundColor: Theme.of(context).canvasColor,
      //   elevation: 0,
      //   stretch: true,
      //   toolbarHeight: 65,
      //   // title: Align(
      //   //   alignment: Alignment.centerRight,
      //   //   child: AnimatedBuilder(
      //   //     animation: scrollController,
      //   //     builder: (context, child) {
      //   //       return GestureDetector(
      //   //         child: AnimatedContainer(
      //   //           width: (!scrollController.hasClients || scrollController.positions.length > 1)
      //   //               ? MediaQuery.of(context).size.width
      //   //               : max(
      //   //                   MediaQuery.of(context).size.width -
      //   //                       scrollController.offset.roundToDouble(),
      //   //                   MediaQuery.of(context).size.width - 75,
      //   //                 ),
      //   //           height: 52.0,
      //   //           duration: const Duration(
      //   //             milliseconds: 150,
      //   //           ),
      //   //           padding: const EdgeInsets.all(2.0),
      //   //           // margin: EdgeInsets.zero,
      //   //           decoration: BoxDecoration(
      //   //             borderRadius: BorderRadius.circular(
      //   //               10.0,
      //   //             ),
      //   //             color: Theme.of(context).cardColor,
      //   //             boxShadow: const [
      //   //               BoxShadow(
      //   //                 color: Colors.black26,
      //   //                 blurRadius: 5.0,
      //   //                 offset: Offset(1.5, 1.5),
      //   //                 // shadow direction: bottom right
      //   //               )
      //   //             ],
      //   //           ),
      //   //           child: Row(
      //   //             children: [
      //   //               const Width(10),
      //   //               Icon(
      //   //                 CupertinoIcons.search,
      //   //                 color: Theme.of(context).colorScheme.secondary,
      //   //               ),
      //   //               const Width(10),
      //   //               Text(
      //   //                 $strings.searchText,
      //   //                 style: TextStyle(
      //   //                   fontSize: 16.0,
      //   //                   color: Theme.of(context).textTheme.bodySmall!.color,
      //   //                   fontWeight: FontWeight.normal,
      //   //                 ),
      //   //               ),
      //   //             ],
      //   //           ),
      //   //         ),
      //   //         onTap: () {
      //   //           GoStep.search.go(context);
      //   //         },
      //   //       );
      //   //     },
      //   //   ),
      //   // ),
      // ),
    ];
  }
}
