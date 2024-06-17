import 'package:memorise_vocabulary/data/network/firestore/firestore_broker.dart';
import 'package:memorise_vocabulary/data/network/firestore/firestore_constants.dart';
import 'package:memorise_vocabulary/data/network/firestore/firestore_extensions.dart';
import 'package:memorise_vocabulary/domain/models/collection.dart';
import 'package:memorise_vocabulary/domain/repositories/collection_repository.dart';

import '../../tunnels.dart';

part 'collection_repository_impl.g.dart';

class CollectionRepositoryImpl with FirestoreBroker implements CollectionRepository {
  CollectionRepositoryImpl(this._db, this._auth);

  final FirebaseFirestore _db;
  final FirebaseAuth _auth;

  @override
  Future<ApiResult<List<Collection>>> getCollections() async {
    if (_auth.currentUser?.uid == null) return const ApiResult.failure();
    final call = _db
        .collection(CollectionKeys.collections)
        .where('user_id', isEqualTo: _auth.currentUser!.uid)
        .orderBy('created_at')
        .get();
    return mapResponseToResult(
      call,
      converter: (data) => data.map((e) => Collection.fromJson(e.dataWithId)).toList(),
    );
  }

  @override
  Future<ApiResult<bool>> createCollection(String name) async {
    try {
      final data = wrapData(
        _auth,
        {
          'name': name,
        },
      );
      await _db.collection(CollectionKeys.collections).add(data);
      return const ApiResult.data(true);
    } catch (e) {
      return const ApiResult.failure();
    }
  }
}

@riverpod
CollectionRepository collectionRepository(CollectionRepositoryRef ref) {
  return CollectionRepositoryImpl(ref.read(firestoreProvider), ref.read(firebaseAuthProvider));
}
