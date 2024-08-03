import 'package:flutter/material.dart';

void main() {
  runApp(new application());
  }
class application extends StatefulWidget {
  const application({super.key});

  @override
  State<application> createState() => _applicationState();
}

class _applicationState extends State<application> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'StateFuLL Widget',
      home: new Scaffold(
        body: new Center(
          child: new ElevatedButton(onPressed: null, child: new Text('Raised'), color : Colors.green),
        ),
      ),
    );
  }
}




