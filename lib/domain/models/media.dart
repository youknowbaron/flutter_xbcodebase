import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
class Media with _$Media {
  const factory Media({
    required String id,
    required String title,
    @Default("") String subtitle,
    @JsonKey(name: 'header_desc') @Default("") String headerDesc,
    @Default("") String type,
    @JsonKey(name: 'perma_url') @Default("") String permaUrl,
    @Default("") String image,
    @Default("") String language,
    @Default("") String year,
    @Default("") String playCount,
    @JsonKey(name: 'explicit_content') @Default("") String explicitContent,
    @JsonKey(name: 'list_count') @Default("") String listCount,
    @JsonKey(name: 'list_type') @Default("") String listType,
    @Default("") String list,
    // MoreInfo moreInfo,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) =>
      _$MediaFromJson(json);
}
