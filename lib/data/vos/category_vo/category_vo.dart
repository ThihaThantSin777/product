import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:product/constant/hive_constant.dart';

part 'category_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: kTypeIDForCategoryVO)
class CategoryVO {
  ///Member
  @JsonKey(name: '_id')
  @HiveField(0)
  final String id;

  @JsonKey(name: 'name')
  @HiveField(1)
  final String name;

  @JsonKey(name: 'slug')
  @HiveField(2)
  final String slug;

  //Constructor
  CategoryVO(this.id, this.name, this.slug);

  factory CategoryVO.fromJson(Map<String, dynamic> json) =>
      _$CategoryVOFromJson(json);
}
