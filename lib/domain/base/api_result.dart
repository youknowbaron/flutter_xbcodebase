import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'api_failure.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const ApiResult._();
  const factory ApiResult.notModified(T data) = _NotModified<T>;
  const factory ApiResult.data(T data) = _Data<T>;
  const factory ApiResult.failure([ApiFailure? failure]) = _Failure<T>;

  // Extensions
  AsyncValue<T> mapToAsyncValue() {
    return when(
      notModified: (data) => AsyncValue.data(data),
      data: (data) => AsyncValue.data(data),
      failure: (failure) => AsyncValue.error(
        failure ?? const ApiFailure.unknown(),
        StackTrace.current,
      ),
    );
  }

  T? mapToData() {
    return when(
      notModified: (data) => data,
      data: (data) => data,
      failure: (failure) => null,
    );
  }
}

