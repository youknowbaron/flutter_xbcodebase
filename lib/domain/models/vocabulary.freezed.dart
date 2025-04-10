// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocabulary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Vocabulary _$VocabularyFromJson(Map<String, dynamic> json) {
  return _Vocabulary.fromJson(json);
}

/// @nodoc
mixin _$Vocabulary {
  String get id => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  String get meaning => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  int get wrongAnswerCount =>
      throw _privateConstructorUsedError; // New field: Number of wrong answers
  int get correctAnswerCount => throw _privateConstructorUsedError;

  /// Serializes this Vocabulary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vocabulary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VocabularyCopyWith<Vocabulary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VocabularyCopyWith<$Res> {
  factory $VocabularyCopyWith(
          Vocabulary value, $Res Function(Vocabulary) then) =
      _$VocabularyCopyWithImpl<$Res, Vocabulary>;
  @useResult
  $Res call(
      {String id,
      String word,
      String meaning,
      String? collectionId,
      @TimestampConverter() Timestamp? createdAt,
      int wrongAnswerCount,
      int correctAnswerCount});
}

/// @nodoc
class _$VocabularyCopyWithImpl<$Res, $Val extends Vocabulary>
    implements $VocabularyCopyWith<$Res> {
  _$VocabularyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vocabulary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? word = null,
    Object? meaning = null,
    Object? collectionId = freezed,
    Object? createdAt = freezed,
    Object? wrongAnswerCount = null,
    Object? correctAnswerCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      wrongAnswerCount: null == wrongAnswerCount
          ? _value.wrongAnswerCount
          : wrongAnswerCount // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswerCount: null == correctAnswerCount
          ? _value.correctAnswerCount
          : correctAnswerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VocabularyImplCopyWith<$Res>
    implements $VocabularyCopyWith<$Res> {
  factory _$$VocabularyImplCopyWith(
          _$VocabularyImpl value, $Res Function(_$VocabularyImpl) then) =
      __$$VocabularyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String word,
      String meaning,
      String? collectionId,
      @TimestampConverter() Timestamp? createdAt,
      int wrongAnswerCount,
      int correctAnswerCount});
}

/// @nodoc
class __$$VocabularyImplCopyWithImpl<$Res>
    extends _$VocabularyCopyWithImpl<$Res, _$VocabularyImpl>
    implements _$$VocabularyImplCopyWith<$Res> {
  __$$VocabularyImplCopyWithImpl(
      _$VocabularyImpl _value, $Res Function(_$VocabularyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Vocabulary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? word = null,
    Object? meaning = null,
    Object? collectionId = freezed,
    Object? createdAt = freezed,
    Object? wrongAnswerCount = null,
    Object? correctAnswerCount = null,
  }) {
    return _then(_$VocabularyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      wrongAnswerCount: null == wrongAnswerCount
          ? _value.wrongAnswerCount
          : wrongAnswerCount // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswerCount: null == correctAnswerCount
          ? _value.correctAnswerCount
          : correctAnswerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VocabularyImpl extends _Vocabulary {
  _$VocabularyImpl(
      {required this.id,
      required this.word,
      required this.meaning,
      this.collectionId,
      @TimestampConverter() this.createdAt,
      this.wrongAnswerCount = 0,
      this.correctAnswerCount = 0})
      : super._();

  factory _$VocabularyImpl.fromJson(Map<String, dynamic> json) =>
      _$$VocabularyImplFromJson(json);

  @override
  final String id;
  @override
  final String word;
  @override
  final String meaning;
  @override
  final String? collectionId;
  @override
  @TimestampConverter()
  final Timestamp? createdAt;
  @override
  @JsonKey()
  final int wrongAnswerCount;
// New field: Number of wrong answers
  @override
  @JsonKey()
  final int correctAnswerCount;

  @override
  String toString() {
    return 'Vocabulary(id: $id, word: $word, meaning: $meaning, collectionId: $collectionId, createdAt: $createdAt, wrongAnswerCount: $wrongAnswerCount, correctAnswerCount: $correctAnswerCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VocabularyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.wrongAnswerCount, wrongAnswerCount) ||
                other.wrongAnswerCount == wrongAnswerCount) &&
            (identical(other.correctAnswerCount, correctAnswerCount) ||
                other.correctAnswerCount == correctAnswerCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, word, meaning, collectionId,
      createdAt, wrongAnswerCount, correctAnswerCount);

  /// Create a copy of Vocabulary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VocabularyImplCopyWith<_$VocabularyImpl> get copyWith =>
      __$$VocabularyImplCopyWithImpl<_$VocabularyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VocabularyImplToJson(
      this,
    );
  }
}

abstract class _Vocabulary extends Vocabulary {
  factory _Vocabulary(
      {required final String id,
      required final String word,
      required final String meaning,
      final String? collectionId,
      @TimestampConverter() final Timestamp? createdAt,
      final int wrongAnswerCount,
      final int correctAnswerCount}) = _$VocabularyImpl;
  _Vocabulary._() : super._();

  factory _Vocabulary.fromJson(Map<String, dynamic> json) =
      _$VocabularyImpl.fromJson;

  @override
  String get id;
  @override
  String get word;
  @override
  String get meaning;
  @override
  String? get collectionId;
  @override
  @TimestampConverter()
  Timestamp? get createdAt;
  @override
  int get wrongAnswerCount; // New field: Number of wrong answers
  @override
  int get correctAnswerCount;

  /// Create a copy of Vocabulary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VocabularyImplCopyWith<_$VocabularyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
