import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/features/home/notifiers/home_notifier.dart';

import '../../../data/shared/service_providers.dart';
import '../../../domain/core/common_state.dart';
import '../../../domain/models/home_data.dart';

final homeProvider =
    StateNotifierProvider<HomeNotifier, CommonState<HomeData>>(
  (ref) {
    return HomeNotifier(ref.read(songServiceProvider));
  },
);
