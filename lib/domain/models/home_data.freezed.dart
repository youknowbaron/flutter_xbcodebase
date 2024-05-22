// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeData _$HomeDataFromJson(Map<String, dynamic> json) {
  return _HomeData.fromJson(json);
}

/// @nodoc
mixin _$HomeData {
// @JsonKey(name: 'new_trending') @Default([]) List<Media> newTrending,
  @JsonKey(name: 'top_playlists')
  List<Media> get topPlaylists => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_albums')
  List<Media> get newAlbums => throw _privateConstructorUsedError;
  List<Media> get radio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res, HomeData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'top_playlists') List<Media> topPlaylists,
      @JsonKey(name: 'new_albums') List<Media> newAlbums,
      List<Media> radio});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res, $Val extends HomeData>
    implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topPlaylists = null,
    Object? newAlbums = null,
    Object? radio = null,
  }) {
    return _then(_value.copyWith(
      topPlaylists: null == topPlaylists
          ? _value.topPlaylists
          : topPlaylists // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      newAlbums: null == newAlbums
          ? _value.newAlbums
          : newAlbums // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      radio: null == radio
          ? _value.radio
          : radio // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDataImplCopyWith<$Res>
    implements $HomeDataCopyWith<$Res> {
  factory _$$HomeDataImplCopyWith(
          _$HomeDataImpl value, $Res Function(_$HomeDataImpl) then) =
      __$$HomeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'top_playlists') List<Media> topPlaylists,
      @JsonKey(name: 'new_albums') List<Media> newAlbums,
      List<Media> radio});
}

/// @nodoc
class __$$HomeDataImplCopyWithImpl<$Res>
    extends _$HomeDataCopyWithImpl<$Res, _$HomeDataImpl>
    implements _$$HomeDataImplCopyWith<$Res> {
  __$$HomeDataImplCopyWithImpl(
      _$HomeDataImpl _value, $Res Function(_$HomeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topPlaylists = null,
    Object? newAlbums = null,
    Object? radio = null,
  }) {
    return _then(_$HomeDataImpl(
      topPlaylists: null == topPlaylists
          ? _value._topPlaylists
          : topPlaylists // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      newAlbums: null == newAlbums
          ? _value._newAlbums
          : newAlbums // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      radio: null == radio
          ? _value._radio
          : radio // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDataImpl implements _HomeData {
  const _$HomeDataImpl(
      {@JsonKey(name: 'top_playlists')
      final List<Media> topPlaylists = const [],
      @JsonKey(name: 'new_albums') final List<Media> newAlbums = const [],
      final List<Media> radio = const []})
      : _topPlaylists = topPlaylists,
        _newAlbums = newAlbums,
        _radio = radio;

  factory _$HomeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDataImplFromJson(json);

// @JsonKey(name: 'new_trending') @Default([]) List<Media> newTrending,
  final List<Media> _topPlaylists;
// @JsonKey(name: 'new_trending') @Default([]) List<Media> newTrending,
  @override
  @JsonKey(name: 'top_playlists')
  List<Media> get topPlaylists {
    if (_topPlaylists is EqualUnmodifiableListView) return _topPlaylists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topPlaylists);
  }

  final List<Media> _newAlbums;
  @override
  @JsonKey(name: 'new_albums')
  List<Media> get newAlbums {
    if (_newAlbums is EqualUnmodifiableListView) return _newAlbums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newAlbums);
  }

  final List<Media> _radio;
  @override
  @JsonKey()
  List<Media> get radio {
    if (_radio is EqualUnmodifiableListView) return _radio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_radio);
  }

  @override
  String toString() {
    return 'HomeData(topPlaylists: $topPlaylists, newAlbums: $newAlbums, radio: $radio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataImpl &&
            const DeepCollectionEquality()
                .equals(other._topPlaylists, _topPlaylists) &&
            const DeepCollectionEquality()
                .equals(other._newAlbums, _newAlbums) &&
            const DeepCollectionEquality().equals(other._radio, _radio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topPlaylists),
      const DeepCollectionEquality().hash(_newAlbums),
      const DeepCollectionEquality().hash(_radio));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      __$$HomeDataImplCopyWithImpl<_$HomeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDataImplToJson(
      this,
    );
  }
}

abstract class _HomeData implements HomeData {
  const factory _HomeData(
      {@JsonKey(name: 'top_playlists') final List<Media> topPlaylists,
      @JsonKey(name: 'new_albums') final List<Media> newAlbums,
      final List<Media> radio}) = _$HomeDataImpl;

  factory _HomeData.fromJson(Map<String, dynamic> json) =
      _$HomeDataImpl.fromJson;

  @override // @JsonKey(name: 'new_trending') @Default([]) List<Media> newTrending,
  @JsonKey(name: 'top_playlists')
  List<Media> get topPlaylists;
  @override
  @JsonKey(name: 'new_albums')
  List<Media> get newAlbums;
  @override
  List<Media> get radio;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
