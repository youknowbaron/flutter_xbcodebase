import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/api_result.dart';
import '../../domain/core/common_state.dart';

abstract class CommonStateNotifier<T> extends StateNotifier<CommonState<T>> {
  CommonStateNotifier() : super(const CommonState.init());

  void assignResultToState(ApiResult<T> result) {
    state = mapResultToState(result);
  }

  CommonState<T> mapResultToState(ApiResult<T> result) {
    return result.when(
      notModified: (data) => CommonState.loaded(data),
      data: (data) => CommonState.loaded(data),
      failure: (failure) => CommonState.error(failure),
    );
  }
}

typedef CommonStateNotifierProvider<T extends CommonStateNotifier>
    = StateNotifierProvider<T, CommonState>;
