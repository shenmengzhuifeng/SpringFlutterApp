import 'package:flutter/material.dart';

class MailContackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MailContackPageState();
  }
}

class _MailContackPageState extends State<MailContackPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
