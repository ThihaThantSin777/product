// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryVO _$CategoryVOFromJson(Map<String, dynamic> json) => CategoryVO(
      json['_id'] as String,
      json['name'] as String,
      json['slug'] as String,
    );

Map<String, dynamic> _$CategoryVOToJson(CategoryVO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };
