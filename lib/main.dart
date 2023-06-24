import 'package:flutter/material.dart';
import 'package:product/constant/strings.dart';
import 'package:product/data/model/product_model.dart';
import 'package:product/data/model/product_model_impl.dart';
import 'package:product/pages/home_page.dart';

void main() {
  runApp(const MyApp());
  ProductModel _productModel = ProductModelImpl();
  _productModel.getSingleProduct("special-cotton-shirt-for-men").then((value) {
    print("Value===>$value");
  }).catchError((error) {
    print("Error===>$error");
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      home: HomePage(),
    );
  }
}
