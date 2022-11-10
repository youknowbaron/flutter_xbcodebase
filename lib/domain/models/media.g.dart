// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String? ?? "",
      headerDesc: json['header_desc'] as String? ?? "",
      type: json['type'] as String? ?? "",
      permaUrl: json['perma_url'] as String? ?? "",
      image: json['image'] as String? ?? "",
      language: json['language'] as String? ?? "",
      year: json['year'] as String? ?? "",
      playCount: json['playCount'] as String? ?? "",
      explicitContent: json['explicit_content'] as String? ?? "",
      listCount: json['list_count'] as String? ?? "",
      listType: json['list_type'] as String? ?? "",
      list: json['list'] as String? ?? "",
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'header_desc': instance.headerDesc,
      'type': instance.type,
      'perma_url': instance.permaUrl,
      'image': instance.image,
      'language': instance.language,
      'year': instance.year,
      'playCount': instance.playCount,
      'explicit_content': instance.explicitContent,
      'list_count': instance.listCount,
      'list_type': instance.listType,
      'list': instance.list,
    };
