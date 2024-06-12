import 'package:memorise_vocabulary/data/network/api/saavn_dio.dart';
import 'package:memorise_vocabulary/domain/models/home_data.dart';

import '../../domain/repositories/song_repository.dart';
import '../../tunnels.dart';
import '../network/api/saavn_format.dart';

part 'song_repository_impl.g.dart';

class SongRepositoryImpl with DioBroker implements SongRepository {
  SongRepositoryImpl(this._dio);

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

@riverpod
SongRepository songRepository(SongRepositoryRef ref) {
  return SongRepositoryImpl(ref.read(saavnDioProvider));
}
