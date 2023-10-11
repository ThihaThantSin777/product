import 'package:flutter/material.dart';
import 'package:product/constant/dimens.dart';
import 'package:product/data/model/product_model.dart';
import 'package:product/data/model/product_model_impl.dart';
import 'package:product/data/vos/product_vo/product_vo.dart';
import 'package:product/pages/details_page.dart';
import 'package:product/widgets/easy_text_widget.dart';
import 'package:product/utils/extensions.dart';
import 'package:product/utils/random_colors.dart';

final ProductModel _productModel = ProductModelImpl();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Products"),
        ),
        body: FutureBuilder<List<ProductVO>?>(
          future: _productModel.getProduct(),
          builder: (context, snapShot) {
            if (snapShot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapShot.hasError) {
              return Center(child: EasyTextWidget(text: "Error Occur : ${snapShot.error}"));
            }
            final result = snapShot.data;
            return ListView.separated(
              itemCount: result?.length ?? 0,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: kSP10x,
                );
              },
              itemBuilder: (context, index) {
                return ProductItemView(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(slug: result?[index].slug ?? '')));
                    },
                    productVO: result?[index]);
              },
            );
          },
        ));
  }
}

class ProductItemView extends StatelessWidget {
  const ProductItemView({super.key, required this.onTap, required this.productVO});

  final Function onTap;
  final ProductVO? productVO;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        margin: const EdgeInsets.only(bottom: kSP10x),
        child: ListTile(
          leading: CircleAvatar(
            radius: kCircleAvatarRadius,
            backgroundColor: RandomColor.getRandomColor(),
            child: EasyTextWidget(
              fontWeight: FontWeight.w600,
              text: (productVO?.title ?? '').getPrefix(),
            ),
          ),
          title: EasyTextWidget(
            text: (productVO?.title ?? ''),
            fontWeight: FontWeight.w700,
            fontSize: kFontSize18x,
          ),
          subtitle: EasyTextWidget(
            text: (productVO?.description ?? ''),
            fontWeight: FontWeight.w300,
            maxLine: 3,
          ),
        ),
      ),
    );
  }
}
