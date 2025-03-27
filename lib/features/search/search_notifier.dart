import 'package:memorise_vocabulary/data/impl/dictionary_repository_impl.dart';
import 'package:memorise_vocabulary/domain/models/dictionary_word.dart';
import 'package:memorise_vocabulary/domain/repositories/dictionary_repository.dart';

import '../../tunnels.dart';

part 'search_notifier.g.dart';

@riverpod
class SearchNotifier extends _$SearchNotifier {
  DictionaryRepository get _repository => ref.read(dictionaryRepositoryProvider);

  @override
  Future<List<DictionaryWord>?> build() async {
    return null;
  }

  Future<void> search(String word) async {
    state = const AsyncValue.loading();
    final result = await _repository.search(word);
    state = result.mapToAsyncValue();
  }
}
