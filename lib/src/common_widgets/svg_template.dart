import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVG extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  const SVG({super.key, required this.url, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(url, width: width, height: height ,);
  }
}
