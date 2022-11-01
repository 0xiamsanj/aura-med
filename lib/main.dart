import 'package:auramed/export.dart';
import 'package:auramed/view/consultDoctor.dart';
import 'package:auramed/view/homeScreen.dart';
import 'package:auramed/view/upcomingDoses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "AuraMed",
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
    );
  }
}
