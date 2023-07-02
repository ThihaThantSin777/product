import 'package:flutter/material.dart';

import '../../data/vos/product_vo/product_vo.dart';
import '../../widgets/product_cart_widget.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView(
      {super.key, required this.onTap, required this.productVO});

  final Function onTap;
  final ProductVO? productVO;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: ProductCardWidget(
        productVO: productVO,
      ),
    );
  }
}
