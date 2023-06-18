import 'package:flutter/material.dart';
import 'package:product/item_views/home_page_item_views/home_page_item_view.dart';
import 'package:product/pages/details_page.dart';
import 'package:product/utils/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Products"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
              100,
              (index) => ProductItemView(
                    onTap: () {
                      context.navigationNextScreen(const DetailsPage());
                    },
                  )).toList(),
        ),
      ),
    );
  }
}
