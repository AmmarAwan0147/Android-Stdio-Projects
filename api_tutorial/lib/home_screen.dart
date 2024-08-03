import 'dart:convert';
import 'package:flutter/cupertino.dart';
import "package:http/http.dart" as http;
import 'package:api_tutorial/PosteModel.dart';
import 'package:flutter/material.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List<PosteModel> PostList = [];

  Future<List<PosteModel>> getPostApi ()async{
final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
var data = jsonDecode(response.body.toString());
if(response.statusCode == 200) {
  PostList.clear();
 for(Map i in data) {
PostList.add(PosteModel.fromJson(i));
 }
 return PostList;
} else {
  return PostList;
} }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Api'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostApi(),
              builder: (context , snapshot) {
                if(!snapshot.hasData){
                  return Text('Loading...');
                }
                else{
                  return ListView.builder(
                      itemCount: PostList.length,
                      itemBuilder: (context, index){
                       return Text(index.toString());
                      });
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
