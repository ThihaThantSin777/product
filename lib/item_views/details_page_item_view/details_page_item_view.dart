import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:product/constant/colors.dart';
import 'package:product/constant/dimens.dart';
import 'package:product/constant/strings.dart';
import 'package:product/widgets/easy_text_widget.dart';
import 'package:product/widgets/loading_widget.dart';

class ProductDetailsItemView extends StatelessWidget {
  const ProductDetailsItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(kSP10x),
      children: const [
        ProductImageView(),
        SizedBox(
          height: kSP10x,
        ),
        ProductPrice(),
        SizedBox(
          height: kSP20x,
        ),
        ProductDescriptionView(),
        SizedBox(
          height: kSP20x,
        ),
        ProductCreatorView(),
        SizedBox(
          height: kSP60x,
        ),
      ],
    );
  }
}

class ProductCreatorView extends StatelessWidget {
  const ProductCreatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EasyTextWidget(
          text: kCreatorText,
          fontWeight: FontWeight.w600,
          fontSize: kFontSize18x,
        ),
        SizedBox(
          height: kSP10x,
        ),
        EasyTextWidget(text: "Thomas")
      ],
    );
  }
}

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.monetization_on_outlined,
          size: 30,
        ),
        SizedBox(
          width: kSP10x,
        ),
        EasyTextWidget(text: '14.4 \$'),
      ],
    );
  }
}

class ProductDescriptionView extends StatelessWidget {
  const ProductDescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EasyTextWidget(
          text: kDescriptionText,
          fontWeight: FontWeight.w600,
          fontSize: kFontSize18x,
        ),
        SizedBox(
          height: kSP10x,
        ),
        EasyTextWidget(
            text:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
      ],
    );
  }
}

class ProductImageView extends StatelessWidget {
  const ProductImageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kDetailsPageImageHeight,
      child: CachedNetworkImage(
        imageUrl:
            "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia-1024x681.jpg",
        placeholder: (context, url) => const LoadingWidget(),
        errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.error)),
      ),
    );
  }
}

class BuyButtonItemView extends StatelessWidget {
  const BuyButtonItemView({super.key, required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSP10x, vertical: kSP10x),
      child: MaterialButton(
        height: 50,
        minWidth: double.infinity,
        color: kPrimaryColor,
        onPressed: () => onPressed(),
        child: const EasyTextWidget(
          text: kBuyText,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
