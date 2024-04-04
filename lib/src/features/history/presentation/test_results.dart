import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/history/data/all_questions.dart';

class TestResults extends StatefulWidget {
  const TestResults({super.key});

  @override
  State<TestResults> createState() => _TestResultsState();
}

class _TestResultsState extends State<TestResults> {
  List allQuestionsList = all_questions;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          backgroundColor: Colors.white,
                          scrollable: true,
                          title: TextCustom(
                            size: 17,
                            text: "Progressive Depressive Dissorder",
                            isBold: true,
                            color: Color.fromARGB(255, 8, 33, 99),
                            overflow: true,
                          ),
                          
                          content: SizedBox(
                            height: 500,
                            width: 300,
                            child: CustomScrollView(
                              slivers: [
                                SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                      childCount: allQuestionsList.length,
                                      (context, index) {
                                    return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextCustom(
                                                  text: allQuestionsList[index]
                                                      ["question"]),
                                              TextCustom(
                                                  text: "MOST-OFTEN",
                                                  color: Color.fromARGB(
                                                      255, 8, 33, 99),
                                                  isBold: true)
                                            ],
                                          ),
                                        ));
                                  }),
                                ),
                              ],
                            ),
                          ));
                    });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 214, 223, 238)),
                width: double.maxFinite,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0, top: 10, bottom: 10),
                            child: Row(
                              children: [
                                W(w: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: TextCustom(
                                        size: 17,
                                        text:
                                            "Progressive Depressive Dissorder",
                                        isBold: true,
                                        color: Color.fromARGB(255, 8, 33, 99),
                                        overflow: true,
                                      ),
                                    ),
                                    H(h: 5),
                                    TextCustom(
                                      size: 15,
                                      text: "Wed, 23 June 2024",
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
                      child: Row(
                        children: [
                          TextCustom(
                            text: "Responses",
                            color: Color.fromARGB(255, 8, 33, 99),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color.fromARGB(255, 8, 33, 99),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          backgroundColor: Colors.white,
                          scrollable: true,
                          title: TextCustom(
                            size: 17,
                            text: "Progressive Depressive Dissorder",
                            isBold: true,
                            color: Color.fromARGB(255, 8, 33, 99),
                            overflow: true,
                          ),
                          content: SizedBox(
                            height: 500,
                            width: 300,
                            child: CustomScrollView(
                              slivers: [
                                SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                      childCount: allQuestionsList.length,
                                      (context, index) {
                                    return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextCustom(
                                                  text: allQuestionsList[index]
                                                      ["question"]),
                                              TextCustom(
                                                  text: "MOST-OFTEN",
                                                  color: Color.fromARGB(
                                                      255, 8, 33, 99),
                                                  isBold: true)
                                            ],
                                          ),
                                        ));
                                  }),
                                ),
                              ],
                            ),
                          ));
                    });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 214, 223, 238)),
                width: double.maxFinite,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0, top: 10, bottom: 10),
                            child: Row(
                              children: [
                                W(w: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: TextCustom(
                                        size: 17,
                                        text: "Bipolar type 1",
                                        isBold: true,
                                        color: Color.fromARGB(255, 8, 33, 99),
                                        overflow: true,
                                      ),
                                    ),
                                    H(h: 5),
                                    TextCustom(
                                      size: 15,
                                      text: "Wed, 23 June 2024",
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
                      child: Row(
                        children: [
                          TextCustom(
                            text: "Responses",
                            color: Color.fromARGB(255, 8, 33, 99),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color.fromARGB(255, 8, 33, 99),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          backgroundColor: Colors.white,
                          scrollable: true,
                          title: TextCustom(
                            size: 17,
                            text: "Progressive Depressive Dissorder",
                            isBold: true,
                            color: Color.fromARGB(255, 8, 33, 99),
                            overflow: true,
                          ),
                          content: SizedBox(
                            height: 500,
                            width: 300,
                            child: CustomScrollView(
                              slivers: [
                                SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                      childCount: allQuestionsList.length,
                                      (context, index) {
                                    return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextCustom(
                                                  text: allQuestionsList[index]
                                                      ["question"]),
                                              TextCustom(
                                                  text: "MOST-OFTEN",
                                                  color: Color.fromARGB(
                                                      255, 8, 33, 99),
                                                  isBold: true)
                                            ],
                                          ),
                                        ));
                                  }),
                                ),
                              ],
                            ),
                          ));
                    });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 214, 223, 238)),
                width: double.maxFinite,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0, top: 10, bottom: 10),
                            child: Row(
                              children: [
                                W(w: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: TextCustom(
                                        size: 17,
                                        text: "Normal",
                                        isBold: true,
                                        color: Color.fromARGB(255, 8, 33, 99),
                                        overflow: true,
                                      ),
                                    ),
                                    H(h: 5),
                                    TextCustom(
                                      size: 15,
                                      text: "Wed, 23 June 2024",
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
                      child: Row(
                        children: [
                          TextCustom(
                            text: "Responses",
                            color: Color.fromARGB(255, 8, 33, 99),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color.fromARGB(255, 8, 33, 99),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
