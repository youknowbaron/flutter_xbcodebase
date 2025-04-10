import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class PullToRefresh extends HookWidget {
  const PullToRefresh({
    super.key,
    this.onRefresh,
    this.onLoadmore,
    this.controller,
    this.physics = const ClampingScrollPhysics(),
    required this.child,
  });

  final Future<void> Function()? onRefresh;
  final Future<LoadStatus> Function()? onLoadmore;
  final RefreshController? controller;
  final Widget child;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    final refreshController = useMemoized(() =>
        controller ??
        RefreshController(
          initialRefreshStatus: RefreshStatus.canRefresh,
          initialLoadStatus: LoadStatus.canLoading,
        ));
    return SmartRefresher(
      physics: physics,
      controller: refreshController,
      enablePullDown: onRefresh != null,
      enablePullUp: onLoadmore != null,
      footer: const ClassicFooter(
        idleText: '',
        failedText: '',
        noDataText: '',
        loadingText: '',
        canLoadingText: '',
      ),
      header: const ClassicHeader(
        idleText: '',
        failedText: '',
        releaseText: '',
        completeText: '',
        refreshingText: '',
        canTwoLevelText: '',
      ),
      onRefresh: () async {
        if (onRefresh != null) {
          await onRefresh!();
          refreshController.refreshCompleted(resetFooterState: true);
        } else {
          await Future.delayed(const Duration(milliseconds: 500));
          refreshController.refreshCompleted(resetFooterState: true);
        }
      },
      onLoading: () async {
        if (onLoadmore != null) {
          final status = await onLoadmore!();
          switch (status) {
            case LoadStatus.noMore:
              return refreshController.loadNoData();
            case LoadStatus.failed:
              return refreshController.loadFailed();
            default:
              return refreshController.loadComplete();
          }
        } else {
          await Future.delayed(const Duration(milliseconds: 500));
          refreshController.loadNoData();
        }
      },
      child: child,
    );
  }
}
