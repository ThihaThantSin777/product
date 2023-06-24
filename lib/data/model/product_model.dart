import '../vos/product_vo/product_vo.dart';

abstract class ProductModel {
  Future<List<ProductVO>?> getProduct();

  Future<ProductVO?> getSingleProduct(String slug);
}
