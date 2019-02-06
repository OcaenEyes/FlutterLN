import 'package:flutter/material.dart';

class DiscoverPageWidget extends StatefulWidget {
  @override
  _DiscoverPageWidgetState createState() => _DiscoverPageWidgetState();

}

class _DiscoverPageWidgetState extends State<DiscoverPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('发现',style: TextStyle(color: Colors.black),),
      ),
    );

  }
}