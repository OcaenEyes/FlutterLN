import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class MyPagewidget extends StatefulWidget {
  @override
  _MyPageWidgetState createState() => _MyPageWidgetState();

}

class _MyPageWidgetState extends State<MyPagewidget> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: new ListView(

      )

    );
  }
}

Future getHttp()async {
  try{
    Response response;
    Dio dio = new Dio();
    response  = await dio.get("http://www.baidu.com");
    print(response);
    return response.data;

  }
  catch(e){
    return debugPrint(e+"异常了");
  }
}