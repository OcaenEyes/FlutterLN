import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:oceangzy/models/userInfoModel.dart';
import 'package:oceangzy/router/page_builder.dart';
import 'package:oceangzy/router/page_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode passNode = FocusNode();
  FocusNode phoneNode = FocusNode();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    phoneController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          bg(),
          login(context, phoneNode, passNode, phoneController, passController)
        ],
      ),
    );
  }
}

dynamic bg() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/3.jpg'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter)),
  );
}

Widget login(context, phoneNode, passNode, phoneController, passController) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(top: 240),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Padding(
      padding: EdgeInsets.fromLTRB(23, 18, 23, 23),
      child: ListView(
        children: <Widget>[
          loginTitle(),
          loginForm(
              context, phoneNode, passNode, phoneController, passController),
          forgetPass(),
          register(context)
        ],
      ),
    ),
  );
}

dynamic loginTitle() {
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: Text(
      "登录",
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    ),
  );
}

dynamic loginForm(
    context, phoneNode, passNode, phoneController, passController) {
  return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Theme(
              data: ThemeData(primaryColor: Colors.black),
              child: TextFormField(
                controller: phoneController,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                // maxLength: 11,
                // autofocus: true,
                focusNode: phoneNode,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '请输入手机号',
                    prefixIcon: Icon(Icons.person_outline),
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
          ),
          Theme(
            data: ThemeData(primaryColor: Colors.black),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              obscureText: true,
              controller: passController,
              focusNode: passNode,
              // maxLength: 11,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '请输入密码',
                  prefixIcon: Icon(Icons.lock_outline),
                  labelStyle: TextStyle(fontSize: 13)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            //   child: GestureDetector(
            //     onTap: () {
            //       print("GestureDetector 被电击");
            //       if (phoneController.text == '123456' &&
            //           passController.text == '123456') {
            //         Navigator.pushNamed(context, PageName.bottom_tab.toString(),
            //             arguments: null);
            //       }
            //     },
            //     child: Container(
            //       height: 56,
            //       width: 340,
            //       alignment: Alignment.center,
            //       child: Text(
            //         '登录',
            //         style: TextStyle(
            //           fontSize: 15,
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),

            //       decoration:
            //           BoxDecoration(
            //             color:Colors.black ,
            //             borderRadius: BorderRadius.circular(6)
            //             ),
            //     ),
            //   ),

            child: MaterialButton(
              onPressed: () async {
                print("被点击");
                Dio dio = new Dio();
                Response response;
                var userInfo;
                response = await dio.post("http://localhost:8080/login",
                    queryParameters: {
                      "password": passController.text,
                      "phone": phoneController.text
                    });

                if (response.data["code"] == "200") {
                  Map _map = response.data["userInfo"];
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();

                  sharedPreferences.setString(
                      "userInfo", json.encode(_map).toString());

                  print("login test test test");
                  print(sharedPreferences.getString("userInfo"));

                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    PageName.bottom_tab.toString(),
                    (route) => false,
                  );
                } else if (response.data["code"] == "101") {
                  Fluttertoast.showToast(
                      msg: "账号不存在", fontSize: 12, gravity: ToastGravity.TOP);
                  phoneController.text = "";
                  passController.text = "";
                  if (passNode.hasFocus) {
                    passNode.unfocus();
                    FocusScope.of(context).requestFocus(phoneNode);
                  }
                } else if (response.data["code"] == "102") {
                  Fluttertoast.showToast(
                      msg: "账号密码错误", fontSize: 12, gravity: ToastGravity.TOP);
                  phoneController.text = "";
                  passController.text = "";
                  if (passNode.hasFocus) {
                    passNode.unfocus();
                    FocusScope.of(context).requestFocus(phoneNode);
                  }
                } else {
                  Fluttertoast.showToast(
                      msg: "登录失败,请重试", fontSize: 12, gravity: ToastGravity.TOP);

                  phoneController.text = "";
                  passController.text = "";
                  if (passNode.hasFocus) {
                    passNode.unfocus();
                    FocusScope.of(context).requestFocus(phoneNode);
                  }
                }
              }, //since this is only a UI app
              child: Text(
                '登录',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.black,
              elevation: 0,
              minWidth: 400,
              height: 56,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
            ),
          )
        ],
      ));
}

dynamic register(context) {
  return Padding(
    padding: EdgeInsets.only(top: 20),
    child: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, PageName.register_page.toString(),
              arguments: null);
        },
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "没有账号？",
                style: TextStyle(color: Colors.black45, fontSize: 15)),
            TextSpan(
                text: "点击注册",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ]),
        ),
      ),
    ),
  );
}

dynamic forgetPass() {
  return Padding(
    padding: EdgeInsets.only(top: 30),
    child: Center(
      child: Text(
        "忘记密码？",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
