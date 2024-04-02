import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color.fromARGB(255, 8, 33, 99))),
      child: Padding(
        padding: const EdgeInsets.only(left: 1, right: 6, bottom: 5, top: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.keyboard_arrow_down,
              size: 21,
            ),
            CircleAvatar(
              radius: 12,
              child: TextCustom(
                text: "V",
                color: Colors.white,
                isBold: true,
              ),
              backgroundColor: Color.fromARGB(255, 8, 33, 99),
            )
          ],
        ),
      ),
    );
  }
}
