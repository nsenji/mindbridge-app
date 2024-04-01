import 'package:flutter/material.dart';
import 'package:medbridge/src/common_widgets/text_field.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/doctors/presentation/doctor_card.dart';

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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              toolbarHeight: 60,
              scrolledUnderElevation: 0,
              automaticallyImplyLeading: false,
              title: TextCustom(
                text: "Select Preferred Therapist",
                isBold: true,
                size: 18,
                color: Color.fromARGB(255, 8, 33, 99),
              ),
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
