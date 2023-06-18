// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVO _$ProductVOFromJson(Map<String, dynamic> json) => ProductVO(
      json['_id'] as String?,
      json['title'] as String?,
      json['price'] as int?,
      json['category'] == null
          ? null
          : CategoryVO.fromJson(json['category'] as Map<String, dynamic>),
      json['description'] as String?,
      json['createdBy'] == null
          ? null
          : CreatedByVO.fromJson(json['createdBy'] as Map<String, dynamic>),
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
      json['slug'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$ProductVOToJson(ProductVO instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'category': instance.category,
      'description': instance.description,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'slug': instance.slug,
      'image': instance.image,
    };
