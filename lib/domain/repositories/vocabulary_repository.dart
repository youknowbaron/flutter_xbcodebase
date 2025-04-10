// lib/domain/repositories/vocabulary_repository.dart

import 'package:memorise_vocabulary/domain/models/vocabulary.dart';
import 'package:memorise_vocabulary/tunnels.dart';

abstract class VocabularyRepository {
  Future<ApiResult<List<Vocabulary>>> getAllVocabularies();
  Future<ApiResult<List<Vocabulary>>> getVocabulariesByCollectionId(String collectionId);
  Future<ApiResult<Vocabulary?>> getVocabularyById(String vocabularyId);
  Future<ApiResult<bool>> addVocabulary(Vocabulary vocabulary);
  Future<ApiResult<bool>> addVocabularyToCollection(String collectionId, Vocabulary vocabulary);
  Future<ApiResult<bool>> removeVocabulary(String vocabularyId);
  Future<ApiResult<bool>> removeVocabularyFromCollection(String collectionId, String vocabularyId);
  Future<ApiResult<bool>> updateVocabulary(Vocabulary vocabulary);
  Future<ApiResult<bool>> updateVocabularyInCollection(
      String collectionId, Vocabulary vocabulary);
}
