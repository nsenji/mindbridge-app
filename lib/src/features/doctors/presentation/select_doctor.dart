import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_field.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/doctors/data/all_doctors_repository.dart';
import 'package:medbridge/src/features/doctors/presentation/controllers_providers/all_doctors_controller.dart';
import 'package:medbridge/src/features/doctors/presentation/doctor_card.dart';
import 'package:medbridge/src/features/doctors/presentation/doctor_shimmer_screen.dart';
import 'package:medbridge/src/features/profile/presentation/current_user_controller.dart';
import 'package:medbridge/src/features/profile/presentation/profile_widget.dart';

class SelectDoctors extends ConsumerStatefulWidget {
  const SelectDoctors({super.key});

  @override
  ConsumerState<SelectDoctors> createState() => _SelectDoctorsState();
}

class _SelectDoctorsState extends ConsumerState<SelectDoctors> {
  TextEditingController _searchContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var value = ref.watch(getalldoctorsFutureProvider);
    value.when(
      data: (newData) {
        print(newData);
      },
      error: (er, str) {
        print("there is an error" + er.toString());
      },
      loading: () {
        print("loading state");
      },
    );
    List doctorList = ref.watch(alldoctorsControllerProvider);
    Map currentUser = ref.watch(currentUserControllerProvider);
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
                                              text: currentUser["name"][0].toString().toUpperCase(),
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
                                                text:
                                                    currentUser["email"],
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
                                              onTap: () {
                                                // getallDoctors();
                                              },
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
                    child: ProfileWidget(firstLetter:  currentUser["name"][0].toString().toUpperCase(),),
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
            doctorList.isEmpty
                ? SliverList(
                    delegate: SliverChildBuilderDelegate(childCount: 5,
                        (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, right: 10, left: 10),
                          child: DoctorCardShimmer());
                    }),
                  )
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                        childCount: doctorList.length, (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, right: 10, left: 10),
                          child: DoctorCard(
                              doctorName: doctorList[index]["dataValues"]
                                  ["name"],
                              proTitle: doctorList[index]["dataValues"]
                                  ["pro_title"],
                              languagesSPoken: doctorList[index]["dataValues"]
                                  ["languages_spoken"],
                              rate: doctorList[index]["dataValues"]["rate"],
                              medSpecialty: doctorList[index]["dataValues"]
                                  ["med_specialty"],
                              hospitalName: doctorList[index]["dataValues"]
                                  ["hospitalName"],
                              timeSlots: doctorList[index]["time_slots"]));
                    }),
                  ),
          ],
        ),
      ),
    );
  }
}
