import 'package:flutter/material.dart';

class AddPageWidget extends StatefulWidget {
  @override
  _AddPageWidgetState createState() => _AddPageWidgetState();

}

class _AddPageWidgetState extends State<AddPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('发布',style: TextStyle(color: Colors.black),),
      ),
    );

  }
}