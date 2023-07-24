// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MockResponse _$MockResponseFromJson(Map<String, dynamic> json) => MockResponse(
      json['code'] as int?,
      json['message'] as String?,
      (json['data'] as List<dynamic>?)
          ?.map((e) => MockVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MockResponseToJson(MockResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.status,
      'data': instance.data,
    };
