import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  FirstPageState createState() => new FirstPageState();

}
class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("first page"),
      ),
      body: new ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return new ListTile(title: new Text('title'),
          );
        },
      ),
    );
  }

}
