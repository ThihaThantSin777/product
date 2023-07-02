import 'package:flutter/material.dart';
import 'package:product/widgets/easy_text_widget.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: EasyTextWidget(
        text: message,
      ),
    );
  }
}
