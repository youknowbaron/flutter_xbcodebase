import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const ApiResult._();
  const factory ApiResult.noConnection() = _NoConnection<T>;
  const factory ApiResult.notModified() = _NotModified<T>;
  const factory ApiResult.data(T data) = _Data<T>;
  const factory ApiResult.failure({
    String? errorCode,
    String? message,
  }) = _Failure<T>;
}
