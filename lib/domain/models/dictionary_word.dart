import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_word.freezed.dart';
part 'dictionary_word.g.dart';

@freezed
class DictionaryWord with _$DictionaryWord {
  const factory DictionaryWord({
    required String word,
    String? phonetic, // Added phonetic field
    required List<WordPhonetic> phonetics,
    required List<WordMeaning> meanings,
    required WordLicense license,
    required List<String> sourceUrls,
  }) = _DictionaryWord;

  factory DictionaryWord.fromJson(Map<String, dynamic> json) =>
      _$DictionaryWordFromJson(json);
}

@freezed
class WordPhonetic with _$WordPhonetic {
  const factory WordPhonetic({
    required String? audio,
    String? text, // Change the order of fields
  }) = _WordPhonetic;

  factory WordPhonetic.fromJson(Map<String, dynamic> json) =>
      _$WordPhoneticFromJson(json);
}

@freezed
class WordLicense with _$WordLicense{
  const factory WordLicense({
    required String name,
    required String url,
  }) = _WordLicense;

  factory WordLicense.fromJson(Map<String, dynamic> json) =>
      _$WordLicenseFromJson(json);
}

@freezed
class WordMeaning with _$WordMeaning {
  const factory WordMeaning({
    required String partOfSpeech,
    required List<WordDefinition> definitions,
    required List<String> synonyms,
    required List<String> antonyms,
  }) = _WordMeaning;

  factory WordMeaning.fromJson(Map<String, dynamic> json) =>
      _$WordMeaningFromJson(json);
}

@freezed
class WordDefinition with _$WordDefinition {
  const factory WordDefinition({
    required String definition,
    required List<String> synonyms,
    required List<String> antonyms,
    String? example,
  }) = _WordDefinition;

  factory WordDefinition.fromJson(Map<String, dynamic> json) =>
      _$WordDefinitionFromJson(json);
}
