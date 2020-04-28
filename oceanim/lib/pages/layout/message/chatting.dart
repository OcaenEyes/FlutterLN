import 'package:flutter/material.dart';
import 'package:oceanim/router/page_builder.dart';

class ChattingPage extends StatefulWidget {
  final Bundle bundle;
  ChattingPage(this.bundle);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChattingPageState();
  }
}

class _ChattingPageState extends State<ChattingPage> {
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bundle.getString("username")),
      ),
    );
  }
}
