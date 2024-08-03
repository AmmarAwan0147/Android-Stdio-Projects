import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/screen_four.dart';
import 'package:portfolio_app/screen_three.dart';
import 'package:portfolio_app/screen_two.dart';
class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Center(child: Text("Portfolio App")),
          ),
          drawer: Drawer(
            child: Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                          backgroundImage: AssetImage("assets/Mypic.jpg")),
                      accountName: Text("Ammar Akram Awan"),
                      accountEmail: Text("ammarakram0147@gmail.com")),
                  ListTile(leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: (){
                      Navigator.pushNamed(context, ScreenTwo.id);
                    },),
                  ListTile(leading: Icon(Icons.school_rounded),
                    title: Text("Eaducation Details"),
                    onTap: (){
                      Navigator.pushNamed(context, ScreenThree.id);
                    },),
                  ListTile(leading: Icon(Icons.work_history),
                    title: Text("Projects Details"),
                    onTap: (){
                      Navigator.pushNamed(context, ScreenFour.id);
                    },)

                ],
              ),
            ),
          ),
          body: Column(
            children: [
              SizedBox(height: 100),
              Center(
                  child: Text("Flutter Developer",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue))),
              SizedBox(height: 30,),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/Mypic.jpg'),),
              Text("Ammar Awan",style: TextStyle(fontSize: 25),),
              ListTile(
                leading : Icon(Icons.email),
                title:  Text("ammarakram0147@gmail.com"),
              ),
              ListTile(
                leading : Icon(Icons.phone),
                title:  Text("03036780147"),
              ), ListTile(
                leading : Icon(Icons.location_on_sharp),
                title:  Text("Multan , Pakistan"),
              ),
              ListTile(
                leading : Icon(Icons.email),
                title:  Text("ammarakram0147@gmail.com"),
              ),
              SizedBox(height: 40,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));
              },
                child:Text("Eaducation Details",style: TextStyle(fontSize: 25,backgroundColor: Colors.amberAccent),),)
            ],
          ),
      );
  }
}
