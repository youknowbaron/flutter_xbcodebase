import 'package:freezed_annotation/freezed_annotation.dart';

import 'any_failure.dart';

part 'common_state.freezed.dart';

@freezed
class CommonState<T> with _$CommonState<T> {
  const CommonState._();
  const factory CommonState.init([T? data]) = _Init;
  const factory CommonState.loading() = _Loading;
  const factory CommonState.loaded(T data) = _Loaded;
  const factory CommonState.error([AnyFailure? failure]) = _Error;
}
