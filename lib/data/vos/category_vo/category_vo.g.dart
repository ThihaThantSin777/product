// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryVOAdapter extends TypeAdapter<CategoryVO> {
  @override
  final int typeId = 2;

  @override
  CategoryVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryVO(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryVO obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.slug);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
