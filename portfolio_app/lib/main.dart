import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/screen_two.dart';
import 'package:portfolio_app/screen_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
//static const String id = "FirstScreen";
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenTwo(),
    );

  }
}
