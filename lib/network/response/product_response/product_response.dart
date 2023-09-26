import 'package:json_annotation/json_annotation.dart';

import '../../../data/vos/product_vo/product_vo.dart';

part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  ///Member
  @JsonKey(name: 'data')
  final List<ProductVO> data;

  @JsonKey(name: 'status')
  final int status;

  @JsonKey(name: 'message')
  final String message;

  ///Constructor
  ProductResponse(this.data, this.status, this.message);

  ///Factory Constructor

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);
}
