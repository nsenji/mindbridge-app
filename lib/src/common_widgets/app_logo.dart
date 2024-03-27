import 'package:flutter/material.dart';
import 'package:medbridge/src/utils/constants.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          // SVG(assetName: "brain-icon.svg", height: 30, width: 30),
          SizedBox(
            width: 4,
          ),
          Text(
            "MindBridge.",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Constants.primaryColor),
          )
        ],
      ),
    );
  }
}
