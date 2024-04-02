import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medbridge/src/common_widgets/circle_avatar.dart';
import 'package:medbridge/src/common_widgets/outlined_button.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_field.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/doctors/presentation/doctor_card.dart';
import 'package:medbridge/src/features/profile/presentation/profile_widget.dart';

class SelectDoctors extends StatefulWidget {
  const SelectDoctors({super.key});

  @override
  State<SelectDoctors> createState() => _SelectDoctorsState();
}

class _SelectDoctorsState extends State<SelectDoctors> {
  TextEditingController _searchContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 60,
              scrolledUnderElevation: 0,
              automaticallyImplyLeading: false,
              title: TextCustom(
                text: "Select Preferred Therapist",
                isBold: true,
                size: 18,
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
                                                    255, 197, 197, 197),
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
                                // H(h: 20),
                                // Padding(
                                //   padding: const EdgeInsets.only(
                                //       left: 10, right: 10),
                                //   child: OutButton(
                                //       text: "Logout", onpressed: () {}),
                                // )
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
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              child: TextFieldWidget(
                  controller: _searchContoller,
                  label: "Search for therapist",
                  onChanged: (value) {}),
            )),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 5, (context, index) {
                return Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                    child: DoctorCard());
              }),
            ),
          ],
        ),
      ),
    );
  }
}
