import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/any_failure.dart';
import '../../domain/core/api_failure.dart';
import '../../domain/core/api_result.dart';
import '../../domain/core/common_state.dart';

abstract class CommonStateNotifier<T, R extends AnyFailure>
    extends StateNotifier<CommonState<T, R>> {
  CommonStateNotifier() : super(const CommonState.init());

  void assignApiResultToState(ApiResult<T> result) {
    state = mapApiResultToState(result);
  }

  CommonState<T, R> mapApiResultToState(ApiResult<T> result) {
    return result.when(
      notModified: (data) => CommonState.loaded(data),
      data: (data) => CommonState.loaded(data),
      failure: (failure) => CommonState.error(failure as R?),
    );
  }
}

typedef CommonApiStateNotifier<T> = CommonStateNotifier<T, ApiFailure>;

typedef CommonStateNotifierProvider<T extends CommonStateNotifier>
    = StateNotifierProvider<T, CommonState>;
