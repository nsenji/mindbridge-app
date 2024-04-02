import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/circle_avatar.dart';
import 'package:medbridge/src/common_widgets/main_button.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/doctors/presentation/confirm_appointment.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: TextCustom(
          text: "Book an appointment",
          isBold: true,
          size: 18,
          color: Color.fromARGB(255, 8, 33, 99),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
            child: TextCustom(text: "Medic"),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 33, 99),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Avatar(
                      assetName: "guy.png",
                      radius: 28,
                    ),
                    W(w: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextCustom(
                          size: 18,
                          text: "Dr Frank James",
                          isBold: true,
                          color: Colors.white,
                        ),
                        TextCustom(
                          size: 15,
                          text: "Psychiatrist - RayWay Clinic",
                          color: Color.fromARGB(255, 197, 197, 197),
                        ),
                        TextCustom(
                          size: 15,
                          text: "Virtual Session (60 min)",
                          color: Color.fromARGB(255, 197, 197, 197),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 0),
            child: TextCustom(text: "Select date and time"),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
            child: MainButton(
                text: "Confirm",
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConfirmAppointment()));
                }),
          )
        ],
      ),
    );
  }
}
