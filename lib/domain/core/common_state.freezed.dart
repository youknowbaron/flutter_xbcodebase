// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'common_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommonState<T, R extends AnyFailure> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) init,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(R? failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? init,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(R? failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? init,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(R? failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T, R> value) init,
    required TResult Function(_Loading<T, R> value) loading,
    required TResult Function(_Loaded<T, R> value) loaded,
    required TResult Function(_Error<T, R> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T, R> value)? init,
    TResult? Function(_Loading<T, R> value)? loading,
    TResult? Function(_Loaded<T, R> value)? loaded,
    TResult? Function(_Error<T, R> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T, R> value)? init,
    TResult Function(_Loading<T, R> value)? loading,
    TResult Function(_Loaded<T, R> value)? loaded,
    TResult Function(_Error<T, R> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<T, R extends AnyFailure, $Res> {
  factory $CommonStateCopyWith(
          CommonState<T, R> value, $Res Function(CommonState<T, R>) then) =
      _$CommonStateCopyWithImpl<T, R, $Res, CommonState<T, R>>;
}

/// @nodoc
class _$CommonStateCopyWithImpl<T, R extends AnyFailure, $Res,
        $Val extends CommonState<T, R>>
    implements $CommonStateCopyWith<T, R, $Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<T, R extends AnyFailure, $Res> {
  factory _$$_InitCopyWith(
          _$_Init<T, R> value, $Res Function(_$_Init<T, R>) then) =
      __$$_InitCopyWithImpl<T, R, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$_InitCopyWithImpl<T, R extends AnyFailure, $Res>
    extends _$CommonStateCopyWithImpl<T, R, $Res, _$_Init<T, R>>
    implements _$$_InitCopyWith<T, R, $Res> {
  __$$_InitCopyWithImpl(
      _$_Init<T, R> _value, $Res Function(_$_Init<T, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Init<T, R>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_Init<T, R extends AnyFailure> extends _Init<T, R> {
  const _$_Init([this.data]) : super._();

  @override
  final T? data;

  @override
  String toString() {
    return 'CommonState<$T, $R>.init(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init<T, R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<T, R, _$_Init<T, R>> get copyWith =>
      __$$_InitCopyWithImpl<T, R, _$_Init<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) init,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(R? failure) error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? init,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(R? failure)? error,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? init,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(R? failure)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T, R> value) init,
    required TResult Function(_Loading<T, R> value) loading,
    required TResult Function(_Loaded<T, R> value) loaded,
    required TResult Function(_Error<T, R> value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T, R> value)? init,
    TResult? Function(_Loading<T, R> value)? loading,
    TResult? Function(_Loaded<T, R> value)? loaded,
    TResult? Function(_Error<T, R> value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T, R> value)? init,
    TResult Function(_Loading<T, R> value)? loading,
    TResult Function(_Loaded<T, R> value)? loaded,
    TResult Function(_Error<T, R> value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init<T, R extends AnyFailure> extends CommonState<T, R> {
  const factory _Init([final T? data]) = _$_Init<T, R>;
  const _Init._() : super._();

  T? get data;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<T, R, _$_Init<T, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<T, R extends AnyFailure, $Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading<T, R> value, $Res Function(_$_Loading<T, R>) then) =
      __$$_LoadingCopyWithImpl<T, R, $Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<T, R extends AnyFailure, $Res>
    extends _$CommonStateCopyWithImpl<T, R, $Res, _$_Loading<T, R>>
    implements _$$_LoadingCopyWith<T, R, $Res> {
  __$$_LoadingCopyWithImpl(
      _$_Loading<T, R> _value, $Res Function(_$_Loading<T, R>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading<T, R extends AnyFailure> extends _Loading<T, R> {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'CommonState<$T, $R>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading<T, R>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) init,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(R? failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? init,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(R? failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? init,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(R? failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T, R> value) init,
    required TResult Function(_Loading<T, R> value) loading,
    required TResult Function(_Loaded<T, R> value) loaded,
    required TResult Function(_Error<T, R> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T, R> value)? init,
    TResult? Function(_Loading<T, R> value)? loading,
    TResult? Function(_Loaded<T, R> value)? loaded,
    TResult? Function(_Error<T, R> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T, R> value)? init,
    TResult Function(_Loading<T, R> value)? loading,
    TResult Function(_Loaded<T, R> value)? loaded,
    TResult Function(_Error<T, R> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T, R extends AnyFailure> extends CommonState<T, R> {
  const factory _Loading() = _$_Loading<T, R>;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_LoadedCopyWith<T, R extends AnyFailure, $Res> {
  factory _$$_LoadedCopyWith(
          _$_Loaded<T, R> value, $Res Function(_$_Loaded<T, R>) then) =
      __$$_LoadedCopyWithImpl<T, R, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<T, R extends AnyFailure, $Res>
    extends _$CommonStateCopyWithImpl<T, R, $Res, _$_Loaded<T, R>>
    implements _$$_LoadedCopyWith<T, R, $Res> {
  __$$_LoadedCopyWithImpl(
      _$_Loaded<T, R> _value, $Res Function(_$_Loaded<T, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loaded<T, R>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Loaded<T, R extends AnyFailure> extends _Loaded<T, R> {
  const _$_Loaded(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'CommonState<$T, $R>.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded<T, R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<T, R, _$_Loaded<T, R>> get copyWith =>
      __$$_LoadedCopyWithImpl<T, R, _$_Loaded<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) init,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(R? failure) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? init,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(R? failure)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? init,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(R? failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T, R> value) init,
    required TResult Function(_Loading<T, R> value) loading,
    required TResult Function(_Loaded<T, R> value) loaded,
    required TResult Function(_Error<T, R> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T, R> value)? init,
    TResult? Function(_Loading<T, R> value)? loading,
    TResult? Function(_Loaded<T, R> value)? loaded,
    TResult? Function(_Error<T, R> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T, R> value)? init,
    TResult Function(_Loading<T, R> value)? loading,
    TResult Function(_Loaded<T, R> value)? loaded,
    TResult Function(_Error<T, R> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded<T, R extends AnyFailure> extends CommonState<T, R> {
  const factory _Loaded(final T data) = _$_Loaded<T, R>;
  const _Loaded._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<T, R, _$_Loaded<T, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<T, R extends AnyFailure, $Res> {
  factory _$$_ErrorCopyWith(
          _$_Error<T, R> value, $Res Function(_$_Error<T, R>) then) =
      __$$_ErrorCopyWithImpl<T, R, $Res>;
  @useResult
  $Res call({R? failure});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<T, R extends AnyFailure, $Res>
    extends _$CommonStateCopyWithImpl<T, R, $Res, _$_Error<T, R>>
    implements _$$_ErrorCopyWith<T, R, $Res> {
  __$$_ErrorCopyWithImpl(
      _$_Error<T, R> _value, $Res Function(_$_Error<T, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_Error<T, R>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as R?,
    ));
  }
}

/// @nodoc

class _$_Error<T, R extends AnyFailure> extends _Error<T, R> {
  const _$_Error([this.failure]) : super._();

  @override
  final R? failure;

  @override
  String toString() {
    return 'CommonState<$T, $R>.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error<T, R> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<T, R, _$_Error<T, R>> get copyWith =>
      __$$_ErrorCopyWithImpl<T, R, _$_Error<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) init,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(R? failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? init,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(R? failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? init,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(R? failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T, R> value) init,
    required TResult Function(_Loading<T, R> value) loading,
    required TResult Function(_Loaded<T, R> value) loaded,
    required TResult Function(_Error<T, R> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T, R> value)? init,
    TResult? Function(_Loading<T, R> value)? loading,
    TResult? Function(_Loaded<T, R> value)? loaded,
    TResult? Function(_Error<T, R> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T, R> value)? init,
    TResult Function(_Loading<T, R> value)? loading,
    TResult Function(_Loaded<T, R> value)? loaded,
    TResult Function(_Error<T, R> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T, R extends AnyFailure> extends CommonState<T, R> {
  const factory _Error([final R? failure]) = _$_Error<T, R>;
  const _Error._() : super._();

  R? get failure;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<T, R, _$_Error<T, R>> get copyWith =>
      throw _privateConstructorUsedError;
}
