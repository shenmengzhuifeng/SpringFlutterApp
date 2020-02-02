import 'package:flutter/material.dart';

import 'pages/login/login_page.dart';

class Router {
  static const homePage = 'app://';
  static const detailPage = 'app://DetailPage';
  static const loginPage = 'app://LoginPage';

  Widget _getPage(String url, dynamic params) {
    if (url.startsWith('https://') || url.startsWith('http://')) {
      return null;
    } else {
      switch (url) {
        case loginPage:
          return new LoginPage();
        case detailPage:
        case homePage:
      }
    }
    return null;
  }

//
//  void push(BuildContext context, String url, dynamic params) {
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return _getPage(url, params);
//    }));
//  }

  Router.pushNoParams(BuildContext context, String url) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return _getPage(url, null);
    }));
  }

  Router.push(BuildContext context, String url, dynamic params) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return _getPage(url, params);
    }));
  }
}
