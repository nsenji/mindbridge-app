import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/main_button.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/doctors/presentation/summary_card.dart';
import 'package:medbridge/src/features/navbar/navbar.dart';

class AppointmentSummary extends StatefulWidget {
  final String doctorName;
  final int rate;
  const AppointmentSummary({super.key, required this.doctorName, required this.rate});

  @override
  State<AppointmentSummary> createState() => _AppointmentSummaryState();
}

class _AppointmentSummaryState extends State<AppointmentSummary> {
  bool donePayment = false;

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
          size: 19,
          color: Color.fromARGB(255, 8, 33, 99),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            SummaryCard(
              rate: widget.rate,
              doctorName: widget.doctorName,
              checkmark: donePayment,
            ),
            H(h: 20),
            donePayment
                ? Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            color: Color.fromARGB(255, 30, 153, 34))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 10),
                      child: Column(
                        children: [
                          TextCustom(
                            text:
                                "A virtual meeting with Dr ${widget.doctorName} has been scheduled.",
                            isBold: true,
                          ),
                          H(h: 10),
                          TextCustom(
                            text:
                                "A call ID will be sent to your email when the medic begins the call.",
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 30,
              ),
              child: MainButton(
                  text: donePayment ? "Done" : "Process payment",
                  onpressed: () {
                    !donePayment
                        ? setState(() {
                            donePayment = true;
                          })
                        : setState(() {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const NavBar()),
                              (Route<dynamic> route) =>
                                  false, // Remove all routes from the stack
                            );
                          });
                    ;
                  }),
            )
          ],
        ),
      ),
    );
  }
}
