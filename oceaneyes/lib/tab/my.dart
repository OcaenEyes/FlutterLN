import 'package:flutter/material.dart';
import 'package:oceaneyes/my/myPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();

}

class _MyWidgetState extends State<MyWidget> {
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750,height: 1334,allowFontScaling: true)..init(context);
    return Scaffold(
      body:new Container(
        child: MyPagewidget(),
        width: ScreenUtil.getInstance().setWidth(750),
        height: ScreenUtil.getInstance().setHeight(1334),
      ) ,
    );
  }
}