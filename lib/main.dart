import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:product/constant/hive_constant.dart';
import 'package:product/constant/strings.dart';
import 'package:product/data/model/product_model.dart';
import 'package:product/data/model/product_model_impl.dart';
import 'package:product/data/vos/category_vo/category_vo.dart';
import 'package:product/data/vos/created_by_vo/created_by_vo.dart';
import 'package:product/data/vos/product_vo/product_vo.dart';
import 'package:product/network/data_agent/http_data_agent.dart';
import 'package:product/network/data_agent/http_data_agent_impl.dart';
import 'package:product/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(ProductVOAdapter());
  Hive.registerAdapter(CreatedByVOAdapter());
  Hive.registerAdapter(CategoryVOAdapter());

  await Hive.openBox<ProductVO>(kBoxNameForProductVO);

  runApp(const MyApp());
  HttpDataAgent httpDataAgent = HttpDataAgentImpl();
  httpDataAgent.getMockResponse().then((value) {
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
