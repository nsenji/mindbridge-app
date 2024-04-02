import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/appointments/presentation/appointment_card.dart';
import 'package:medbridge/src/features/doctors/presentation/doctor_card.dart';
import 'package:medbridge/src/features/profile/presentation/profile_widget.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({super.key});

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  var status = [false, false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 60,
            scrolledUnderElevation: 0,
            automaticallyImplyLeading: false,
            title: TextCustom(
              text: "Appointments",
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
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 20),
              child: TextCustom(
                text: "All pending appointments",
                color: Color.fromARGB(255, 122, 122, 122),
              ),
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: 3, (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: AppointmentCard(
                  ready: status[index],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
