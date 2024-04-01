import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/main_button.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';

class ConfirmAppointment extends StatefulWidget {
  const ConfirmAppointment({super.key});

  @override
  State<ConfirmAppointment> createState() => _ConfirmAppointmentState();
}

class _ConfirmAppointmentState extends State<ConfirmAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: TextCustom(
          text: "Appointment Summary",
          isBold: true,
          size: 18,
          color: Color.fromARGB(255, 8, 33, 99),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6)),
                      color: Color.fromARGB(255, 223, 230, 248)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextCustom(
                          text: "Virtual Session",
                          isBold: true,
                          color: Color.fromARGB(255, 8, 33, 99),
                        ),
                        TextCustom(
                          text: "Dr Frank James",
                          isBold: true,
                        ),
                        H(h: 10),
                        TextCustom(
                          text: "22nd Wed, June 2024",
                          size: 15,
                        ),
                        TextCustom(
                          text: "9:42AM - 10:41AM",
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6)),
                      color: Color.fromARGB(255, 8, 33, 99)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextCustom(
                          text: "Rate",
                          color: Colors.white,
                        ),
                        TextCustom(
                          text: "Ugx 45000",
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 30,
              ),
              child: MainButton(text: "Process payment", onpressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
