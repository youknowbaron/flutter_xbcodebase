// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDataImpl _$$HomeDataImplFromJson(Map<String, dynamic> json) =>
    _$HomeDataImpl(
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

Map<String, dynamic> _$$HomeDataImplToJson(_$HomeDataImpl instance) =>
    <String, dynamic>{
      'top_playlists': instance.topPlaylists,
      'new_albums': instance.newAlbums,
      'radio': instance.radio,
    };
