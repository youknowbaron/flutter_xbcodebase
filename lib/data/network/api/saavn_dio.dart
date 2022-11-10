import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

class SaavnDio extends DioForNative {
  SaavnDio()
      : super(BaseOptions(
          baseUrl: baseUrl,
        ));

  Map<String, String> headers = {};
  static String baseUrl = 'https://www.jiosaavn.com';
  String apiStr = '/api.php?_format=json&_marker=0&api_version=4&ctx=web6dot0';
  // Box settingsBox = Hive.box('settings');
  Map<String, String> endpoints = {
    'homeData': '__call=webapi.getLaunchData',
    'topSearches': '__call=content.getTopSearches',
    'fromToken': '__call=webapi.get',
    'featuredRadio': '__call=webradio.createFeaturedStation',
    'artistRadio': '__call=webradio.createArtistStation',
    'entityRadio': '__call=webradio.createEntityStation',
    'radioSongs': '__call=webradio.getSong',
    'songDetails': '__call=song.getDetails',
    'playlistDetails': '__call=playlist.getDetails',
    'albumDetails': '__call=content.getAlbumDetails',
    'getResults': '__call=search.getResults',
    'albumResults': '__call=search.getAlbumResults',
    'artistResults': '__call=search.getArtistResults',
    'playlistResults': '__call=search.getPlaylistResults',
    'getReco': '__call=reco.getreco',
    'getAlbumReco': '__call=reco.getAlbumReco', // still not used
    'artistOtherTopSongs':
        '__call=search.artistOtherTopSongs', // still not used
  };

  Future<Response<T>> gget<T>(
    String endpoint, {
    bool usev4 = true,
    bool useProxy = false,
  }) {
    String path;
    if (!usev4) {
      path = '$apiStr&${endpoints[endpoint]}'.replaceAll('&api_version=4', '');
    } else {
      path = '$apiStr&${endpoints[endpoint]}';
    }
    final options = Options(headers: {
      'cookie': ['English'],
      'Accept': '*/*',
    });
    if (useProxy) {}
    return super.get(path, options: options);
  }
}
