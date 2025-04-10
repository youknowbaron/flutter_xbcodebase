// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DictionaryWord _$DictionaryWordFromJson(Map<String, dynamic> json) {
  return _DictionaryWord.fromJson(json);
}

/// @nodoc
mixin _$DictionaryWord {
  String get word => throw _privateConstructorUsedError;
  String? get phonetic =>
      throw _privateConstructorUsedError; // Added phonetic field
  List<WordPhonetic> get phonetics => throw _privateConstructorUsedError;
  List<WordMeaning> get meanings => throw _privateConstructorUsedError;
  WordLicense get license => throw _privateConstructorUsedError;
  List<String> get sourceUrls => throw _privateConstructorUsedError;

  /// Serializes this DictionaryWord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryWordCopyWith<DictionaryWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryWordCopyWith<$Res> {
  factory $DictionaryWordCopyWith(
          DictionaryWord value, $Res Function(DictionaryWord) then) =
      _$DictionaryWordCopyWithImpl<$Res, DictionaryWord>;
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      List<WordPhonetic> phonetics,
      List<WordMeaning> meanings,
      WordLicense license,
      List<String> sourceUrls});

  $WordLicenseCopyWith<$Res> get license;
}

/// @nodoc
class _$DictionaryWordCopyWithImpl<$Res, $Val extends DictionaryWord>
    implements $DictionaryWordCopyWith<$Res> {
  _$DictionaryWordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? phonetics = null,
    Object? meanings = null,
    Object? license = null,
    Object? sourceUrls = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: freezed == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetics: null == phonetics
          ? _value.phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<WordPhonetic>,
      meanings: null == meanings
          ? _value.meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<WordMeaning>,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as WordLicense,
      sourceUrls: null == sourceUrls
          ? _value.sourceUrls
          : sourceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WordLicenseCopyWith<$Res> get license {
    return $WordLicenseCopyWith<$Res>(_value.license, (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DictionaryWordImplCopyWith<$Res>
    implements $DictionaryWordCopyWith<$Res> {
  factory _$$DictionaryWordImplCopyWith(_$DictionaryWordImpl value,
          $Res Function(_$DictionaryWordImpl) then) =
      __$$DictionaryWordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      List<WordPhonetic> phonetics,
      List<WordMeaning> meanings,
      WordLicense license,
      List<String> sourceUrls});

  @override
  $WordLicenseCopyWith<$Res> get license;
}

/// @nodoc
class __$$DictionaryWordImplCopyWithImpl<$Res>
    extends _$DictionaryWordCopyWithImpl<$Res, _$DictionaryWordImpl>
    implements _$$DictionaryWordImplCopyWith<$Res> {
  __$$DictionaryWordImplCopyWithImpl(
      _$DictionaryWordImpl _value, $Res Function(_$DictionaryWordImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? phonetics = null,
    Object? meanings = null,
    Object? license = null,
    Object? sourceUrls = null,
  }) {
    return _then(_$DictionaryWordImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: freezed == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetics: null == phonetics
          ? _value._phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<WordPhonetic>,
      meanings: null == meanings
          ? _value._meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<WordMeaning>,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as WordLicense,
      sourceUrls: null == sourceUrls
          ? _value._sourceUrls
          : sourceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryWordImpl implements _DictionaryWord {
  const _$DictionaryWordImpl(
      {required this.word,
      this.phonetic,
      required final List<WordPhonetic> phonetics,
      required final List<WordMeaning> meanings,
      required this.license,
      required final List<String> sourceUrls})
      : _phonetics = phonetics,
        _meanings = meanings,
        _sourceUrls = sourceUrls;

  factory _$DictionaryWordImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryWordImplFromJson(json);

  @override
  final String word;
  @override
  final String? phonetic;
// Added phonetic field
  final List<WordPhonetic> _phonetics;
// Added phonetic field
  @override
  List<WordPhonetic> get phonetics {
    if (_phonetics is EqualUnmodifiableListView) return _phonetics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phonetics);
  }

  final List<WordMeaning> _meanings;
  @override
  List<WordMeaning> get meanings {
    if (_meanings is EqualUnmodifiableListView) return _meanings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meanings);
  }

  @override
  final WordLicense license;
  final List<String> _sourceUrls;
  @override
  List<String> get sourceUrls {
    if (_sourceUrls is EqualUnmodifiableListView) return _sourceUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceUrls);
  }

  @override
  String toString() {
    return 'DictionaryWord(word: $word, phonetic: $phonetic, phonetics: $phonetics, meanings: $meanings, license: $license, sourceUrls: $sourceUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryWordImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic) &&
            const DeepCollectionEquality()
                .equals(other._phonetics, _phonetics) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings) &&
            (identical(other.license, license) || other.license == license) &&
            const DeepCollectionEquality()
                .equals(other._sourceUrls, _sourceUrls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      phonetic,
      const DeepCollectionEquality().hash(_phonetics),
      const DeepCollectionEquality().hash(_meanings),
      license,
      const DeepCollectionEquality().hash(_sourceUrls));

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryWordImplCopyWith<_$DictionaryWordImpl> get copyWith =>
      __$$DictionaryWordImplCopyWithImpl<_$DictionaryWordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryWordImplToJson(
      this,
    );
  }
}

abstract class _DictionaryWord implements DictionaryWord {
  const factory _DictionaryWord(
      {required final String word,
      final String? phonetic,
      required final List<WordPhonetic> phonetics,
      required final List<WordMeaning> meanings,
      required final WordLicense license,
      required final List<String> sourceUrls}) = _$DictionaryWordImpl;

  factory _DictionaryWord.fromJson(Map<String, dynamic> json) =
      _$DictionaryWordImpl.fromJson;

  @override
  String get word;
  @override
  String? get phonetic; // Added phonetic field
  @override
  List<WordPhonetic> get phonetics;
  @override
  List<WordMeaning> get meanings;
  @override
  WordLicense get license;
  @override
  List<String> get sourceUrls;

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryWordImplCopyWith<_$DictionaryWordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WordPhonetic _$WordPhoneticFromJson(Map<String, dynamic> json) {
  return _WordPhonetic.fromJson(json);
}

/// @nodoc
mixin _$WordPhonetic {
  String? get audio => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  /// Serializes this WordPhonetic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WordPhonetic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WordPhoneticCopyWith<WordPhonetic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordPhoneticCopyWith<$Res> {
  factory $WordPhoneticCopyWith(
          WordPhonetic value, $Res Function(WordPhonetic) then) =
      _$WordPhoneticCopyWithImpl<$Res, WordPhonetic>;
  @useResult
  $Res call({String? audio, String? text});
}

/// @nodoc
class _$WordPhoneticCopyWithImpl<$Res, $Val extends WordPhonetic>
    implements $WordPhoneticCopyWith<$Res> {
  _$WordPhoneticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WordPhonetic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordPhoneticImplCopyWith<$Res>
    implements $WordPhoneticCopyWith<$Res> {
  factory _$$WordPhoneticImplCopyWith(
          _$WordPhoneticImpl value, $Res Function(_$WordPhoneticImpl) then) =
      __$$WordPhoneticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? audio, String? text});
}

/// @nodoc
class __$$WordPhoneticImplCopyWithImpl<$Res>
    extends _$WordPhoneticCopyWithImpl<$Res, _$WordPhoneticImpl>
    implements _$$WordPhoneticImplCopyWith<$Res> {
  __$$WordPhoneticImplCopyWithImpl(
      _$WordPhoneticImpl _value, $Res Function(_$WordPhoneticImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordPhonetic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio = freezed,
    Object? text = freezed,
  }) {
    return _then(_$WordPhoneticImpl(
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordPhoneticImpl implements _WordPhonetic {
  const _$WordPhoneticImpl({required this.audio, this.text});

  factory _$WordPhoneticImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordPhoneticImplFromJson(json);

  @override
  final String? audio;
  @override
  final String? text;

  @override
  String toString() {
    return 'WordPhonetic(audio: $audio, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordPhoneticImpl &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, audio, text);

  /// Create a copy of WordPhonetic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WordPhoneticImplCopyWith<_$WordPhoneticImpl> get copyWith =>
      __$$WordPhoneticImplCopyWithImpl<_$WordPhoneticImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordPhoneticImplToJson(
      this,
    );
  }
}

abstract class _WordPhonetic implements WordPhonetic {
  const factory _WordPhonetic(
      {required final String? audio, final String? text}) = _$WordPhoneticImpl;

  factory _WordPhonetic.fromJson(Map<String, dynamic> json) =
      _$WordPhoneticImpl.fromJson;

  @override
  String? get audio;
  @override
  String? get text;

  /// Create a copy of WordPhonetic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WordPhoneticImplCopyWith<_$WordPhoneticImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WordLicense _$WordLicenseFromJson(Map<String, dynamic> json) {
  return _WordLicense.fromJson(json);
}

/// @nodoc
mixin _$WordLicense {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this WordLicense to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WordLicense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WordLicenseCopyWith<WordLicense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordLicenseCopyWith<$Res> {
  factory $WordLicenseCopyWith(
          WordLicense value, $Res Function(WordLicense) then) =
      _$WordLicenseCopyWithImpl<$Res, WordLicense>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$WordLicenseCopyWithImpl<$Res, $Val extends WordLicense>
    implements $WordLicenseCopyWith<$Res> {
  _$WordLicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WordLicense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordLicenseImplCopyWith<$Res>
    implements $WordLicenseCopyWith<$Res> {
  factory _$$WordLicenseImplCopyWith(
          _$WordLicenseImpl value, $Res Function(_$WordLicenseImpl) then) =
      __$$WordLicenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$WordLicenseImplCopyWithImpl<$Res>
    extends _$WordLicenseCopyWithImpl<$Res, _$WordLicenseImpl>
    implements _$$WordLicenseImplCopyWith<$Res> {
  __$$WordLicenseImplCopyWithImpl(
      _$WordLicenseImpl _value, $Res Function(_$WordLicenseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordLicense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$WordLicenseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordLicenseImpl implements _WordLicense {
  const _$WordLicenseImpl({required this.name, required this.url});

  factory _$WordLicenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordLicenseImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'WordLicense(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordLicenseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of WordLicense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WordLicenseImplCopyWith<_$WordLicenseImpl> get copyWith =>
      __$$WordLicenseImplCopyWithImpl<_$WordLicenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordLicenseImplToJson(
      this,
    );
  }
}

abstract class _WordLicense implements WordLicense {
  const factory _WordLicense(
      {required final String name,
      required final String url}) = _$WordLicenseImpl;

  factory _WordLicense.fromJson(Map<String, dynamic> json) =
      _$WordLicenseImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of WordLicense
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WordLicenseImplCopyWith<_$WordLicenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WordMeaning _$WordMeaningFromJson(Map<String, dynamic> json) {
  return _WordMeaning.fromJson(json);
}

/// @nodoc
mixin _$WordMeaning {
  String get partOfSpeech => throw _privateConstructorUsedError;
  List<WordDefinition> get definitions => throw _privateConstructorUsedError;
  List<String> get synonyms => throw _privateConstructorUsedError;
  List<String> get antonyms => throw _privateConstructorUsedError;

  /// Serializes this WordMeaning to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WordMeaning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WordMeaningCopyWith<WordMeaning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordMeaningCopyWith<$Res> {
  factory $WordMeaningCopyWith(
          WordMeaning value, $Res Function(WordMeaning) then) =
      _$WordMeaningCopyWithImpl<$Res, WordMeaning>;
  @useResult
  $Res call(
      {String partOfSpeech,
      List<WordDefinition> definitions,
      List<String> synonyms,
      List<String> antonyms});
}

/// @nodoc
class _$WordMeaningCopyWithImpl<$Res, $Val extends WordMeaning>
    implements $WordMeaningCopyWith<$Res> {
  _$WordMeaningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WordMeaning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = null,
    Object? definitions = null,
    Object? synonyms = null,
    Object? antonyms = null,
  }) {
    return _then(_value.copyWith(
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: null == definitions
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<WordDefinition>,
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      antonyms: null == antonyms
          ? _value.antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordMeaningImplCopyWith<$Res>
    implements $WordMeaningCopyWith<$Res> {
  factory _$$WordMeaningImplCopyWith(
          _$WordMeaningImpl value, $Res Function(_$WordMeaningImpl) then) =
      __$$WordMeaningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partOfSpeech,
      List<WordDefinition> definitions,
      List<String> synonyms,
      List<String> antonyms});
}

/// @nodoc
class __$$WordMeaningImplCopyWithImpl<$Res>
    extends _$WordMeaningCopyWithImpl<$Res, _$WordMeaningImpl>
    implements _$$WordMeaningImplCopyWith<$Res> {
  __$$WordMeaningImplCopyWithImpl(
      _$WordMeaningImpl _value, $Res Function(_$WordMeaningImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordMeaning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = null,
    Object? definitions = null,
    Object? synonyms = null,
    Object? antonyms = null,
  }) {
    return _then(_$WordMeaningImpl(
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: null == definitions
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<WordDefinition>,
      synonyms: null == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      antonyms: null == antonyms
          ? _value._antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordMeaningImpl implements _WordMeaning {
  const _$WordMeaningImpl(
      {required this.partOfSpeech,
      required final List<WordDefinition> definitions,
      required final List<String> synonyms,
      required final List<String> antonyms})
      : _definitions = definitions,
        _synonyms = synonyms,
        _antonyms = antonyms;

  factory _$WordMeaningImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordMeaningImplFromJson(json);

  @override
  final String partOfSpeech;
  final List<WordDefinition> _definitions;
  @override
  List<WordDefinition> get definitions {
    if (_definitions is EqualUnmodifiableListView) return _definitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  final List<String> _synonyms;
  @override
  List<String> get synonyms {
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_synonyms);
  }

  final List<String> _antonyms;
  @override
  List<String> get antonyms {
    if (_antonyms is EqualUnmodifiableListView) return _antonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_antonyms);
  }

  @override
  String toString() {
    return 'WordMeaning(partOfSpeech: $partOfSpeech, definitions: $definitions, synonyms: $synonyms, antonyms: $antonyms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordMeaningImpl &&
            (identical(other.partOfSpeech, partOfSpeech) ||
                other.partOfSpeech == partOfSpeech) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms) &&
            const DeepCollectionEquality().equals(other._antonyms, _antonyms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      partOfSpeech,
      const DeepCollectionEquality().hash(_definitions),
      const DeepCollectionEquality().hash(_synonyms),
      const DeepCollectionEquality().hash(_antonyms));

  /// Create a copy of WordMeaning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WordMeaningImplCopyWith<_$WordMeaningImpl> get copyWith =>
      __$$WordMeaningImplCopyWithImpl<_$WordMeaningImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordMeaningImplToJson(
      this,
    );
  }
}

abstract class _WordMeaning implements WordMeaning {
  const factory _WordMeaning(
      {required final String partOfSpeech,
      required final List<WordDefinition> definitions,
      required final List<String> synonyms,
      required final List<String> antonyms}) = _$WordMeaningImpl;

  factory _WordMeaning.fromJson(Map<String, dynamic> json) =
      _$WordMeaningImpl.fromJson;

  @override
  String get partOfSpeech;
  @override
  List<WordDefinition> get definitions;
  @override
  List<String> get synonyms;
  @override
  List<String> get antonyms;

  /// Create a copy of WordMeaning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WordMeaningImplCopyWith<_$WordMeaningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WordDefinition _$WordDefinitionFromJson(Map<String, dynamic> json) {
  return _WordDefinition.fromJson(json);
}

/// @nodoc
mixin _$WordDefinition {
  String get definition => throw _privateConstructorUsedError;
  List<String> get synonyms => throw _privateConstructorUsedError;
  List<String> get antonyms => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;

  /// Serializes this WordDefinition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WordDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WordDefinitionCopyWith<WordDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordDefinitionCopyWith<$Res> {
  factory $WordDefinitionCopyWith(
          WordDefinition value, $Res Function(WordDefinition) then) =
      _$WordDefinitionCopyWithImpl<$Res, WordDefinition>;
  @useResult
  $Res call(
      {String definition,
      List<String> synonyms,
      List<String> antonyms,
      String? example});
}

/// @nodoc
class _$WordDefinitionCopyWithImpl<$Res, $Val extends WordDefinition>
    implements $WordDefinitionCopyWith<$Res> {
  _$WordDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WordDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = null,
    Object? synonyms = null,
    Object? antonyms = null,
    Object? example = freezed,
  }) {
    return _then(_value.copyWith(
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      antonyms: null == antonyms
          ? _value.antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordDefinitionImplCopyWith<$Res>
    implements $WordDefinitionCopyWith<$Res> {
  factory _$$WordDefinitionImplCopyWith(_$WordDefinitionImpl value,
          $Res Function(_$WordDefinitionImpl) then) =
      __$$WordDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String definition,
      List<String> synonyms,
      List<String> antonyms,
      String? example});
}

/// @nodoc
class __$$WordDefinitionImplCopyWithImpl<$Res>
    extends _$WordDefinitionCopyWithImpl<$Res, _$WordDefinitionImpl>
    implements _$$WordDefinitionImplCopyWith<$Res> {
  __$$WordDefinitionImplCopyWithImpl(
      _$WordDefinitionImpl _value, $Res Function(_$WordDefinitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = null,
    Object? synonyms = null,
    Object? antonyms = null,
    Object? example = freezed,
  }) {
    return _then(_$WordDefinitionImpl(
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      synonyms: null == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      antonyms: null == antonyms
          ? _value._antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordDefinitionImpl implements _WordDefinition {
  const _$WordDefinitionImpl(
      {required this.definition,
      required final List<String> synonyms,
      required final List<String> antonyms,
      this.example})
      : _synonyms = synonyms,
        _antonyms = antonyms;

  factory _$WordDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordDefinitionImplFromJson(json);

  @override
  final String definition;
  final List<String> _synonyms;
  @override
  List<String> get synonyms {
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_synonyms);
  }

  final List<String> _antonyms;
  @override
  List<String> get antonyms {
    if (_antonyms is EqualUnmodifiableListView) return _antonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_antonyms);
  }

  @override
  final String? example;

  @override
  String toString() {
    return 'WordDefinition(definition: $definition, synonyms: $synonyms, antonyms: $antonyms, example: $example)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordDefinitionImpl &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms) &&
            const DeepCollectionEquality().equals(other._antonyms, _antonyms) &&
            (identical(other.example, example) || other.example == example));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      definition,
      const DeepCollectionEquality().hash(_synonyms),
      const DeepCollectionEquality().hash(_antonyms),
      example);

  /// Create a copy of WordDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WordDefinitionImplCopyWith<_$WordDefinitionImpl> get copyWith =>
      __$$WordDefinitionImplCopyWithImpl<_$WordDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordDefinitionImplToJson(
      this,
    );
  }
}

abstract class _WordDefinition implements WordDefinition {
  const factory _WordDefinition(
      {required final String definition,
      required final List<String> synonyms,
      required final List<String> antonyms,
      final String? example}) = _$WordDefinitionImpl;

  factory _WordDefinition.fromJson(Map<String, dynamic> json) =
      _$WordDefinitionImpl.fromJson;

  @override
  String get definition;
  @override
  List<String> get synonyms;
  @override
  List<String> get antonyms;
  @override
  String? get example;

  /// Create a copy of WordDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WordDefinitionImplCopyWith<_$WordDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
