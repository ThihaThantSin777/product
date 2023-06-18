import 'package:product/data/model/product_model.dart';
import 'package:product/data/vos/product_vo/product_vo.dart';
import 'package:product/network/data_agent/product_data_agent.dart';
import 'package:product/network/data_agent/product_data_agent_impl.dart';

class ProductModelImpl extends ProductModel {
  final ProductDataAgent _dataAgent = ProductDataAgentImpl();

  @override
  Future<List<ProductVO>?> getProduct() =>
      _dataAgent.getProduct().then((value) {
        var temp = value;
        temp = temp?.map((e) {
          e.description =
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
          e.image =
              "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia-1024x681.jpg";
          return e;
        }).toList();
        return temp;
      });
}
