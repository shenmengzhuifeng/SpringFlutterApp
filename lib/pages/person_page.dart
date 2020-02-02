import 'package:flutter/material.dart';

import '../router.dart';

class PersonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PersonPageState();
  }
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new FlatButton(
            onPressed: () => Router.pushNoParams(context, Router.loginPage),
            color: Colors.blue,
            child: new Text("登录")),
      ),
    );
  }
}
