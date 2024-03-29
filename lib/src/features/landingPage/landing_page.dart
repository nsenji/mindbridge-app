import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/app_logo.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppLogo(),
        // actions: [
        //   TextCustom(
        //     text: "sereneAI",
        //     size: 14,
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            H(h: 10),
            Container(
              color: Color.fromARGB(255, 223, 230, 248),
              width: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TextCustom(
                        text: "Mental Health Test",
                        isBold: true,
                        size: 33,
                        color: Color.fromARGB(255, 8, 33, 99),
                      ),
                    ),
                    H(h: 5),
                    SizedBox(
                      width: 360,
                      child: TextCustom(
                        text:
                            "Detect signs of bipolar dissorder and depression based on mood, behaviour and emotional wellbeing using AI.",
                        color: Color.fromARGB(255, 122, 122, 122),
                      ),
                    ),
                    H(h: 30),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 8, 33, 99),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 8, 33, 99),
                              width: 0.5)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: TextCustom(
                          text:
                              "Your honesty is essential for efficient detection and understanding your needs.",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    H(h: 20),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 8, 33, 99),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 8, 33, 99),
                              width: 0.5)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: TextCustom(
                          text:
                              "Connect with mental health experts directly for support and guidance and treatment through video sessions.",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    H(h: 30),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
