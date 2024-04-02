import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/circle_avatar.dart';
import 'package:medbridge/src/common_widgets/main_button.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/doctors/presentation/book_appointment.dart';

class DoctorCard extends StatefulWidget {
  const DoctorCard({super.key});

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        expand
            ? setState(() {
                expand = false;
              })
            : setState(() {
                expand = true;
              });
      },
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: Color.fromARGB(255, 116, 124, 146), width: 0.5)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Avatar(
                    assetName: "guy.png",
                    radius: 50,
                  ),
                  W(w: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextCustom(
                        text: "Dr Frank James",
                        size: 18,
                        isBold: true,
                        color: Color.fromARGB(255, 8, 33, 99),
                      ),
                      TextCustom(text: "Psychiatrist"),
                      TextCustom(text: "RayWay Clinic"),
                      H(h: 10),
                      TextCustom(
                        text: "Earliest slot: 23-05-24 12:34",
                        size: 14,
                        color: Color.fromARGB(255, 122, 122, 122),
                      )
                    ],
                  )
                ],
              ),
              expand
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        H(h: 20),

                        TextCustom(
                          text: "Professional profile",
                          isBold: true,
                        ),
                        // H(h: 10),
                        TextCustom(
                          text: "Addiction Psychiatry",
                          size: 14,
                          color: Color.fromARGB(255, 122, 122, 122),
                        ),
                        TextCustom(
                          text: "Child and Adoloscent Psychiatry",
                          size: 14,
                          color: Color.fromARGB(255, 122, 122, 122),
                        ),
                        TextCustom(
                          text: "Cognitive-behavioral Therapy",
                          size: 14,
                          color: Color.fromARGB(255, 122, 122, 122),
                        ),
                        H(h: 10),
                        TextCustom(
                          text: "Languages: English, Luganda",
                          size: 14,
                        ),
                        H(h: 10),
                        TextCustom(
                          text: "Rate: Ugx 45000",
                          isBold: true,
                          size: 14,
                        ),
                        H(h: 15),
                        MainButton(
                            text: "Select",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookAppointment()));
                            })
                      ],
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
