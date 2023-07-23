// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductVOAdapter extends TypeAdapter<ProductVO> {
  @override
  final int typeId = 1;

  @override
  ProductVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductVO(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as int?,
      fields[3] as CategoryVO?,
      fields[4] as String?,
      fields[5] as CreatedByVO?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductVO obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.createdBy)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.updatedAt)
      ..writeByte(8)
      ..write(obj.slug)
      ..writeByte(9)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
