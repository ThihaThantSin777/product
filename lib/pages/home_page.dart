import 'package:flutter/material.dart';
import 'package:product/constant/dimens.dart';
import 'package:product/data/model/product_model.dart';
import 'package:product/data/model/product_model_impl.dart';
import 'package:product/data/vos/product_vo/product_vo.dart';
import 'package:product/item_views/home_page_item_views/home_page_item_view.dart';
import 'package:product/pages/details_page.dart';
import 'package:product/utils/enum.dart';
import 'package:product/widgets/easy_text_widget.dart';
import 'package:product/widgets/loading_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductModel _productModel = ProductModelImpl();
  List<ProductVO> products = [];
  LoadingStatus _loadingStatus = LoadingStatus.loading;
  String errorMessage = "";

  @override
  void initState() {
    _productModel.getProduct().then((productList) {
      products = productList ?? [];
      _loadingStatus = LoadingStatus.success;
      if (mounted) {
        setState(() {});
      }
    }).catchError((error) {
      _loadingStatus = LoadingStatus.error;
      errorMessage = error.toString();
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
          centerTitle: true,
          title: const Text("Products"),
        ),
        body: (_loadingStatus == LoadingStatus.loading)
            ? const LoadingWidget()
            : (_loadingStatus == LoadingStatus.error)
                ? ErrorWidget(errorMessage)
                : ListView.separated(
                    itemCount: products.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: kSP10x,
                      );
                    },
                    itemBuilder: (context, index) {
                      return ProductItemView(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                    slug: products[index].slug ?? '')));
                          },
                          productVO: products[index]);
                    },
                  ));
  }
}
