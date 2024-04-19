import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/history/data/all_questions.dart';
import 'package:medbridge/src/features/history/data/history_repository.dart';
import 'package:medbridge/src/features/history/presentation/past_diagnoses_controller.dart';
import 'package:medbridge/src/features/history/presentation/result_shimmer_screen.dart';
import 'package:medbridge/src/features/profile/presentation/current_user_controller.dart';

class TestResults extends ConsumerStatefulWidget {
  const TestResults({super.key});

  @override
  ConsumerState<TestResults> createState() => _TestResultsState();
}

class _TestResultsState extends ConsumerState<TestResults> {
  List allQuestionsList = all_questions;

  @override
  Widget build(BuildContext context) {
    var currentUserState = ref.watch(currentUserControllerProvider);
    var getPastdiagnoses = ref.watch(
        getpastdiagnosisListFutureProvider(currentUserState["patientID"]));
    var pastDiagnosisState = ref.watch(pastDiagnosesControllerProvider);

    return getPastdiagnoses.when(
      data: (newdata) => CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: pastDiagnosisState.length, (context, index_1) {
              Map questionKeys = pastDiagnosisState[index_1]["q&a"];
              return Padding(
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
                                text: pastDiagnosisState[index_1]["result"],
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
                                          childCount: questionKeys.keys
                                              .toList()
                                              .length, (context, index_2) {
                                        Map questionAndAnswer =
                                            pastDiagnosisState[index_1]["q&a"];
                                        return Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 15),
                                            child: Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  TextCustom(
                                                      text: questionAndAnswer
                                                          .keys
                                                          .toList()[index_2]),
                                                  TextCustom(
                                                      text: questionAndAnswer
                                                          .values
                                                          .toList()[index_2],
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
                        color: const Color.fromARGB(255, 214, 223, 238)),
                    width: double.maxFinite,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 0, top: 10, bottom: 10),
                                child: Row(
                                  children: [
                                    W(w: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: TextCustom(
                                            size: 17,
                                            text: pastDiagnosisState[index_1]
                                                ["result"],
                                            isBold: true,
                                            color:
                                                Color.fromARGB(255, 8, 33, 99),
                                            overflow: true,
                                          ),
                                        ),
                                        H(h: 10),
                                        TextCustom(
                                          size: 15,
                                          text: pastDiagnosisState[index_1]
                                              ["createdAt"],
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
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Row(
                            children: [
                              TextCustom(
                                text: "",
                                color: Color.fromARGB(255, 8, 33, 99),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color.fromARGB(255, 8, 33, 99),
                                size: 18,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
      loading: () {
        return CustomScrollView(
          slivers: [
            SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 3, (context, index) {
                return Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: ResultCardShimmer());
              }),
            )
          ],
        );
      },
      error: (error, stackTrace) {
        return Container(
            child: Center(
          child: Text(error.toString()),
        ));
      },
    );
  }
}
