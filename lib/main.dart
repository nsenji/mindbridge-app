import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medbridge/src/features/diagnosis/presentation/results.dart';
import 'package:medbridge/src/features/landingPage/landing_page.dart';
import 'package:medbridge/src/features/navbar/navbar.dart';
import 'package:medbridge/src/mockTests/layout_tests.dart';

import 'package:medbridge/src/utils/custom_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    // statusBarColor: Colors.pink, // status bar color
  ));
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MindBridge',
      theme: ThemeData(
          primaryColor: Color.fromARGB(255, 8, 33, 99),
          fontFamily: "Roboto",
          textTheme: textThemelight(context)),
      home: LayoutTest(),
    );
  }
}

