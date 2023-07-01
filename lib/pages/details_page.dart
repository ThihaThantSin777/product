import 'package:flutter/material.dart';
import 'package:product/data/vos/product_vo/product_vo.dart';
import 'package:product/item_views/details_page_item_view/details_page_item_view.dart';
import 'package:product/widgets/easy_text_widget.dart';

import '../data/model/product_model.dart';
import '../data/model/product_model_impl.dart';
import '../utils/enum.dart';
import '../widgets/loading_widget.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.slug});

  final String slug;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final ProductModel _productModel = ProductModelImpl();

  ProductVO? productVO;
  LoadingStatus _loadingStatus = LoadingStatus.loading;
  String errorMessage = "";

  @override
  void initState() {
    super.initState();
    _productModel.getSingleProduct(widget.slug).then((product) {
      _loadingStatus = LoadingStatus.success;
      productVO = product;
      if (mounted) {
        setState(() {});
      }
    }).catchError((error) {
      _loadingStatus = LoadingStatus.error;
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant DetailsPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All in one Packages"),
        ),
        body: _loadingStatus == LoadingStatus.loading
            ? const LoadingWidget()
            : (_loadingStatus == LoadingStatus.error)
                ? ErrorWidget(errorMessage)
                : Stack(
                    children: [
                      Positioned.fill(
                          child: ProductDetailsItemView(
                        productVO: productVO,
                      )),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: BuyButtonItemView(
                          onPressed: () {},
                        ),
                      )
                    ],
                  ));
  }
}
