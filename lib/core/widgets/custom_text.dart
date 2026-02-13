import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.weight,
    this.textAlign = .center,
    this.maxLines = 1,
  });
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;
  final int maxLines;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        fontFamily: "satoshi",
      ),
    );
  }
}
