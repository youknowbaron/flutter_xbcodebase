import 'package:memorise_vocabulary/data/impl/collection_repository_impl.dart';
import 'package:memorise_vocabulary/domain/models/collection.dart';
import 'package:memorise_vocabulary/domain/models/home_data.dart';
import 'package:memorise_vocabulary/domain/repositories/collection_repository.dart';

import '../../../tunnels.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  CollectionRepository get _repository => ref.read(collectionRepositoryProvider);

  @override
  Future<List<Collection>?> build() async {
    return (await _repository.getCollections()).mapToData();
  }

  Future<bool> addNewCollection(String name) async {
    final result = await _repository.createCollection(name);
    final res = result.mapToData();
    if (res == true) {
      state = (await _repository.getCollections()).mapToAsyncValue();
    }
    return res == true;
  }
}
