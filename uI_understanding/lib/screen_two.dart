import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_understanding/home_screen.dart';
import 'package:ui_understanding/screen_three.dart';
class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Second Screen")),
        backgroundColor: Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Expanded(
          child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index){
           return ListTile(leading: CircleAvatar(
               backgroundImage: NetworkImage(
                   "https://images.pexels.com/photos/6877442/pexels-photo-6877442.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
            title: Text("Ammar Awan"),
            subtitle: Text("I am working UI"),
            trailing: Text("3.15 am"),
            onTap:() {
           Navigator.pushNamed(context, ScreenThree.id);
            },);
          }),
        )
        ],
      ),
    );
  }
}
