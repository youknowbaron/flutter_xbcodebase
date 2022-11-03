// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(int? statusCode, String? message) http,
    required TResult Function(String? errorCode, String? message) parse,
    required TResult Function(String? errorCode, String? message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(int? statusCode, String? message)? http,
    TResult? Function(String? errorCode, String? message)? parse,
    TResult? Function(String? errorCode, String? message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(int? statusCode, String? message)? http,
    TResult Function(String? errorCode, String? message)? parse,
    TResult Function(String? errorCode, String? message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_HttpError value) http,
    required TResult Function(_ParseError value) parse,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_HttpError value)? http,
    TResult? Function(_ParseError value)? parse,
    TResult? Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_HttpError value)? http,
    TResult Function(_ParseError value)? parse,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res, ApiFailure>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res, $Val extends ApiFailure>
    implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<$Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection value, $Res Function(_$_NoConnection) then) =
      __$$_NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$_NoConnection>
    implements _$$_NoConnectionCopyWith<$Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection _value, $Res Function(_$_NoConnection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoConnection extends _NoConnection {
  const _$_NoConnection() : super._();

  @override
  String toString() {
    return 'ApiFailure.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(int? statusCode, String? message) http,
    required TResult Function(String? errorCode, String? message) parse,
    required TResult Function(String? errorCode, String? message) unknown,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(int? statusCode, String? message)? http,
    TResult? Function(String? errorCode, String? message)? parse,
    TResult? Function(String? errorCode, String? message)? unknown,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(int? statusCode, String? message)? http,
    TResult Function(String? errorCode, String? message)? parse,
    TResult Function(String? errorCode, String? message)? unknown,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_HttpError value) http,
    required TResult Function(_ParseError value) parse,
    required TResult Function(_Unknown value) unknown,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_HttpError value)? http,
    TResult? Function(_ParseError value)? parse,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_HttpError value)? http,
    TResult Function(_ParseError value)? parse,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection extends ApiFailure {
  const factory _NoConnection() = _$_NoConnection;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$$_HttpErrorCopyWith<$Res> {
  factory _$$_HttpErrorCopyWith(
          _$_HttpError value, $Res Function(_$_HttpError) then) =
      __$$_HttpErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class __$$_HttpErrorCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$_HttpError>
    implements _$$_HttpErrorCopyWith<$Res> {
  __$$_HttpErrorCopyWithImpl(
      _$_HttpError _value, $Res Function(_$_HttpError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_HttpError(
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HttpError extends _HttpError {
  const _$_HttpError(this.statusCode, {this.message}) : super._();

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailure.http(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpError &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HttpErrorCopyWith<_$_HttpError> get copyWith =>
      __$$_HttpErrorCopyWithImpl<_$_HttpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(int? statusCode, String? message) http,
    required TResult Function(String? errorCode, String? message) parse,
    required TResult Function(String? errorCode, String? message) unknown,
  }) {
    return http(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(int? statusCode, String? message)? http,
    TResult? Function(String? errorCode, String? message)? parse,
    TResult? Function(String? errorCode, String? message)? unknown,
  }) {
    return http?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(int? statusCode, String? message)? http,
    TResult Function(String? errorCode, String? message)? parse,
    TResult Function(String? errorCode, String? message)? unknown,
    required TResult orElse(),
  }) {
    if (http != null) {
      return http(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_HttpError value) http,
    required TResult Function(_ParseError value) parse,
    required TResult Function(_Unknown value) unknown,
  }) {
    return http(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_HttpError value)? http,
    TResult? Function(_ParseError value)? parse,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return http?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_HttpError value)? http,
    TResult Function(_ParseError value)? parse,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (http != null) {
      return http(this);
    }
    return orElse();
  }
}

abstract class _HttpError extends ApiFailure {
  const factory _HttpError(final int? statusCode, {final String? message}) =
      _$_HttpError;
  const _HttpError._() : super._();

  int? get statusCode;
  String? get message;
  @JsonKey(ignore: true)
  _$$_HttpErrorCopyWith<_$_HttpError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ParseErrorCopyWith<$Res> {
  factory _$$_ParseErrorCopyWith(
          _$_ParseError value, $Res Function(_$_ParseError) then) =
      __$$_ParseErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorCode, String? message});
}

/// @nodoc
class __$$_ParseErrorCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$_ParseError>
    implements _$$_ParseErrorCopyWith<$Res> {
  __$$_ParseErrorCopyWithImpl(
      _$_ParseError _value, $Res Function(_$_ParseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ParseError(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ParseError extends _ParseError {
  const _$_ParseError({this.errorCode, this.message}) : super._();

  @override
  final String? errorCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailure.parse(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParseError &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParseErrorCopyWith<_$_ParseError> get copyWith =>
      __$$_ParseErrorCopyWithImpl<_$_ParseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(int? statusCode, String? message) http,
    required TResult Function(String? errorCode, String? message) parse,
    required TResult Function(String? errorCode, String? message) unknown,
  }) {
    return parse(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(int? statusCode, String? message)? http,
    TResult? Function(String? errorCode, String? message)? parse,
    TResult? Function(String? errorCode, String? message)? unknown,
  }) {
    return parse?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(int? statusCode, String? message)? http,
    TResult Function(String? errorCode, String? message)? parse,
    TResult Function(String? errorCode, String? message)? unknown,
    required TResult orElse(),
  }) {
    if (parse != null) {
      return parse(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_HttpError value) http,
    required TResult Function(_ParseError value) parse,
    required TResult Function(_Unknown value) unknown,
  }) {
    return parse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_HttpError value)? http,
    TResult? Function(_ParseError value)? parse,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return parse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_HttpError value)? http,
    TResult Function(_ParseError value)? parse,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (parse != null) {
      return parse(this);
    }
    return orElse();
  }
}

abstract class _ParseError extends ApiFailure {
  const factory _ParseError({final String? errorCode, final String? message}) =
      _$_ParseError;
  const _ParseError._() : super._();

  String? get errorCode;
  String? get message;
  @JsonKey(ignore: true)
  _$$_ParseErrorCopyWith<_$_ParseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorCode, String? message});
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$_Unknown>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_Unknown(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Unknown extends _Unknown {
  const _$_Unknown({this.errorCode, this.message}) : super._();

  @override
  final String? errorCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailure.unknown(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unknown &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      __$$_UnknownCopyWithImpl<_$_Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(int? statusCode, String? message) http,
    required TResult Function(String? errorCode, String? message) parse,
    required TResult Function(String? errorCode, String? message) unknown,
  }) {
    return unknown(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(int? statusCode, String? message)? http,
    TResult? Function(String? errorCode, String? message)? parse,
    TResult? Function(String? errorCode, String? message)? unknown,
  }) {
    return unknown?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(int? statusCode, String? message)? http,
    TResult Function(String? errorCode, String? message)? parse,
    TResult Function(String? errorCode, String? message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_HttpError value) http,
    required TResult Function(_ParseError value) parse,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_HttpError value)? http,
    TResult? Function(_ParseError value)? parse,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_HttpError value)? http,
    TResult Function(_ParseError value)? parse,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown extends ApiFailure {
  const factory _Unknown({final String? errorCode, final String? message}) =
      _$_Unknown;
  const _Unknown._() : super._();

  String? get errorCode;
  String? get message;
  @JsonKey(ignore: true)
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}
