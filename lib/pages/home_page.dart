import 'package:flutter/material.dart';
import 'package:product/constant/dimens.dart';
import 'package:product/data/model/product_model.dart';
import 'package:product/data/model/product_model_impl.dart';
import 'package:product/data/vos/product_vo/product_vo.dart';
import 'package:product/item_views/home_page_item_views/home_page_item_view.dart';
import 'package:product/pages/cart_page.dart';
import 'package:product/pages/details_page.dart';
import 'package:product/utils/cart_product_llist.dart';
import 'package:product/utils/enum.dart';
import 'package:product/utils/extensions.dart';
import 'package:product/widgets/easy_text_widget.dart';
import 'package:product/widgets/loading_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductModel _productModel = ProductModelImpl();
  List<ProductVO>? products;
  LoadingStatus _loadingStatus = LoadingStatus.loading;
  String errorMessage = "";

  @override
  void initState() {
    _productModel.getProduct().catchError((error) {
      _loadingStatus = LoadingStatus.error;
      errorMessage = error.toString();
      if (mounted) {
        setState(() {});
      }
    });

    _productModel.getProductListFromDataBaseStream().listen((event) {
      _loadingStatus = LoadingStatus.success;
      products = event;
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(kSP10x),
              child: Badge(
                  label: EasyTextWidget(
                    text: cartListProduct.length.toString(),
                  ),
                  isLabelVisible: cartListProduct.isNotEmpty,
                  child: GestureDetector(
                      onTap: () {
                        context
                            .navigationNextScreen(const CartPage())
                            .then((value) {
                          if (mounted) {
                            setState(() {});
                          }
                        });
                      },
                      child: const Icon(Icons.shopping_cart))),
            )
          ],
          centerTitle: true,
          title: const Text("Products"),
        ),
        body: (_loadingStatus == LoadingStatus.loading || products == null)
            ? const LoadingWidget()
            : (_loadingStatus == LoadingStatus.error)
                ? ErrorWidget(errorMessage)
                : ListView.separated(
                    itemCount: products?.length ?? 0,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: kSP10x,
                      );
                    },
                    itemBuilder: (context, index) {
                      return ProductItemView(
                          onTap: () {
                            context
                                .navigationNextScreen(DetailsPage(
                                    id: products?[index].id ?? '',
                                    slug: products?[index].slug ?? ''))
                                .then((value) {
                              if (mounted) {
                                setState(() {});
                              }
                            });
                          },
                          productVO: products?[index]);
                    },
                  ));
  }
}
