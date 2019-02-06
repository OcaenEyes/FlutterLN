import 'package:flutter/material.dart';

class MessagePageWidget extends StatefulWidget {
  @override
  _MessagePageWidgetState createState() => _MessagePageWidgetState();

}

class _MessagePageWidgetState extends State<MessagePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('消息',style: TextStyle(color: Colors.black),),
      ),
    );

  }
}