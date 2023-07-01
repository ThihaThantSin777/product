// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleProductResponse _$SingleProductResponseFromJson(
        Map<String, dynamic> json) =>
    SingleProductResponse(
      json['data'] == null
          ? null
          : ProductVO.fromJson(json['data'] as Map<String, dynamic>),
      json['status'] as int?,
      json['message'] as String?,
    );

Map<String, dynamic> _$SingleProductResponseToJson(
        SingleProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };
