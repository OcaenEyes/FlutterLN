import 'package:flutter/material.dart';
import 'package:oceaneyes/my/myPage.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();

}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPagewidget(),
    );
  }
}