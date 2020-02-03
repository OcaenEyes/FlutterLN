import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MessagePageState();
  }
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("消息"),
      ),
      body: Center(
        child: Text("消息"),
      ),
    );
  }
}
