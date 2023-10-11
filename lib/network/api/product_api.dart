import 'package:dio/dio.dart';
import 'package:product/constant/api_constant.dart';
import 'package:product/network/response/single_product_response/single_product_response.dart';
import 'package:retrofit/http.dart';

import '../response/product_response/product_response.dart';

part 'product_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class ProductAPI {
  factory ProductAPI(Dio dio) {
    return _ProductAPI(dio);
  }

  @GET(kGetAllProductEndpoint)
  Future<ProductResponse> getProductResponse();

  @GET(kGetOneProductEndpoint)
  Future<SingleProductResponse> getSingleProductResponse(@Path(kPathParameterSlugName) String slug);
}
