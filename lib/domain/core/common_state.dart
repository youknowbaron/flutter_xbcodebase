import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xbcodebase/domain/core/api_failure.dart';

import 'any_failure.dart';

part 'common_state.freezed.dart';

@freezed
class CommonState<T, R extends AnyFailure> with _$CommonState<T, R> {
  const CommonState._();
  const factory CommonState.init([T? data]) = _Init;
  const factory CommonState.loading() = _Loading;
  const factory CommonState.loaded(T data) = _Loaded;
  const factory CommonState.error([R? failure]) = _Error;
}

typedef CommonApiState<T> = CommonState<T, ApiFailure>;
