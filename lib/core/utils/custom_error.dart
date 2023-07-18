import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;

  const CustomErrorWidget({super.key, required this.errorMessage});
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      errorMessage,
      style: Styles.textStyle18,
    );
  }
}
