import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medbridge/src/features/video_call/presentation/join_screen.dart';

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
      title: 'VideoSDK QuickStart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JoinScreen(),
    );
  }
}