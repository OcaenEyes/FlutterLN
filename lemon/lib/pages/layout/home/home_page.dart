import 'package:flutter/material.dart';
import 'package:lemon/router/page_builder.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  get bundle => this.bundle;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("首页"),),
      body: Center(child: Text("首页"),)
    );
  }
  
}