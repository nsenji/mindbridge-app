import 'package:flutter/material.dart';
import 'package:medbridge/src/features/doctors/presentation/summary_card.dart';

class Receipts extends StatefulWidget {
  const Receipts({super.key});

  @override
  State<Receipts> createState() => _ReceiptsState();
}

class _ReceiptsState extends State<Receipts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: (CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SummaryCard(
              rate: 45000,
              doctorName: "Dr N/A",
              checkmark: true,
            ),
          )
        ],
      )),
    );
  }
}
