import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medbridge/src/features/history/data/history_repository.dart';
import 'package:medbridge/src/features/history/presentation/receipt.dart';
import 'package:medbridge/src/features/history/presentation/receipt_shimmer.dart';
import 'package:medbridge/src/features/history/presentation/result_shimmer_screen.dart';
import 'package:medbridge/src/features/profile/presentation/current_user_controller.dart';

class Receipts extends ConsumerStatefulWidget {
  const Receipts({super.key});

  @override
  ConsumerState<Receipts> createState() => _ReceiptsState();
}

class _ReceiptsState extends ConsumerState<Receipts> {
  @override
  Widget build(BuildContext context) {
    Map currentUserState = ref.watch(currentUserControllerProvider);
    var getPayments =
        ref.watch(getPatmentsListFutureProvider(currentUserState["patientID"]));

    return getPayments.when(data: (newData) {
      return (CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate(childCount: newData.length,
                  (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Receipt(
                  time: newData[index]["time"],
                  date: newData[index]["date"],
                  checkmark: true,
                  doctorName: newData[index]["doctor"]["name"],
                  rate: newData[index]["amount"]),
            );
          })),
        ],
      ));
    }, loading: () {
      return CustomScrollView(
        slivers: [
          SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: 3, (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                  child: ReceiptShimmer());
            }),
          )
        ],
      );
    }, error: (error, stackTrace) {
      return Container(
          child: Center(
        child: Text(error.toString()),
      ));
    });
  }
}
