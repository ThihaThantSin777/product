import 'package:json_annotation/json_annotation.dart';

part 'created_by_vo.g.dart';

@JsonSerializable()
class CreatedByVO {
  ///Member
  @JsonKey(name: 'role')
  final String role;

  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  ///Constructor
  CreatedByVO(this.role, this.id, this.name);

  ///Factory Constructor
  factory CreatedByVO.fromJson(Map<String, dynamic> json) =>
      _$CreatedByVOFromJson(json);
}
