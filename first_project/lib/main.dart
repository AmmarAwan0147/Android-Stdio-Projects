import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.lightBlue.shade700,
    appBar: AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
      title: Text("Ammar"),
    ),
    body: const Center(
        child: Image(
      image: AssetImage('assets/Screenshoot.jpg'),
    ),),
  )));
}
