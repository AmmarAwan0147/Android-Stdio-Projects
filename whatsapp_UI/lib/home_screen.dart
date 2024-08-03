import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("WhatsApp",style: TextStyle(color: Colors.white),),
        bottom: TabBar(
          tabs: [
            Tab(
             child:  Icon(Icons.camera_alt),),
            Tab(child: Text("Chats")),
            
            Tab(child: Text("Status")),
            
            Tab(child: Text("Call")),
          ],
        ),
        actions: [
          Icon(Icons.search),
        SizedBox(width: 10),
         PopupMenuButton(
             icon: Icon(Icons.more_vert_rounded),
             itemBuilder: (context,) => const [
               PopupMenuItem(
                   value:  '1',
                   child: Text("New Group")),
               PopupMenuItem(
                   value:  '2',
                   child: Text("Settings")),
               PopupMenuItem(
                   value:  '3',
                   child: Text("Logout"))
             ]),
          SizedBox(width: 10),

        ],
      ),
      body: TabBarView(children: [Text("Camera"),
        ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage("https://static1.moviewebimages.com/wordpress/wp-content/uploads/2024/03/john-wick-keanu-1.jpg"),),
            title: Text("Jhon Wick"),
          subtitle: Text("Where is my Dog"),
          trailing: Text("6:39 AM"),);
        }),
        ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index){
              return ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green,
                      width: 3)
                    ),
                    child: CircleAvatar(backgroundImage: NetworkImage("https://static1.moviewebimages.com/wordpress/wp-content/uploads/2024/03/john-wick-keanu-1.jpg"),)),
                title: Text("Jhon Wick"),
                subtitle: Text("6:39 AM"),
                );
            }),
        ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage("https://static1.moviewebimages.com/wordpress/wp-content/uploads/2024/03/john-wick-keanu-1.jpg"),),
                title: Text("Jhon Wick"),
                subtitle: Text(index / 2 == 0 ? "call time is 12:10":"you missed the call"),
                trailing: Icon(index / 2 == 0 ? Icons.call : Icons.video_call));
            }),]),
    ));

  }
}
