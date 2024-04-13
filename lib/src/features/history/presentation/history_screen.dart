import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/history/presentation/receipts.dart';
import 'package:medbridge/src/features/history/presentation/test_results.dart';
import 'package:medbridge/src/features/profile/presentation/current_user_controller.dart';
import 'package:medbridge/src/features/profile/presentation/profile_widget.dart';

class HistoryScreen extends ConsumerStatefulWidget {
  const HistoryScreen({super.key});

  @override
  ConsumerState<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends ConsumerState<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    Map currentUser = ref.watch(currentUserControllerProvider);

    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
            scrolledUnderElevation: 0,
            automaticallyImplyLeading: false,
            title: TextCustom(
              text: "History",
              isBold: true,
              size: 19,
              color: Color.fromARGB(255, 8, 33, 99),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.white,
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 10, bottom: 10),
                                child: Container(
                                  height: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:
                                              Color.fromARGB(255, 8, 33, 99),
                                          radius: 20,
                                          child: TextCustom(
                                            text: currentUser["name"][0]
                                                .toString()
                                                .toUpperCase(),
                                            color: Colors.white,
                                            isBold: true,
                                          ),
                                        ),
                                        W(w: 15),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            TextCustom(
                                              size: 18,
                                              text: currentUser["name"],
                                              isBold: true,
                                            ),
                                            TextCustom(
                                              size: 15,
                                              text: currentUser["email"],
                                              color: Color.fromARGB(
                                                  255, 122, 122, 122),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5),
                                          child: InkWell(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.logout,
                                              color: Colors.red,
                                              size: 30,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ProfileWidget(
                    firstLetter:
                        currentUser["name"][0].toString().toUpperCase(),
                  ),
                ),
              )
            ],
            bottom: const TabBar(
              labelColor: Color.fromARGB(255, 8, 33, 99),
              indicatorColor: Color.fromARGB(255, 8, 33, 99),
              tabs: [
                Tab(
                  text: "Test Results",
                ),
                Tab(
                  text: "Receipts",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TestResults(),
              Receipts(),
            ],
          ),
        ),
      ),
    );
  }
}
