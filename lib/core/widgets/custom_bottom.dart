import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    required this.onPressed,
  }) : super(key: key);
  final double? fontSize;
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(12))),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w900),
          )),
    );
  }
}
