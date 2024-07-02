import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_three/section3Content.dart';
import 'package:responsive_project/view/dashbordView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dashBordView(),
    );
  }
}
