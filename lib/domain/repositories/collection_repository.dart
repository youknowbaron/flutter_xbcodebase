import 'package:memorise_vocabulary/domain/models/collection.dart';

import '../base/api_result.dart';

abstract class CollectionRepository {
  Future<ApiResult<List<Collection>>> getCollections();
}
