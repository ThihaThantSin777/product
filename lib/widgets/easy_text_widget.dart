import 'package:flutter/material.dart';
import 'package:product/constant/dimens.dart';

class EasyTextWidget extends StatelessWidget {
  const EasyTextWidget(
      {super.key,
      required this.text,
      this.fontSize = kFontSize14x,
      this.fontWeight = FontWeight.w400});

  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
