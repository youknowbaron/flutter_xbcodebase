// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
mixin _$Collection {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res, Collection>;
  @useResult
  $Res call(
      {String id, String name, @TimestampConverter() Timestamp? createdAt});
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res, $Val extends Collection>
    implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionImplCopyWith<$Res>
    implements $CollectionCopyWith<$Res> {
  factory _$$CollectionImplCopyWith(
          _$CollectionImpl value, $Res Function(_$CollectionImpl) then) =
      __$$CollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, @TimestampConverter() Timestamp? createdAt});
}

/// @nodoc
class __$$CollectionImplCopyWithImpl<$Res>
    extends _$CollectionCopyWithImpl<$Res, _$CollectionImpl>
    implements _$$CollectionImplCopyWith<$Res> {
  __$$CollectionImplCopyWithImpl(
      _$CollectionImpl _value, $Res Function(_$CollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$CollectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionImpl extends _Collection {
  _$CollectionImpl(
      {required this.id,
      required this.name,
      @TimestampConverter() this.createdAt})
      : super._();

  factory _$CollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @TimestampConverter()
  final Timestamp? createdAt;

  @override
  String toString() {
    return 'Collection(id: $id, name: $name, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      __$$CollectionImplCopyWithImpl<_$CollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionImplToJson(
      this,
    );
  }
}

abstract class _Collection extends Collection {
  factory _Collection(
      {required final String id,
      required final String name,
      @TimestampConverter() final Timestamp? createdAt}) = _$CollectionImpl;
  _Collection._() : super._();

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$CollectionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @TimestampConverter()
  Timestamp? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
