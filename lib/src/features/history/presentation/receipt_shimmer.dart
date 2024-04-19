import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/svg_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:shimmer/shimmer.dart';


class ReceiptShimmer extends StatelessWidget {

  const ReceiptShimmer({super.key}
      );

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6), topRight: Radius.circular(6)),
              color: Color.fromARGB(255, 223, 230, 248)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustom(
                      text: "Virtual Session",
                      isBold: true,
                      color: Color.fromARGB(255, 8, 33, 99),
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        height: 10,
                        width: 150,
                        color: Colors.grey,
                      ),
                    ),
                    H(h: 10),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        height: 10,
                        width: 150,
                        color: Colors.grey,
                      ),
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        height: 10,
                        width: 150,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              
              ],
            ),
          ),
        ),
        Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        height: 10,
                        width: 150,
                        color: Colors.grey,
                      ),
                    ),
      ],
    );
  }
}
