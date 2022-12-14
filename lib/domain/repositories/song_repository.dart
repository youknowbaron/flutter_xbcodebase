import 'package:xbcodebase/domain/models/home_data.dart';

import '../base/api_result.dart';

abstract class SongRepository {
  Future<ApiResult<HomeData>> getHomePageData();
  Future<ApiResult<Map>> getSongDetails(String id);
}
