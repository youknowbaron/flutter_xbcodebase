import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memorise_vocabulary/data/network/api/dictionary_dio.dart';
import 'package:memorise_vocabulary/domain/models/dictionary_word.dart';
import 'package:memorise_vocabulary/domain/repositories/dictionary_repository.dart';

import '../../tunnels.dart';

part 'dictionary_repository_impl.g.dart';

class DictionaryRepositoryImpl with DioBroker implements DictionaryRepository {
  DictionaryRepositoryImpl(this._dio);

  final DictionaryDio _dio;

  @override
  Future<ApiResult<List<DictionaryWord>>> search(String word) async {
    final call = _dio.searchWord(word);
    return mapResponseToResult(
      call,
      converter: (json) => (json as List).map((e) => DictionaryWord.fromJson(e)).toList(),
    );
  }
}

@riverpod
DictionaryRepository dictionaryRepository(Ref ref) {
  return DictionaryRepositoryImpl(ref.read(dictionaryDioProvider));
}
