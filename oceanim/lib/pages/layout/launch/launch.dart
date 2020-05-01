import 'dart:io';

import 'package:flutter/material.dart';
import 'package:oceanim/router/page_routes.dart';
import 'package:path_provider/path_provider.dart';

class LaunchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LaunchPageState();
  }
}

class _LaunchPageState extends State<LaunchPage> {
  double opacityLevel;
  bool islogininfo;
  @override
  void initState() {
    super.initState();
    opacityLevel = 0;
     
    _getLoginInformation().then((onValue){
      islogininfo = onValue.existsSync();
      print(islogininfo);
      Future<String> content = onValue.readAsString();
      print(content);
    });

    ;
    Future.delayed(Duration(seconds: 3), () {
      islogininfo ? Navigator.pushNamedAndRemoveUntil(
          context, PageName.bottom_tab.toString(), (route) => false) :Navigator.pushNamedAndRemoveUntil(
          context, PageName.login.toString(), (route) => false)  ;
    });

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacityLevel = 1.0;
      });
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
          'assets/images/3.jpg',
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
                    "OCEAN IM",
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

Future<File> _getLoginInformation() async{
  String dir = (await getApplicationSupportDirectory()).path;
  return File('$dir/LoginInformation');
}