import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }

  // _InformationPageState createState<>  => _InformationPageState();
}

class _HomePageState extends State<HomePage> {
  String _token = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getConf();
  }

  _getConf() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString("access_token");
    print("写入文件测试1");
    print(token);
    _token = token;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Text(
            "你好",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
