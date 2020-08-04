import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oceangzy/router/page_routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child:Text("登录") ,
          onPressed: () {
          Navigator.pushNamed(context, PageName.d_auth.toString());
        }),
      ),
    );
  }
}
