import 'package:flutter/material.dart';
import 'package:portfolio_app/screen_four.dart';
class ScreenThree extends StatefulWidget {
  static const String id = 'screen_three';
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,
      title: Text("Eaducation Details"),),
      body: Column(
          children: [
            ListTile(
            leading: Icon(Icons.school_rounded),
            title: Text("Nishat School Multan"),
            subtitle: Text("Metric , Grade / A+"),
             trailing: Text("March 2021"),
          ),
            ListTile(
              leading: Icon(Icons.school_rounded),
              title: Text("Cadet College Jhelum"),
              subtitle: Text("FSC / Grade B+"),
              trailing: Text("June 2023"),
            ),
            ListTile(
              leading: Icon(Icons.school_rounded),
              title: Text("NFC-IET University"),
              subtitle: Text("Software Engeerning"),
              trailing: Text("2027"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFour()));
              } ,
              child: Text("Projects Details",style: TextStyle(backgroundColor: Colors.yellow,fontSize: 30),),
            )
          ]
        ),

    );
  }
}
