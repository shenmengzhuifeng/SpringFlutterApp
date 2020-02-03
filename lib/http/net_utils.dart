import 'dart:async';

import 'package:dio/dio.dart';


var dio = new Dio();

class NetUtils {
  
  static Future get(String url,{Map<String,dynamic> params}) async{
     var response = await dio.get(url, queryParameters: params);
    return  response.data;
  }

  static Future post(String url,Map<String,dynamic> params) async{
    print("post,url==" + url);
    var response = await dio.post(url, queryParameters: params);
    print("post,response==" + response.toString());
    return response;
  }
}