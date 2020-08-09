import 'package:flutter/material.dart';
import 'package:oceangzy/pages/layout/introduce/introduce_page.dart';
import 'package:oceangzy/pages/layout/launch/launch_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  bool _introduceShow =true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getConf();
    print("zuixin de ");
    print(_introduceShow);
  }

  _getConf() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    print("APP启动");
    print(sharedPreferences.containsKey('introduce_show'));
    setState(() {
      _introduceShow = sharedPreferences.containsKey('introduce_show');
    });
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
      body: _introduceShow ? LaunchPage() : IntroducePage() ,
//        body:  IntroducePage()
    );
  }
}
