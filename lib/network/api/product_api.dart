import 'package:dio/dio.dart';
import 'package:product/constant/api_constant.dart';
import 'package:retrofit/http.dart';

import '../response/product_response/product_response.dart';

part 'product_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class ProductAPI {
  factory ProductAPI(Dio dio) {
    return _ProductAPI(dio);
  }

  @GET(kGetAllProduct)
  Future<ProductResponse> getProductResponse();
}
