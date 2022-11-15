import 'package:xbcodebase/core/notifiers/common_state_notifier.dart';
import 'package:xbcodebase/domain/models/home_data.dart';
import 'package:xbcodebase/domain/repository/song_service.dart';

class HomeNotifier extends CommonApiStateNotifier<HomeData> {
  HomeNotifier(this._songService) : super();

  final SongService _songService;

  void getHomePageData() async {
    assignApiResultToState(await _songService.getHomePageData());
  }
}
