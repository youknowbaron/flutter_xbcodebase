// lib/data/impl/vocabulary_repository_impl.dart

import 'package:memorise_vocabulary/data/network/firestore/firestore_broker.dart';
import 'package:memorise_vocabulary/data/network/firestore/firestore_constants.dart';
import 'package:memorise_vocabulary/data/network/firestore/firestore_extensions.dart';
import 'package:memorise_vocabulary/domain/models/vocabulary.dart';
import 'package:memorise_vocabulary/domain/repositories/vocabulary_repository.dart';
import 'package:memorise_vocabulary/tunnels.dart';

part 'vocabulary_repository_impl.g.dart';

@riverpod
VocabularyRepository vocabularyRepository(Ref ref) {
  return VocabularyRepositoryImpl(ref.read(firestoreProvider), ref.read(firebaseAuthProvider));
}

class VocabularyRepositoryImpl with FirestoreBroker implements VocabularyRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  VocabularyRepositoryImpl(this._firestore, this._auth);

  @override
  Future<ApiResult<List<Vocabulary>>> getAllVocabularies() async {
    final call = _firestore.collection(CollectionKeys.vocabularies).get();
    return mapQuerySnapshotToResult(
      call,
      converter: (data) => data.map((e) => Vocabulary.fromJson(e.dataWithId)).toList(),
    );
  }

  @override
  Future<ApiResult<List<Vocabulary>>> getVocabulariesByCollectionId(String collectionId) async {
    final call = _firestore
        .collection(CollectionKeys.collections)
        .doc(collectionId)
        .collection(CollectionKeys.vocabularies)
        .get();
    return mapQuerySnapshotToResult(
      call,
      converter: (data) => data.map((e) => Vocabulary.fromJson(e.dataWithId)).toList(),
    );
  }

  @override
  Future<ApiResult<Vocabulary?>> getVocabularyById(String vocabularyId) async {
    final call = _firestore.collection(CollectionKeys.vocabularies).doc(vocabularyId).get();
    return mapDocumentSnapshotToResult(
      call,
      converter: (data) => Vocabulary.fromJson(data),
    );
  }

  @override
  Future<ApiResult<bool>> addVocabulary(Vocabulary vocabulary) async {
    try {
      final data = wrapDataByUser(
        _auth,
        vocabulary.toJson(),
      );
      await _firestore.collection(CollectionKeys.vocabularies).add(data);
      return const ApiResult.data(true);
    } catch (e) {
      return const ApiResult.failure();
    }
  }

  @override
  Future<ApiResult<bool>> addVocabularyToCollection(
      String collectionId, Vocabulary vocabulary) async {
    try {
      final data = wrapDataByUser(
        _auth,
        vocabulary.toJson(),
      );
      await _firestore
          .collection(CollectionKeys.collections)
          .doc(collectionId)
          .collection(CollectionKeys.vocabularies)
          .add(data);
      return const ApiResult.data(true);
    } catch (e) {
      return const ApiResult.failure();
    }
  }

  @override
  Future<ApiResult<bool>> removeVocabulary(String vocabularyId) async {
    try {
      await _firestore.collection(CollectionKeys.vocabularies).doc(vocabularyId).delete();
      return const ApiResult.data(true);
    } catch (e) {
      return const ApiResult.failure();
    }
  }

  @override
  Future<ApiResult<bool>> removeVocabularyFromCollection(
      String collectionId, String vocabularyId) async {
    try {
      await _firestore
          .collection(CollectionKeys.collections)
          .doc(collectionId)
          .collection(CollectionKeys.vocabularies)
          .doc(vocabularyId)
          .delete();
      return const ApiResult.data(true);
    } catch (e) {
      return const ApiResult.failure();
    }
  }

  @override
  Future<ApiResult<bool>> updateVocabulary(Vocabulary vocabulary) async {
    try {
      await _firestore
          .collection(CollectionKeys.vocabularies)
          .doc(vocabulary.id)
          .update(vocabulary.toJson());
      return const ApiResult.data(true);
    } catch (e) {
      return const ApiResult.failure();
    }
  }

  @override
  Future<ApiResult<bool>> updateVocabularyInCollection(
      String collectionId, Vocabulary vocabulary) async {
    try {
      await _firestore
          .collection(CollectionKeys.collections)
          .doc(collectionId)
          .collection(CollectionKeys.vocabularies)
          .doc(vocabulary.id)
          .update(vocabulary.toJson());
      return const ApiResult.data(true);
    } catch (e) {
      return const ApiResult.failure();
    }
  }
}
