import 'package:memorise_vocabulary/domain/models/vocabulary.dart';
import 'package:memorise_vocabulary/domain/repositories/vocabulary_repository.dart';
import 'package:memorise_vocabulary/tunnels.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'collection_notifier.g.dart';

@riverpod
class CollectionNotifier extends _$CollectionNotifier {
  @override
  FutureOr<List<Vocabulary>> build(String collectionId) async {
    final vocabularyRepository = ref.read(vocabularyRepositoryProvider);
    return await vocabularyRepository.getVocabulariesByCollectionId(collectionId);
  }

  Future<void> addVocabulary(String collectionId, Vocabulary vocabulary) async {
    final vocabularyRepository = ref.read(vocabularyRepositoryProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await vocabularyRepository.addVocabularyToCollection(collectionId, vocabulary);
      return await vocabularyRepository.getVocabulariesByCollectionId(collectionId);
    });
  }

  Future<void> removeVocabulary(String collectionId, String vocabularyId) async {
    final vocabularyRepository = ref.read(vocabularyRepositoryProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await vocabularyRepository.removeVocabularyFromCollection(collectionId, vocabularyId);
      return await vocabularyRepository.getVocabulariesByCollectionId(collectionId);
    });
  }

  Future<void> updateVocabulary(String collectionId, Vocabulary vocabulary) async {
    final vocabularyRepository = ref.read(vocabularyRepositoryProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await vocabularyRepository.updateVocabularyInCollection(collectionId, vocabulary);
      return await vocabularyRepository.getVocabulariesByCollectionId(collectionId);
    });
  }

  Future<void> incrementWrongAnswerCount(String collectionId, String vocabularyId) async {
    final vocabularyRepository = ref.read(vocabularyRepositoryProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final vocabulary = await vocabularyRepository.getVocabularyById(vocabularyId);
      if (vocabulary != null) {
        await vocabularyRepository.updateVocabularyInCollection(collectionId, vocabulary.incrementWrongAnswerCount());
      }
      return await vocabularyRepository.getVocabulariesByCollectionId(collectionId);
    });
  }

  Future<void> incrementCorrectAnswerCount(String collectionId, String vocabularyId) async {
    final vocabularyRepository = ref.read(vocabularyRepositoryProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final vocabulary = await vocabularyRepository.getVocabularyById(vocabularyId);
      if (vocabulary != null) {
        await vocabularyRepository.updateVocabularyInCollection(collectionId, vocabulary.incrementCorrectAnswerCount());
      }
      return await vocabularyRepository.getVocabulariesByCollectionId(collectionId);
    });
  }

  Future<void> resetAnswerCounts(String collectionId, String vocabularyId) async {
    final vocabularyRepository = ref.read(vocabularyRepositoryProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final vocabulary = await vocabularyRepository.getVocabularyById(vocabularyId);
      if (vocabulary != null) {
        await vocabularyRepository.updateVocabularyInCollection(collectionId, vocabulary.resetAnswerCounts());
      }
      return await vocabularyRepository.getVocabulariesByCollectionId(collectionId);
    });
  }
}
