import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/circle_avatar.dart';
import 'package:medbridge/src/common_widgets/main_button.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/doctors/data/date_time_data.dart';
import 'package:medbridge/src/features/doctors/presentation/confirm_appointment.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  int? _value;

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
          size: 19,
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
            child: TextCustom(text: "Select date"),
          ),
          Container(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List<Widget>.generate(
                    dateTime.length,
                    (int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: ChoiceChip(
                          padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                          backgroundColor: Color.fromARGB(255, 223, 230, 248),
                          labelStyle: TextStyle(
                            color: _value == index
                                ? Colors.white
                                : Color.fromARGB(255, 8, 33, 99),
                          ),
                          selectedColor: Color.fromARGB(255, 8, 33, 99),
                          disabledColor: Color.fromARGB(255, 223, 230, 248),
                          labelPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadiusDirectional.circular(50)),
                          side: BorderSide(
                              color: Color.fromARGB(255, 149, 172, 230)),
                          showCheckmark: false,
                          label: ConstrainedBox(
                              constraints:
                                  BoxConstraints(minWidth: 50, maxWidth: 60),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(dateTime[index]["month"]),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5),
                                    child: Text(
                                      dateTime[index]["day"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                  ),
                                  Text(
                                    dateTime[index]["dayName"],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              )),
                          selected: _value == index,
                          onSelected: (bool selected) {
                            setState(() {
                              _value = selected ? index : null;
                            });
                          },
                        ),
                      );
                    },
                  ).toList(),
                )),
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
