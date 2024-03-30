import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medbridge/src/common_widgets/app_logo.dart';
import 'package:medbridge/src/common_widgets/main_button.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/diagnosis/data/questions.dart';
import 'package:medbridge/src/features/diagnosis/presentation/normal_question_container.dart';
import 'package:medbridge/src/features/diagnosis/presentation/scaled_question_container.dart';
import 'package:medbridge/src/features/diagnosis/presentation/screen_3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List screen2List = screen_2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              scrolledUnderElevation: 0,
              automaticallyImplyLeading: false,
              title: AppLogo(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: double.maxFinite,
                  color: Color.fromARGB(255, 223, 230, 248),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Center(
                      child: TextCustom(
                        text: "Bipolar dissorder and Depression Test",
                        size: 21,
                        color: Color.fromARGB(255, 8, 33, 99),
                        isBold: true,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 20, right: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextCustom(
                        text:
                            "As you answer the questions, consider how they have applied to you over the last 12 months.",
                        size: 14,
                      ),
                      H(h: 10),
                      TextCustom(
                        text: "All fields are required",
                        color: Color.fromARGB(255, 248, 148, 140),
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: screen2List.length, (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, right: 10, left: 10),
                  child: NormalQuestionContainer(
                      symptom: screen2List[index]["symptom"],
                      question: screen2List[index]["question"],
                      options: screen2List[index]["options"]),
                );
              }),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20, right: 10, left: 10),
                child: ScaledQuestionContainer(
                  symptom: "optimism",
                    question: "How optmistic are you  (Select from scale)"),
                    
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 30, right: 20, left: 20),
                child: MainButton(
                    text: "Next",
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Screen3()));
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
