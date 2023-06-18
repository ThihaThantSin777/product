import 'package:flutter/material.dart';
import 'package:product/constant/dimens.dart';
import 'package:product/utils/extensions.dart';
import 'package:product/utils/random_colors.dart';
import 'package:product/widgets/easy_text_widget.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView({super.key, required this.onTap});

  final Function onTap;

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
              text: "Product".getPrefix(),
            ),
          ),
          title: const EasyTextWidget(
            text: "Clothes",
            fontWeight: FontWeight.w700,
            fontSize: kFontSize18x,
          ),
          subtitle: const EasyTextWidget(
            text: "All in on Packages",
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
