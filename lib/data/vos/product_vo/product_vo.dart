import 'package:json_annotation/json_annotation.dart';
import 'package:product/data/vos/category_vo/category_vo.dart';
import 'package:product/data/vos/created_by_vo/created_by_vo.dart';

part 'product_vo.g.dart';

@JsonSerializable()
class ProductVO {
  ///Members
  @JsonKey(name: '_id')
  final String? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'price')
  final int? price;

  @JsonKey(name: 'category')
  final CategoryVO? category;

  @JsonKey(name: 'description')
  String? description;

  @JsonKey(name: 'createdBy')
  final CreatedByVO? createdBy;

  @JsonKey(name: 'createdAt')
  final String? createdAt;

  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @JsonKey(name: 'slug')
  final String? slug;

  @JsonKey(name: 'image')
  String? image;

  ///Constructor
  ProductVO(this.id, this.title, this.price, this.category, this.description,
      this.createdBy, this.createdAt, this.updatedAt, this.slug, this.image);

  ///Factory Constructor
  factory ProductVO.fromJson(Map<String, dynamic> json) =>
      _$ProductVOFromJson(json);

  @override
  String toString() {
    return 'ProductVO{id: $id, title: $title, price: $price, category: $category, description: $description, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, image: $image}';
  }

  ///Map method
}
