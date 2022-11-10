// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeData _$$_HomeDataFromJson(Map<String, dynamic> json) => _$_HomeData(
      topPlaylists: (json['top_playlists'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      newAlbums: (json['new_albums'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      radio: (json['radio'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_HomeDataToJson(_$_HomeData instance) =>
    <String, dynamic>{
      'top_playlists': instance.topPlaylists,
      'new_albums': instance.newAlbums,
      'radio': instance.radio,
    };
