import 'package:flutter/material.dart';
import 'package:ui_understanding/home_screen.dart';
class ScreenThree extends StatefulWidget {
  static const String id = "screen_three";
  const ScreenThree({super.key});
  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}
class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Third Screen")),
        backgroundColor: Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed:(){
                Navigator.pop(context);
              },
              child: Text("Screen 1"),
            ),
          ),
        ],
      ),
    );
  }
}
