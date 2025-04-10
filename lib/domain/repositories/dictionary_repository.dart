import 'package:memorise_vocabulary/domain/models/dictionary_word.dart';
import 'package:memorise_vocabulary/tunnels.dart';

abstract class DictionaryRepository {
  Future<ApiResult<List<DictionaryWord>>> search(String word);
}
