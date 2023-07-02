import 'package:flutter/material.dart';
import 'package:product/constant/dimens.dart';
import 'package:product/utils/cart_product_llist.dart';
import 'package:product/utils/extensions.dart';
import 'package:product/utils/random_colors.dart';
import 'package:product/widgets/easy_text_widget.dart';

import '../../data/vos/product_vo/product_vo.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget(
      {super.key,
      required this.productVO,
      this.isShowRemoveIcon = false,
      this.onTapRemove});

  final ProductVO? productVO;
  final bool isShowRemoveIcon;
  final Function(ProductVO)? onTapRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
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
        trailing: isShowRemoveIcon
            ? IconButton(
                onPressed: () {
                  if (onTapRemove != null && productVO != null) {
                    onTapRemove!(productVO!);
                  }
                },
                icon: const Icon(Icons.delete))
            : null,
      ),
    );
  }
}
