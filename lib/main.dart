import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medbridge/src/features/video_call/presentation/join_screen.dart';
import 'package:medbridge/src/utils/constants.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    // statusBarColor: Colors.pink, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medbridge',
      theme: ThemeData(
        primaryColor: Constants.primaryColor,
        fontFamily: Constants.appFont.fontFamily

      ),
      home: JoinScreen(),
    );
  }
}