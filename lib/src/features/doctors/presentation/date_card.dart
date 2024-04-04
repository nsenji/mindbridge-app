// import 'package:flutter/material.dart';
// import 'package:medbridge/src/common_widgets/text_template.dart';

// class Datecard extends StatefulWidget {
//   final double index;
//   const Datecard({super.key, this.index = 0});

//   @override
//   State<Datecard> createState() => _DatecardState();
// }

// class _DatecardState extends State<Datecard> {
//   int? _value;

//   @override
//   Widget build(BuildContext context) {
//     return ChoiceChip(
//       backgroundColor: Color.fromARGB(255, 223, 230, 248),
//       labelStyle: TextStyle(
//           color:
//               _value == widget.index ? Colors.white : Color.fromARGB(255, 8, 33, 99),
//           fontWeight: FontWeight.bold),
//       selectedColor: Color.fromARGB(255, 8, 33, 99),
//       disabledColor: Color.fromARGB(255, 223, 230, 248),
//       labelPadding: EdgeInsets.fromLTRB(6, 5, 6, 5),
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadiusDirectional.circular(50)),
//       side: BorderSide(color: Color.fromARGB(255, 149, 172, 230)),
//       showCheckmark: false,
//       label: ConstrainedBox(
//         constraints: BoxConstraints(minWidth: 40),
//         child: Text(
//           textAlign: TextAlign.center,
//           widget.options[index].toUpperCase(),
//           style: TextStyle(fontSize: 14),
//         ),
//       ),
//       selected: _value == index,
//       onSelected: (bool selected) {
//         setState(() {
//           _value = selected ? index : null;
//           ref.read(diagnosisControllerProvider.notifier).updateDiagnosis(
//               selected ? widget.options[_value!] : "", widget.symptom);
//         });
//       },
//     );
//   }
// }
