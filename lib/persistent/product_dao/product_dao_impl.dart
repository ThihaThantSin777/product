import 'package:hive/hive.dart';
import 'package:product/constant/hive_constant.dart';
import 'package:product/data/vos/product_vo/product_vo.dart';
import 'package:product/persistent/product_dao/product_dao.dart';

class ProductDaoImpl extends ProductDAO {
  ProductDaoImpl._();

  static final ProductDaoImpl _singleton = ProductDaoImpl._();

  factory ProductDaoImpl() => _singleton;

  @override
  ProductVO? getProductByID(String id) => _getProductBox().get(id);

  @override
  List<ProductVO>? getProductListFromDataBase() =>
      _getProductBox().values.toList();

  @override
  void save(List<ProductVO> productList) {
    for (ProductVO productVO in productList) {
      _getProductBox().put(productVO.id, productVO);
    }
  }

  Box<ProductVO> _getProductBox() => Hive.box<ProductVO>(kBoxNameForProductVO);

  @override
  void saveSingleProduct(ProductVO productVO) {
    _getProductBox().put(productVO.id, productVO);
  }
}

///{
/// 1 :"Hello",
/// 2: "Hi"
///}
///
///
/// 2===>"Ni Hone"
