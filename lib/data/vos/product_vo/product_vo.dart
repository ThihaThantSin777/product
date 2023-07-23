import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:product/constant/hive_constant.dart';
import 'package:product/data/vos/category_vo/category_vo.dart';
import 'package:product/data/vos/created_by_vo/created_by_vo.dart';

part 'product_vo.g.dart';

@JsonSerializable()
@HiveType(
  typeId: kTypeIDForProductVO,
)
class ProductVO {
  ///Members
  @JsonKey(name: '_id')
  @HiveField(0)
  final String? id;

  @JsonKey(name: 'title')
  @HiveField(1)
  final String? title;

  @JsonKey(name: 'price')
  @HiveField(2)
  final int? price;

  @JsonKey(name: 'category')
  @HiveField(3)
  final CategoryVO? category;

  @JsonKey(name: 'description')
  @HiveField(4)
  String? description;

  @JsonKey(name: 'createdBy')
  @HiveField(5)
  final CreatedByVO? createdBy;

  @JsonKey(name: 'createdAt')
  @HiveField(6)
  final String? createdAt;

  @JsonKey(name: 'updatedAt')
  @HiveField(7)
  final String? updatedAt;

  @JsonKey(name: 'slug')
  @HiveField(8)
  final String? slug;

  @JsonKey(name: 'image')
  @HiveField(9)
  String? image;

  ///Constructor
  ProductVO(
    this.id,
    this.title,
    this.price,
    this.category,
    this.description,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.slug,
    this.image,
  );

  ///Factory Constructor
  factory ProductVO.fromJson(Map<String, dynamic> json) =>
      _$ProductVOFromJson(json);

  @override
  String toString() {
    return 'ProductVO{id: $id, title: $title, price: $price, category: $category, description: $description, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, image: $image}';
  }

  ///Map method
}
