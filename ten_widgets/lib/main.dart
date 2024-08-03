import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text("Scrolling Widgets")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context,index){
                  return const   ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.blue,
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/2076596/pexels-photo-2076596.jpeg?auto=compress&cs=tinysrgb&w=400"),),
                    title: Text("Ammar Awan"),
                    subtitle: Text("Software Engineer"),
                    trailing: Text("3:35 am"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Circular Avitar or Divider widget
// SizedBox(
// height: 100,
// ),
// Divider(
// color: Colors.black,
// thickness: 2,
// ),
// SizedBox(
// height: 100,
// child: VerticalDivider(
// color: Colors.black,
// thickness: .5,
// ),
// ),
// Divider(
// color: Colors.black,
// thickness: 2,
// ),
// Center(
// child: CircleAvatar(
// radius: 100,
// backgroundColor: Colors.black,
// backgroundImage: NetworkImage(
// "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=400"),
// ),
// ),
//
//







// Rich Text widget

// Center(
// child: RichText(
// text: TextSpan(
// text: "Donot have an account",
// style: Theme.of(context).textTheme.bodyText1
// ,
// children: [
// TextSpan(
// text: 'Sign up',
// style:
// TextStyle(decoration: TextDecoration.underline, fontSize: 24,fontWeight: FontWeight.bold)),
// ])),
// ),
//



// Text form field  Widget
//
// Padding(
// padding: const EdgeInsets.all(20.0),
// child: TextFormField(
// keyboardType: TextInputType.emailAddress,
// decoration: InputDecoration(
// filled: true,
// fillColor: Colors.grey.withOpacity(.2),
// hintText: 'Email',
// labelText: 'Email',
// prefixIcon: Icon(Icons.email),
// labelStyle: TextStyle(fontSize: 25,color: Colors.blue),
// hintStyle: TextStyle(fontSize: 15,color: Colors.yellow),
// enabledBorder: OutlineInputBorder(),
// focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 2),borderRadius: BorderRadius.circular(15)),
// ),
// onChanged: (value){
// print(value);
// },),
// ),