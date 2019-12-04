import 'package:flutter/material.dart';
import 'package:oceaneyes/home/homePage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();

}

class _HomeWidgetState extends State<HomeWidget> {
  @override

  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750,height: 1334,allowFontScaling: true)..init(context);
    return Scaffold(
      body: Container(
        child: HomePageWidget(),
        width: ScreenUtil.getInstance().setWidth(750),
        height: ScreenUtil.getInstance().setHeight(1334),
        ),
    );
  }

} 