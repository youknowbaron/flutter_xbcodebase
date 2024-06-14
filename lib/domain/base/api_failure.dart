import 'package:freezed_annotation/freezed_annotation.dart';
import 'any_failure.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure extends AnyFailure with _$ApiFailure {
  const ApiFailure._();
  const factory ApiFailure.noConnection() = _NoConnection;
  const factory ApiFailure.http(int? statusCode, {String? message}) = _HttpError;
  const factory ApiFailure.other({String? errorCode, String? message, Object? error}) = _OtherError;
  const factory ApiFailure.unknown() = _UnknownError;
}
