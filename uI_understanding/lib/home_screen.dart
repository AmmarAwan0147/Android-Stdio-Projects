import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_understanding/screen_three.dart';
import 'package:ui_understanding/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("First Screen")),
        backgroundColor: Color(0xff764abc),
      ),
      drawer: Drawer(
        child: Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/6877442/pexels-photo-6877442.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                  accountName: Text("Ammar Akram Awan"),
                  accountEmail: Text("ammarakram0147@gmail.com")),
              ListTile(leading: Icon(Icons.home),
              title: Text("Page 1"),
              onTap: (){
              Navigator.pushNamed(context, ScreenTwo.id);
              },),
              ListTile(leading: Icon(Icons.calculate),
                title: Text("Page 2"),
                onTap: (){
                  Navigator.pushNamed(context, ScreenThree.id);
                },)

            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
              child: Text("Screen 2"),
            ),
          ),
        ],
      ),
    );
  }
}
