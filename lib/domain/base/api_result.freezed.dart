// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) notModified,
    required TResult Function(T data) data,
    required TResult Function(ApiFailure? failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? notModified,
    TResult? Function(T data)? data,
    TResult? Function(ApiFailure? failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? notModified,
    TResult Function(T data)? data,
    TResult Function(ApiFailure? failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Failure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<T, $Res> {
  factory $ApiResultCopyWith(
          ApiResult<T> value, $Res Function(ApiResult<T>) then) =
      _$ApiResultCopyWithImpl<T, $Res, ApiResult<T>>;
}

/// @nodoc
class _$ApiResultCopyWithImpl<T, $Res, $Val extends ApiResult<T>>
    implements $ApiResultCopyWith<T, $Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotModifiedImplCopyWith<T, $Res> {
  factory _$$NotModifiedImplCopyWith(_$NotModifiedImpl<T> value,
          $Res Function(_$NotModifiedImpl<T>) then) =
      __$$NotModifiedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$NotModifiedImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$NotModifiedImpl<T>>
    implements _$$NotModifiedImplCopyWith<T, $Res> {
  __$$NotModifiedImplCopyWithImpl(
      _$NotModifiedImpl<T> _value, $Res Function(_$NotModifiedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NotModifiedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NotModifiedImpl<T> extends _NotModified<T> {
  const _$NotModifiedImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResult<$T>.notModified(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotModifiedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotModifiedImplCopyWith<T, _$NotModifiedImpl<T>> get copyWith =>
      __$$NotModifiedImplCopyWithImpl<T, _$NotModifiedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) notModified,
    required TResult Function(T data) data,
    required TResult Function(ApiFailure? failure) failure,
  }) {
    return notModified(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? notModified,
    TResult? Function(T data)? data,
    TResult? Function(ApiFailure? failure)? failure,
  }) {
    return notModified?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? notModified,
    TResult Function(T data)? data,
    TResult Function(ApiFailure? failure)? failure,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return notModified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Failure<T> value)? failure,
  }) {
    return notModified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified(this);
    }
    return orElse();
  }
}

abstract class _NotModified<T> extends ApiResult<T> {
  const factory _NotModified(final T data) = _$NotModifiedImpl<T>;
  const _NotModified._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$NotModifiedImplCopyWith<T, _$NotModifiedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataImplCopyWith<T, $Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl<T> value, $Res Function(_$DataImpl<T>) then) =
      __$$DataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DataImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$DataImpl<T>>
    implements _$$DataImplCopyWith<T, $Res> {
  __$$DataImplCopyWithImpl(
      _$DataImpl<T> _value, $Res Function(_$DataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataImpl<T> extends _Data<T> {
  const _$DataImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResult<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<T, _$DataImpl<T>> get copyWith =>
      __$$DataImplCopyWithImpl<T, _$DataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) notModified,
    required TResult Function(T data) data,
    required TResult Function(ApiFailure? failure) failure,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? notModified,
    TResult? Function(T data)? data,
    TResult? Function(ApiFailure? failure)? failure,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? notModified,
    TResult Function(T data)? data,
    TResult Function(ApiFailure? failure)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Failure<T> value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data<T> extends ApiResult<T> {
  const factory _Data(final T data) = _$DataImpl<T>;
  const _Data._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<T, _$DataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T> value, $Res Function(_$FailureImpl<T>) then) =
      __$$FailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiFailure? failure});

  $ApiFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$FailureImpl<T>>
    implements _$$FailureImplCopyWith<T, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T> _value, $Res Function(_$FailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$FailureImpl<T>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $ApiFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureImpl<T> extends _Failure<T> {
  const _$FailureImpl([this.failure]) : super._();

  @override
  final ApiFailure? failure;

  @override
  String toString() {
    return 'ApiResult<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, _$FailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) notModified,
    required TResult Function(T data) data,
    required TResult Function(ApiFailure? failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? notModified,
    TResult? Function(T data)? data,
    TResult? Function(ApiFailure? failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? notModified,
    TResult Function(T data)? data,
    TResult Function(ApiFailure? failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Failure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T> extends ApiResult<T> {
  const factory _Failure([final ApiFailure? failure]) = _$FailureImpl<T>;
  const _Failure._() : super._();

  ApiFailure? get failure;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
