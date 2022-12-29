import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:xbcodebase/domain/models/home_data.dart';
import 'package:xbcodebase/domain/repositories/song_repository.dart';

import '../../../data/impl/song_repository_impl.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  SongRepository get _repository => ref.read(songRepositoryProvider);

  @override
  FutureOr<HomeData?> build() async {
    return (await _repository.getHomePageData()).mapToData();
  }
}
