import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:memorise_vocabulary/data/network/firestore/firestore_broker.dart';
import 'package:memorise_vocabulary/data/network/firestore/firestore_constants.dart';
import 'package:memorise_vocabulary/data/network/firestore/firestore_extensions.dart';
import 'package:memorise_vocabulary/domain/models/collection.dart';
import 'package:memorise_vocabulary/domain/repositories/collection_repository.dart';

import '../../tunnels.dart';

part 'collection_repository_impl.g.dart';

class CollectionRepositoryImpl with FirestoreBroker implements CollectionRepository {
  CollectionRepositoryImpl(this._db);

  final FirebaseFirestore _db;

  @override
  Future<ApiResult<List<Collection>>> getCollections() async {
    // final result = await _db.collection(CollectionKeys.collections).get();
    // final data = result.docs.map((e) => Collection.fromJson(e.dataWithId));
    // return ApiResult.data(data.toList());
    return mapResponseToResult(
      _db.collection(CollectionKeys.collections).get(),
      converter: (data) => data.map((e) => Collection.fromJson(e.dataWithId)).toList(),
    );
  }
}

@riverpod
CollectionRepository collectionRepository(CollectionRepositoryRef ref) {
  return CollectionRepositoryImpl(ref.read(firestoreProvider));
}
