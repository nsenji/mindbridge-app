import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medbridge/src/common_widgets/sizedbox_template.dart';
import 'package:medbridge/src/features/diagnosis/presentation/diagnosis_controller_provider.dart';

class Results extends ConsumerStatefulWidget {
  const Results({super.key});

  @override
  ConsumerState<Results> createState() => _ResultsState();
}

class _ResultsState extends ConsumerState<Results> {
  @override
  Widget build(BuildContext context) {
    var currentDiagnosisState = ref.watch(diagnosisControllerProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentDiagnosisState.toJson().toString()),
            H(h: 100),
            Text(currentDiagnosisState.getProgress().toString()),
          ],
        ),
      ),
    );
  }
}
