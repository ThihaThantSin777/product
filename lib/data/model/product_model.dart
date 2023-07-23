import '../vos/product_vo/product_vo.dart';

abstract class ProductModel {
  Future<List<ProductVO>?> getProduct();

  Future<ProductVO?> getSingleProduct(String slug);

  List<ProductVO>? getProductListFromDataBase();

  void save(List<ProductVO> productList);

  void saveSingle(ProductVO singleProduct);

  ProductVO? getProductVOByID(String id);

  ///DataBase
  Stream<List<ProductVO>?> getProductListFromDataBaseStream();
}
