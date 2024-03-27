import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String assetName;
  const Avatar({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: Image.asset(
        "assets/images/$assetName",
        fit: BoxFit.cover,
      ).image,
    );
  }
}
