import 'package:flutter/material.dart';
import 'package:flutter_app/utils/constant.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("home page"),
            expandedHeight: 300.0,
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
              background: Image.asset(Constant.ASSET_IMG + 'my_baby_smile.jpeg',
                  fit: BoxFit.cover),
            ),
          ),
          SliverFillRemaining(
            child: Center(
                child: Text('FillRemaining', style: TextStyle(fontSize: 30.0))),
          ),
        ],
      ),
    );
  }
}
