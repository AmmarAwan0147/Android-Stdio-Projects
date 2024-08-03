import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  static const String id = 'screen_four';
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Skills Detail")),
        backgroundColor: Colors.teal,
      ),
      body: Column(
//mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Dart projects",
            style: TextStyle(fontSize: 30),
          )),
          ListTile(
            leading: Icon(Icons.how_to_vote),
            title: Text(
              "Voting App",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(Icons.library_add_sharp),
            title: Text(
              "Library Mannagment System",
              style: TextStyle(color: Colors.blue, fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(Icons.quiz_outlined),
            title: Text(
              "Quiz App",
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
              child: Text(
            "Flutter projects",
            style: TextStyle(fontSize: 30),
          )),
          ListTile(
            leading: Icon(Icons.call_outlined),
            title: Text(
              "Whats App Ui",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(Icons.local_activity),
            title: Text(
              "Lottery App",
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(Icons.portrait_rounded),
            title: Text(
              "Portfolio App",
              style: TextStyle(color: Colors.yellow, fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "GO BACK!",
              style: TextStyle(backgroundColor: Colors.blue, fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
