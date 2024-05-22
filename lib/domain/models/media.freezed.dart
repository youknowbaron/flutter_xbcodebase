// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'header_desc')
  String get headerDesc => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'perma_url')
  String get permaUrl => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String get playCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'explicit_content')
  String get explicitContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'list_count')
  String get listCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'list_type')
  String get listType => throw _privateConstructorUsedError;
  String get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      @JsonKey(name: 'header_desc') String headerDesc,
      String type,
      @JsonKey(name: 'perma_url') String permaUrl,
      String image,
      String language,
      String year,
      String playCount,
      @JsonKey(name: 'explicit_content') String explicitContent,
      @JsonKey(name: 'list_count') String listCount,
      @JsonKey(name: 'list_type') String listType,
      String list});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? headerDesc = null,
    Object? type = null,
    Object? permaUrl = null,
    Object? image = null,
    Object? language = null,
    Object? year = null,
    Object? playCount = null,
    Object? explicitContent = null,
    Object? listCount = null,
    Object? listType = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      headerDesc: null == headerDesc
          ? _value.headerDesc
          : headerDesc // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      permaUrl: null == permaUrl
          ? _value.permaUrl
          : permaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      playCount: null == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as String,
      explicitContent: null == explicitContent
          ? _value.explicitContent
          : explicitContent // ignore: cast_nullable_to_non_nullable
              as String,
      listCount: null == listCount
          ? _value.listCount
          : listCount // ignore: cast_nullable_to_non_nullable
              as String,
      listType: null == listType
          ? _value.listType
          : listType // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
          _$MediaImpl value, $Res Function(_$MediaImpl) then) =
      __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      @JsonKey(name: 'header_desc') String headerDesc,
      String type,
      @JsonKey(name: 'perma_url') String permaUrl,
      String image,
      String language,
      String year,
      String playCount,
      @JsonKey(name: 'explicit_content') String explicitContent,
      @JsonKey(name: 'list_count') String listCount,
      @JsonKey(name: 'list_type') String listType,
      String list});
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
      _$MediaImpl _value, $Res Function(_$MediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? headerDesc = null,
    Object? type = null,
    Object? permaUrl = null,
    Object? image = null,
    Object? language = null,
    Object? year = null,
    Object? playCount = null,
    Object? explicitContent = null,
    Object? listCount = null,
    Object? listType = null,
    Object? list = null,
  }) {
    return _then(_$MediaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      headerDesc: null == headerDesc
          ? _value.headerDesc
          : headerDesc // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      permaUrl: null == permaUrl
          ? _value.permaUrl
          : permaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      playCount: null == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as String,
      explicitContent: null == explicitContent
          ? _value.explicitContent
          : explicitContent // ignore: cast_nullable_to_non_nullable
              as String,
      listCount: null == listCount
          ? _value.listCount
          : listCount // ignore: cast_nullable_to_non_nullable
              as String,
      listType: null == listType
          ? _value.listType
          : listType // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaImpl implements _Media {
  const _$MediaImpl(
      {required this.id,
      required this.title,
      this.subtitle = "",
      @JsonKey(name: 'header_desc') this.headerDesc = "",
      this.type = "",
      @JsonKey(name: 'perma_url') this.permaUrl = "",
      this.image = "",
      this.language = "",
      this.year = "",
      this.playCount = "",
      @JsonKey(name: 'explicit_content') this.explicitContent = "",
      @JsonKey(name: 'list_count') this.listCount = "",
      @JsonKey(name: 'list_type') this.listType = "",
      this.list = ""});

  factory _$MediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey()
  final String subtitle;
  @override
  @JsonKey(name: 'header_desc')
  final String headerDesc;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey(name: 'perma_url')
  final String permaUrl;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String year;
  @override
  @JsonKey()
  final String playCount;
  @override
  @JsonKey(name: 'explicit_content')
  final String explicitContent;
  @override
  @JsonKey(name: 'list_count')
  final String listCount;
  @override
  @JsonKey(name: 'list_type')
  final String listType;
  @override
  @JsonKey()
  final String list;

  @override
  String toString() {
    return 'Media(id: $id, title: $title, subtitle: $subtitle, headerDesc: $headerDesc, type: $type, permaUrl: $permaUrl, image: $image, language: $language, year: $year, playCount: $playCount, explicitContent: $explicitContent, listCount: $listCount, listType: $listType, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.headerDesc, headerDesc) ||
                other.headerDesc == headerDesc) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.permaUrl, permaUrl) ||
                other.permaUrl == permaUrl) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.playCount, playCount) ||
                other.playCount == playCount) &&
            (identical(other.explicitContent, explicitContent) ||
                other.explicitContent == explicitContent) &&
            (identical(other.listCount, listCount) ||
                other.listCount == listCount) &&
            (identical(other.listType, listType) ||
                other.listType == listType) &&
            (identical(other.list, list) || other.list == list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      subtitle,
      headerDesc,
      type,
      permaUrl,
      image,
      language,
      year,
      playCount,
      explicitContent,
      listCount,
      listType,
      list);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImplToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {required final String id,
      required final String title,
      final String subtitle,
      @JsonKey(name: 'header_desc') final String headerDesc,
      final String type,
      @JsonKey(name: 'perma_url') final String permaUrl,
      final String image,
      final String language,
      final String year,
      final String playCount,
      @JsonKey(name: 'explicit_content') final String explicitContent,
      @JsonKey(name: 'list_count') final String listCount,
      @JsonKey(name: 'list_type') final String listType,
      final String list}) = _$MediaImpl;

  factory _Media.fromJson(Map<String, dynamic> json) = _$MediaImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  @JsonKey(name: 'header_desc')
  String get headerDesc;
  @override
  String get type;
  @override
  @JsonKey(name: 'perma_url')
  String get permaUrl;
  @override
  String get image;
  @override
  String get language;
  @override
  String get year;
  @override
  String get playCount;
  @override
  @JsonKey(name: 'explicit_content')
  String get explicitContent;
  @override
  @JsonKey(name: 'list_count')
  String get listCount;
  @override
  @JsonKey(name: 'list_type')
  String get listType;
  @override
  String get list;
  @override
  @JsonKey(ignore: true)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
