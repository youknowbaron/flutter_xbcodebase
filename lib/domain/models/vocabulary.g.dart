// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabulary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VocabularyImpl _$$VocabularyImplFromJson(Map<String, dynamic> json) =>
    _$VocabularyImpl(
      id: json['id'] as String,
      word: json['word'] as String,
      meaning: json['meaning'] as String,
      createdAt: _$JsonConverterFromJson<Timestamp, Timestamp>(
          json['createdAt'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$$VocabularyImplToJson(_$VocabularyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'meaning': instance.meaning,
      'createdAt': _$JsonConverterToJson<Timestamp, Timestamp>(
          instance.createdAt, const TimestampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
