import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:xbcodebase/data/shared/service_providers.dart';
import 'package:xbcodebase/domain/base/api_result.dart';
import 'package:xbcodebase/domain/models/home_data.dart';
import 'package:xbcodebase/domain/repository/song_service.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  SongService get _songService => ref.read(songServiceProvider);

  @override
  FutureOr<HomeData?> build() async {
    return (await _songService.getHomePageData()).mapToData();
  }
}
