import 'package:flutter/material.dart';
import 'package:flutter_app/utils/constant.dart';

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
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("我的"),
            leading: new IconButton(
              icon: Icon(Icons.scanner),
              onPressed: () {},
            ),
            actions: <Widget>[
              new IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  print("添加");
                },
              ),
              new IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {
                  print("更多");
                },
              ),
            ],
            expandedHeight: 200.0,
            floating: true,
            // 强制显示阴影
            forceElevated: true,
            // 设置该属性，当有下滑手势的时候，就会显示 AppBar
//            floating: true,
            pinned: true,
            // 通过这个属性设置 AppBar 的背景
            flexibleSpace: FlexibleSpaceBar(
//          title: Text('Expanded Title'),
              // 背景折叠动画
              collapseMode: CollapseMode.parallax,
              background: new Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: new InkWell(
                      onTap: () =>
                          Router.pushNoParams(context, Router.loginPage),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage(
                              Constant.ASSET_IMG +
                                  'ic_not_log_user_default.png',
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: new Text(
                              "立即登录",
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          )
                        ],
                      ))),
            ),
          ),
          SliverFillRemaining(
            child: Center(
                child: Text('Content', style: TextStyle(fontSize: 30.0))),
          ),
        ],
      ),
    );
  }
}
