import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.blue,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('flutter_basics'),
      ),
      body: Container(

        height: 300,
        child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Column(
                  
                ),
              ]
              children: [Text('A',style: TextStyle(fontSize: 25),),
                Text('B',style: TextStyle(fontSize: 25),),
                Text('C',style: TextStyle(fontSize: 25),),
                Text('D',style: TextStyle(fontSize: 25),),
                Text('E',style: TextStyle(fontSize: 25),),],),
            Text('A',style: TextStyle(fontSize: 25),),
            Text('B',style: TextStyle(fontSize: 25),),
            Text('C',style: TextStyle(fontSize: 25),),
            Text('D',style: TextStyle(fontSize: 25),),
            Text('E',style: TextStyle(fontSize: 25),),
            TextButton(child: Text('Click Here '),onPressed: (){
              print('The button is pressed');
            },)
          ],
        ),
      )
    );
  }
}
