import 'package:flutter/material.dart';
import 'package:oceanim/router/page_builder.dart';

class UserDetialPage extends StatefulWidget {
  final Bundle bundle;
  UserDetialPage(this.bundle);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserDetialPageState();
  }
}

class _UserDetialPageState extends State<UserDetialPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.bundle.getMap("userinfo")["nickName"]
        ),
      ),
    );
  }
}
