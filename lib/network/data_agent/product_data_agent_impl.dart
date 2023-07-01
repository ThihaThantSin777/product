import 'package:dio/dio.dart';
import 'package:product/data/vos/product_vo/product_vo.dart';
import 'package:product/network/data_agent/product_data_agent.dart';

import '../api/product_api.dart';

class ProductDataAgentImpl extends ProductDataAgent {
  late ProductAPI _productAPI;

  ProductDataAgentImpl._() {
    _productAPI = ProductAPI(Dio());
  }

  static final ProductDataAgentImpl _singleton = ProductDataAgentImpl._();

  factory ProductDataAgentImpl() => _singleton;

  @override
  Future<List<ProductVO>?> getProduct() {
    return _productAPI
        .getProductResponse()
        .asStream()
        .map((event) => event.data)
        .first;
  }

  @override
  Future<ProductVO?> getOneProduct(String slug) => _productAPI
      .getSingleProductResponse(slug)
      .asStream()
      .map((event) => event.data)
      .first;
}
