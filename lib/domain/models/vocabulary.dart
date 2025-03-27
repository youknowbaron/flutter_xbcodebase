import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memorise_vocabulary/tunnels.dart';

import 'converters.dart';

part 'vocabulary.freezed.dart';
part 'vocabulary.g.dart';

@freezed
class Vocabulary with _$Vocabulary {
  Vocabulary._();
  factory Vocabulary({
    required String id,
    required String word,
    required String meaning,
    @TimestampConverter() Timestamp? createdAt,
  }) = _Vocabulary;

  factory Vocabulary.fromJson(Map<String, dynamic> json) => _$VocabularyFromJson(json);
}
