import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:oceangzy/router/page_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DiscoveryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiscoveryPageState();
  }
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  String _token = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          child: Text("登录"),
          onPressed: () {
            Navigator.pushNamed(context, PageName.login_page.toString());
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getConf();
  }

  _getConf() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString("access_token");
    print("写入文件测试2");
    print(token);
    _token = token;
  }
}
