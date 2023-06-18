import 'package:flutter/material.dart';
import 'package:product/item_views/details_page_item_view/details_page_item_view.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All in one Packages"),
      ),
      body: Stack(
        children: [
          const Positioned.fill(child: ProductDetailsItemView()),
          Align(
            alignment: Alignment.bottomCenter,
            child: BuyButtonItemView(
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
