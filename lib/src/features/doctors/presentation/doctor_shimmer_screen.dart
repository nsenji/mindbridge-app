import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medbridge/src/common_widgets/circle_avatar.dart';
import 'package:medbridge/src/common_widgets/main_button.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/common_widgets/text_template.dart';
import 'package:medbridge/src/features/doctors/presentation/book_appointment.dart';
import 'package:medbridge/src/features/doctors/presentation/date_of_selected_doctor_controller.dart';
import 'package:shimmer/shimmer.dart';

class DoctorCardShimmer extends ConsumerStatefulWidget {
  const DoctorCardShimmer({
    super.key,
  });

  @override
  ConsumerState<DoctorCardShimmer> createState() => _DoctorCardState();
}

class _DoctorCardState extends ConsumerState<DoctorCardShimmer> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: Color.fromARGB(255, 116, 124, 146), width: 0.5)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Shimmer.fromColors(
                   baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 50,
                  ),
                ),
                W(w: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                       baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                      child: Container(
                        height: 10,
                        width: 150,
                        color: Colors.grey,
                      ),
                    ),
                    H(h: 10),
                   Shimmer.fromColors(
                       baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                      child: Container(
                        height: 10,
                        width: 150,
                        color: Colors.grey,
                      ),
                    ),
                                        H(h: 10),

                   Shimmer.fromColors(
                       baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                      child: Container(
                        height: 10,
                        width: 150,
                        color: Colors.grey,
                      ),
                    ),                    H(h: 15),

              
                    Shimmer.fromColors(
                       baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                      child: Container(
                        height: 10,
                        width: 210,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
