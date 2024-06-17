import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memorise_vocabulary/tunnels.dart';

import 'converters.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  Collection._();
  factory Collection({
    required String id,
    required String name,
    @TimestampConverter() Timestamp? createdAt,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) => _$CollectionFromJson(json);
}


