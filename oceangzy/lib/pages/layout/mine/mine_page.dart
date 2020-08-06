import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oceangzy/models/userInfoModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getConf();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("我的"),
      ),
    );
  }
}

_getConf() async {
  var userinfo;
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  userinfo = sharedPreferences.getString("userInfo");
  UserInfo userInfo = UserInfo.fromJson(json.decode(userinfo));
  print(userInfo.avatarUrl.toString());
}
