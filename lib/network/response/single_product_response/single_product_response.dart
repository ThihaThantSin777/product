import 'package:json_annotation/json_annotation.dart';

import '../../../data/vos/product_vo/product_vo.dart';

part 'single_product_response.g.dart';

@JsonSerializable()
class SingleProductResponse {
  ///Member
  @JsonKey(name: 'data')
  final ProductVO? data;

  @JsonKey(name: 'status')
  final int status;

  @JsonKey(name: 'message')
  final String message;

  ///Constructor
  SingleProductResponse(this.data, this.status, this.message);

  ///Factory Constructor

  factory SingleProductResponse.fromJson(Map<String, dynamic> json) => _$SingleProductResponseFromJson(json);
}
