import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        
        centerTitle: true,
        title: Text(
          'Awosem',
          style: TextStyle(
              fontSize: 50,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.w800),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Asif Taj"),
                Icon(Icons.ac_unit),
                Text("Ammar"),
              ],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Center(
                child: Text("Container 1"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
              child: Center(
                child: Text("Container 2"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Center(
                child: Text("Container 3"),
              ),
            ),
          ],
        ),
      ),
    ));
    ;
  }
}
