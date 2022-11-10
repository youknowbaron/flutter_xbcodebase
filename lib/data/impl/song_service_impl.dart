import 'dart:convert';

import 'package:xbcodebase/data/network/api/saavn_dio.dart';
import 'package:xbcodebase/domain/models/home_data.dart';

import '../../domain/core/api_result.dart';
import '../../domain/repository/song_service.dart';
import '../network/api/dio_broker.dart';
import '../network/api/saavn_format.dart';

class SongServiceImpl with DioBroker implements SongService {
  SongServiceImpl(this._dio);

  final SaavnDio _dio;

  @override
  Future<ApiResult<HomeData>> getHomePageData() async {
    final res = _dio.gget('homeData');
    return mapResponseToResult(res, converter: (data) async {
      final Map decoded = json.decode(data) as Map;
      final Map formatted = await FormatResponse.formatHomePageData(decoded);
      return HomeData.fromJson(formatted as Map<String, dynamic>);
    });
  }

  @override
  Future<ApiResult<Map>> getSongDetails(String id) {
    // TODO: implement getSongDetails
    throw UnimplementedError();
  }
}
