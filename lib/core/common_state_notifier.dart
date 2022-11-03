import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/core/api_result.dart';

import 'common_state.dart';

abstract class CommonStateNotifier extends StateNotifier<CommonState> {
  CommonStateNotifier() : super(const CommonState.init());

  void assignResultToState(ApiResult result) {
    state = result.when(
      notModified: (data) => CommonState.loaded(data),
      data: (data) => CommonState.loaded(data),
      failure: (failure) => CommonState.error(failure),
    );
  }
}

typedef CommonStateNotifierProvider<T extends CommonStateNotifier>
    = StateNotifierProvider<T, CommonState>;