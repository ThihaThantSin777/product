import 'package:product/data/vos/product_vo/product_vo.dart';

abstract class ProductDAO {
  void save(List<ProductVO> productList);
  void saveSingleProduct(ProductVO productVO);
  List<ProductVO>? getProductListFromDataBase();

  ProductVO? getProductByID(String id);

  Stream watchProductBox();

  Stream<List<ProductVO>?> getProductListFromDataBaseStream();
}
