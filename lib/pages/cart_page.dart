import 'package:flutter/material.dart';
import 'package:product/constant/dimens.dart';
import 'package:product/utils/cart_product_llist.dart';
import 'package:product/widgets/easy_text_widget.dart';
import 'package:product/widgets/product_cart_widget.dart';

import '../data/vos/product_vo/product_vo.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: cartListProduct.isEmpty
          ? const CartEmptyView()
          : CartItemView(
              productList: cartListProduct,
              onTapRemove: (productVO) {
                cartListProduct.remove(productVO);
                if (mounted) {
                  setState(() {});
                }
              },
            ),
    );
  }
}

class CartItemView extends StatelessWidget {
  const CartItemView(
      {super.key, required this.productList, required this.onTapRemove});

  final List<ProductVO> productList;
  final Function(ProductVO) onTapRemove;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (_, index) {
          return ProductCardWidget(
            productVO: productList[index],
            isShowRemoveIcon: true,
            onTapRemove: (productVO) {
              onTapRemove(productVO);
            },
          );
        },
        separatorBuilder: (_, index) => const SizedBox(
              height: kSP10x,
            ),
        itemCount: productList.length);
  }
}

class CartEmptyView extends StatelessWidget {
  const CartEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: EasyTextWidget(
        text: "There is no items in your cart",
      ),
    );
  }
}
