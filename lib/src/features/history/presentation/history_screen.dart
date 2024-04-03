import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/history/presentation/test_results.dart';
import 'package:medbridge/src/features/profile/presentation/profile_widget.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
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
                                          child: TextCustom(
                                            text: "V",
                                            color: Colors.white,
                                            isBold: true,
                                          ),
                                          radius: 20,
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
                                              text: "Victor Nsenji",
                                              isBold: true,
                                            ),
                                            TextCustom(
                                              size: 15,
                                              text:
                                                  "nsengiyumvavictor@gmail.com",
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
                  child: ProfileWidget(),
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 10, top: 10),
                child: TestResults(),
              ),
              Center(
                child: Text("receipts"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
