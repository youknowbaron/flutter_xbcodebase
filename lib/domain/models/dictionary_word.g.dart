// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DictionaryWordImpl _$$DictionaryWordImplFromJson(Map<String, dynamic> json) =>
    _$DictionaryWordImpl(
      word: json['word'] as String,
      phonetic: json['phonetic'] as String?,
      phonetics: (json['phonetics'] as List<dynamic>)
          .map((e) => WordPhonetic.fromJson(e as Map<String, dynamic>))
          .toList(),
      meanings: (json['meanings'] as List<dynamic>)
          .map((e) => WordMeaning.fromJson(e as Map<String, dynamic>))
          .toList(),
      license: WordLicense.fromJson(json['license'] as Map<String, dynamic>),
      sourceUrls: (json['sourceUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DictionaryWordImplToJson(
        _$DictionaryWordImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'phonetic': instance.phonetic,
      'phonetics': instance.phonetics.map((e) => e.toJson()).toList(),
      'meanings': instance.meanings.map((e) => e.toJson()).toList(),
      'license': instance.license.toJson(),
      'sourceUrls': instance.sourceUrls,
    };

_$WordPhoneticImpl _$$WordPhoneticImplFromJson(Map<String, dynamic> json) =>
    _$WordPhoneticImpl(
      audio: json['audio'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$WordPhoneticImplToJson(_$WordPhoneticImpl instance) =>
    <String, dynamic>{
      'audio': instance.audio,
      'text': instance.text,
    };

_$WordLicenseImpl _$$WordLicenseImplFromJson(Map<String, dynamic> json) =>
    _$WordLicenseImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$WordLicenseImplToJson(_$WordLicenseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$WordMeaningImpl _$$WordMeaningImplFromJson(Map<String, dynamic> json) =>
    _$WordMeaningImpl(
      partOfSpeech: json['partOfSpeech'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => WordDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      synonyms:
          (json['synonyms'] as List<dynamic>).map((e) => e as String).toList(),
      antonyms:
          (json['antonyms'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$WordMeaningImplToJson(_$WordMeaningImpl instance) =>
    <String, dynamic>{
      'partOfSpeech': instance.partOfSpeech,
      'definitions': instance.definitions.map((e) => e.toJson()).toList(),
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
    };

_$WordDefinitionImpl _$$WordDefinitionImplFromJson(Map<String, dynamic> json) =>
    _$WordDefinitionImpl(
      definition: json['definition'] as String,
      synonyms:
          (json['synonyms'] as List<dynamic>).map((e) => e as String).toList(),
      antonyms:
          (json['antonyms'] as List<dynamic>).map((e) => e as String).toList(),
      example: json['example'] as String?,
    );

Map<String, dynamic> _$$WordDefinitionImplToJson(
        _$WordDefinitionImpl instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
      'example': instance.example,
    };
