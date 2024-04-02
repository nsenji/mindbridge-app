import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/video_call/presentation/join_screen.dart';

class AppointmentCard extends StatefulWidget {
  final bool ready;
  const AppointmentCard({super.key, required this.ready});

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 245, 242, 242)),
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      W(w: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextCustom(
                              size: 18,
                              text: "Dr Frank James",
                              isBold: true,
                              color: Color.fromARGB(255, 8, 33, 99)),
                          TextCustom(
                            size: 15,
                            text: "Wed, 23 June 2024",
                            color: Colors.black,
                          ),
                          TextCustom(
                            size: 15,
                            text: "9:12 AM (60 min)",
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: widget.ready
                  ? () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JoinScreen()));
                    }
                  : null,
              child: Container(
                decoration: BoxDecoration(
                    color: widget.ready ? Colors.green : Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.videocam_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
