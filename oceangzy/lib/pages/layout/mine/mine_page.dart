import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oceangzy/models/userInfoModel.dart';
import 'package:oceangzy/util/adress.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  UserInfo _userInfo;
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

  _getConf() async {
    var userinfo;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    userinfo = sharedPreferences.getString("userInfo");
    UserInfo userInfo = UserInfo.fromJson(json.decode(userinfo));
    print(userInfo.avatarUrl.toString());
    setState(() {
      _userInfo = userInfo;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 180,
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).padding.top, 8, 20, 12),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.black),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: _userInfo == null
                                  ? AssetImage("assets/images/1.jpg")
                                  : AssetImage(_userInfo.avatarUrl.toString()),
                              fit: BoxFit.cover),
                        )),
                    Container(
                      child: Text(
                        _userInfo == null ? "" : _userInfo.nickName.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
