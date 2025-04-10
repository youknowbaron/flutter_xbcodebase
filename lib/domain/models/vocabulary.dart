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
    String? collectionId,
    @TimestampConverter() Timestamp? createdAt,
    @Default(0) int wrongAnswerCount, // New field: Number of wrong answers
    @Default(0) int correctAnswerCount, // New field: Number of correct answers
  }) = _Vocabulary;

  factory Vocabulary.fromJson(Map<String, dynamic> json) => _$VocabularyFromJson(json);

  // New methods for puzzle functionality:

  /// Increments the wrong answer count for this vocabulary.
  Vocabulary incrementWrongAnswerCount() {
    return copyWith(wrongAnswerCount: wrongAnswerCount + 1);
  }

  /// Increments the correct answer count for this vocabulary.
  Vocabulary incrementCorrectAnswerCount() {
    return copyWith(correctAnswerCount: correctAnswerCount + 1);
  }

  /// Resets both wrong and correct answer counts to zero.
  Vocabulary resetAnswerCounts() {
    return copyWith(wrongAnswerCount: 0, correctAnswerCount: 0);
  }

  /// Calculates the error rate for this vocabulary.
  /// Returns a value between 0.0 and 1.0, where 1.0 means 100% wrong.
  double get errorRate {
    if (wrongAnswerCount + correctAnswerCount == 0) {
      return 0.0; // Avoid division by zero
    }
    return wrongAnswerCount / (wrongAnswerCount + correctAnswerCount);
  }
}
