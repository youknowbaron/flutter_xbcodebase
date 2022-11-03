import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xbcodebase/core/api_failure.dart';
import 'package:xbcodebase/core/common_state.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const ApiResult._();
  const factory ApiResult.notModified(T data) = _NotModified<T>;
  const factory ApiResult.data(T data) = _Data<T>;
  const factory ApiResult.failure([ApiFailure? failure]) = _Failure<T>;
}
