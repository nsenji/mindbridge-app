import 'package:flutter/material.dart';
import 'package:medbridge/src/utils/constants.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final double size;
  final bool isBold;
  final Color color;

  const TextCustom(
      {super.key,
      required this.text,
      this.color = const Color.fromARGB(255, 54, 54, 54),
      this.isBold = false,
      this.size = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          fontWeight: isBold ? FontWeight.bold : null,
          color: color),
    );
  }
}
