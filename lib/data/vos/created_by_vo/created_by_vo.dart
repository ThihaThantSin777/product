import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:product/constant/hive_constant.dart';

part 'created_by_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: kTypeIDForCreatedByVO)
class CreatedByVO {
  ///Member
  @JsonKey(name: 'role')
  @HiveField(0)
  final String role;

  @JsonKey(name: '_id')
  @HiveField(1)
  final String id;

  @JsonKey(name: 'name')
  @HiveField(2)
  final String name;

  ///Constructor
  CreatedByVO(this.role, this.id, this.name);

  ///Factory Constructor
  factory CreatedByVO.fromJson(Map<String, dynamic> json) =>
      _$CreatedByVOFromJson(json);
}
