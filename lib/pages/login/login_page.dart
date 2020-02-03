import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  String _phoneNum = '';

  String _verifyCode = '';

  int _seconds = 0;

  String _verifyStr = '获取验证码';

  Timer _timer;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return new ListView(
      children: <Widget>[
        _buildHeader(),
        _buildTitle(),
        _buildPhoneEdit(),
        _buildVerifyCodeEdit(),
        _buildLoginButton(),
      ],
    );
  }

  Widget _buildHeader() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, //子组件的排列方式为主轴两端对齐
      children: <Widget>[
        new InkWell(
          child: new Padding(
              padding: EdgeInsets.all(12.0),
              child: new Icon(
                Icons.clear,
                size: 26.0,
                color: Colors.grey[700],
              )),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        new InkWell(
          child: new Padding(
              padding: const EdgeInsets.all(12.0),
              child: new Text(
                "密码登录",
                style: new TextStyle(fontSize: 16.0, color: Colors.grey[700]),
              )),
          onTap: () {
//            showTips();
          },
        ),
      ],
    );
  }

  Widget _buildTitle() {
    return new Container(
      margin: const EdgeInsets.only(top: 40.0, bottom: 20.0),
      alignment: Alignment.center,
      child: new Text(
        "登录神剑网络，享受更多功能",
        style: new TextStyle(color: Colors.grey[700], fontSize: 24.0),
      ),
    );
  }

  Widget _buildPhoneEdit() {
    return new Container(
      margin: const EdgeInsets.only(left: 40.0, right: 40.0),
      child: new TextField(
        onChanged: (str) => _phoneNum = str,
        style: TextStyle(fontSize: 16.0, color: Colors.black54),
        //输入文本的样式
        decoration: new InputDecoration(
            labelText: '请输入手机号', labelStyle: new TextStyle(color: Colors.blue)),
        maxLines: 1,
        maxLength: 11,
        //键盘展示为号码
        keyboardType: TextInputType.phone,
        //只能输入数字
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }

  Widget _buildVerifyCodeEdit() {
    Widget verifyEdit = new TextField(
      onChanged: (str) => _verifyCode = str,
      style: TextStyle(fontSize: 16.0, color: Colors.black54),
      //输入文本的样式
      decoration: new InputDecoration(
          labelText: '请输入短信验证码', labelStyle: new TextStyle(color: Colors.blue)),
      maxLines: 1,
      maxLength: 6,
      //键盘展示为号码
      keyboardType: TextInputType.number,
      //只能输入数字
      inputFormatters: <TextInputFormatter>[
        WhitelistingTextInputFormatter.digitsOnly,
      ],
    );

    Widget sendVerifyCodeBtn = new InkWell(
      onTap: (_seconds == 0)
          ? () {
        if(_phoneNum != null){
          _startTimer();
        }else{
          Fluttertoast.showToast(
              msg: "This is Center Short Toast",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIos: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }
      }
          : null,
      child: new Container(
        alignment: Alignment.center,
        width: 100.0,
        height: 36.0,
        decoration: new BoxDecoration(
          border: new Border.all(
            width: 1.0,
            color: Colors.blue,
          ),
        ),
        child: new Text(
          _verifyStr,
          style: new TextStyle(fontSize: 14.0),
        ),
      ),
    );

    return new Container(
      padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
      child: new Stack(
        children: <Widget>[
          verifyEdit,
          new Positioned(
            right: 0,
            top: 10,
            child: sendVerifyCodeBtn,
          ),
        ],
      ),
    );
  }

  void _startTimer() {
    _seconds = 60;
    _timer = new Timer.periodic(new Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        _cancelTimer();
        return;
      }

      _seconds--;
      _verifyStr = '$_seconds(s)';
      setState(() {});
      if (_seconds == 0) {
        _verifyStr = '重新发送';
      }
    });
  }

  _cancelTimer() {
    _timer?.cancel();
  }

  Widget _buildLoginButton() {

  }
}
