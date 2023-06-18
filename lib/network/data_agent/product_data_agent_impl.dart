import 'package:dio/dio.dart';
import 'package:product/data/vos/product_vo/product_vo.dart';
import 'package:product/network/data_agent/product_data_agent.dart';

import '../api/product_api.dart';

class ProductDataAgentImpl extends ProductDataAgent {
  late ProductAPI _productAPI;

  ProductDataAgentImpl() {
    _productAPI = ProductAPI(Dio());
  }

  @override
  Future<List<ProductVO>?> getProduct() {
    return _productAPI
        .getProductResponse()
        .asStream()
        .map((event) => event.data)
        .first;
  }
}
