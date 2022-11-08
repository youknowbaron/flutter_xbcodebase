import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/features/home/notifiers/home_notifier.dart';

final homeProvider = StateNotifierProvider.autoDispose(
  (ref) {
    return HomeNotifier();
  },
);
