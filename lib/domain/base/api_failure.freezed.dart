// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$NoConnectionImplCopyWith<$Res> {
  factory _$$NoConnectionImplCopyWith(
          _$NoConnectionImpl value, $Res Function(_$NoConnectionImpl) then) =
      __$$NoConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConnectionImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$NoConnectionImpl>
    implements _$$NoConnectionImplCopyWith<$Res> {
  __$$NoConnectionImplCopyWithImpl(
      _$NoConnectionImpl _value, $Res Function(_$NoConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoConnectionImpl extends _NoConnection {
  const _$NoConnectionImpl() : super._();

  @override
  String toString() {
    return 'ApiFailure.noConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnectionImpl);
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
  const factory _NoConnection() = _$NoConnectionImpl;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$$HttpErrorImplCopyWith<$Res> {
  factory _$$HttpErrorImplCopyWith(
          _$HttpErrorImpl value, $Res Function(_$HttpErrorImpl) then) =
      __$$HttpErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class __$$HttpErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$HttpErrorImpl>
    implements _$$HttpErrorImplCopyWith<$Res> {
  __$$HttpErrorImplCopyWithImpl(
      _$HttpErrorImpl _value, $Res Function(_$HttpErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$HttpErrorImpl(
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

class _$HttpErrorImpl extends _HttpError {
  const _$HttpErrorImpl(this.statusCode, {this.message}) : super._();

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailure.http(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpErrorImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpErrorImplCopyWith<_$HttpErrorImpl> get copyWith =>
      __$$HttpErrorImplCopyWithImpl<_$HttpErrorImpl>(this, _$identity);

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
      _$HttpErrorImpl;
  const _HttpError._() : super._();

  int? get statusCode;
  String? get message;
  @JsonKey(ignore: true)
  _$$HttpErrorImplCopyWith<_$HttpErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParseErrorImplCopyWith<$Res> {
  factory _$$ParseErrorImplCopyWith(
          _$ParseErrorImpl value, $Res Function(_$ParseErrorImpl) then) =
      __$$ParseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorCode, String? message});
}

/// @nodoc
class __$$ParseErrorImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ParseErrorImpl>
    implements _$$ParseErrorImplCopyWith<$Res> {
  __$$ParseErrorImplCopyWithImpl(
      _$ParseErrorImpl _value, $Res Function(_$ParseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ParseErrorImpl(
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

class _$ParseErrorImpl extends _ParseError {
  const _$ParseErrorImpl({this.errorCode, this.message}) : super._();

  @override
  final String? errorCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailure.parse(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseErrorImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseErrorImplCopyWith<_$ParseErrorImpl> get copyWith =>
      __$$ParseErrorImplCopyWithImpl<_$ParseErrorImpl>(this, _$identity);

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
      _$ParseErrorImpl;
  const _ParseError._() : super._();

  String? get errorCode;
  String? get message;
  @JsonKey(ignore: true)
  _$$ParseErrorImplCopyWith<_$ParseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorCode, String? message});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UnknownImpl(
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

class _$UnknownImpl extends _Unknown {
  const _$UnknownImpl({this.errorCode, this.message}) : super._();

  @override
  final String? errorCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailure.unknown(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

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
      _$UnknownImpl;
  const _Unknown._() : super._();

  String? get errorCode;
  String? get message;
  @JsonKey(ignore: true)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
