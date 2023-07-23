// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_by_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreatedByVOAdapter extends TypeAdapter<CreatedByVO> {
  @override
  final int typeId = 3;

  @override
  CreatedByVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreatedByVO(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CreatedByVO obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.role)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreatedByVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatedByVO _$CreatedByVOFromJson(Map<String, dynamic> json) => CreatedByVO(
      json['role'] as String,
      json['_id'] as String,
      json['name'] as String,
    );

Map<String, dynamic> _$CreatedByVOToJson(CreatedByVO instance) =>
    <String, dynamic>{
      'role': instance.role,
      '_id': instance.id,
      'name': instance.name,
    };
