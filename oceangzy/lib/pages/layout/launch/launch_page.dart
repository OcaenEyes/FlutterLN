import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oceangzy/router/page_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LaunchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LaunchPageState();
  }
}

class _LaunchPageState extends State<LaunchPage> {
  double opacityLevel;
  var userInfo;

  _getconf() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // sharedPreferences.remove("userInfo");
    userInfo = sharedPreferences.getString("userInfo");
    print("打印launchpage");
    print(userInfo);
  }

  @override
  void initState() {
    super.initState();
    opacityLevel = 0;
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacityLevel = 1.0;
      });
    });
    // userInfo = readUserInfoJson();
    _getconf();

    Future.delayed(Duration(seconds: 3), () {
      userInfo != null
          ? Navigator.pushNamedAndRemoveUntil(
              context, PageName.bottom_tab.toString(), (route) => false)
          : Navigator.pushNamedAndRemoveUntil(
              context, PageName.login_page.toString(), (route) => false);
      // Navigator.pushNamedAndRemoveUntil(
      //         context, PageName.bottom_tab.toString(), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/2.jpg',
              fit: BoxFit.cover,
            )),
        Positioned(
          bottom: 60,
          left: 20,
          child: AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: opacityLevel,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  child: Text(
                    "OCEAN GZY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        decoration: TextDecoration.none),
                  ),
                  padding: EdgeInsets.only(top: 0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    "GOOD DAY~",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.2,
                        decoration: TextDecoration.none),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
