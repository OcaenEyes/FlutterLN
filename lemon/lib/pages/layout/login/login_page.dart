import 'package:flutter/material.dart';
import 'package:lemon/router/page_builder.dart';
import 'package:lemon/router/page_routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("登录"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("go"),
            onPressed: () {
              Navigator.pushNamed(context, PageName.home_page.toString());
            },
          ),
        ));
  }
}
