import 'package:freezed_annotation/freezed_annotation.dart';

import 'media.dart';

part 'home_data.freezed.dart';
part 'home_data.g.dart';

@freezed
class HomeData with _$HomeData {
  const factory HomeData({
    // @JsonKey(name: 'new_trending') @Default([]) List<Media> newTrending,
    @JsonKey(name: 'top_playlists') @Default([]) List<Media> topPlaylists,
    @JsonKey(name: 'new_albums') @Default([]) List<Media> newAlbums,
    @Default([]) List<Media> radio,
  }) = _HomeData;

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
}
