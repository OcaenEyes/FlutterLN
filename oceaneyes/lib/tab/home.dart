import 'package:flutter/material.dart';
import 'package:oceaneyes/home/homePage.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();

}

class _HomeWidgetState extends State<HomeWidget> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageWidget(),
    );
  }

} 