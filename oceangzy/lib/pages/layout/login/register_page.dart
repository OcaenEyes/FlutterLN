import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:oceangzy/models/userInfoModel.dart';
import 'package:oceangzy/router/page_builder.dart';
import 'package:oceangzy/router/page_routes.dart';
import 'package:oceangzy/util/adress.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  FocusNode passNode = FocusNode();
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
          back(context),
          register(context, passNode, phoneController, passController)
        ],
      ),
    );
  }
}

dynamic bg() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/image_03.jpg'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter)),
  );
}

Widget register(context, passNode, phoneController, passController) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(top: 240),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Padding(
      padding: EdgeInsets.fromLTRB(23, 18, 23, 23),
      child: ListView(
        children: <Widget>[
          registerTitle(),
          registerForm(context, passNode, phoneController, passController),
        ],
      ),
    ),
  );
}

dynamic back(context) {
  return Padding(
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    child: SizedBox(
      height: kToolbarHeight,
      child: Row(
        children: <Widget>[
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    ),
  );
}

dynamic registerTitle() {
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: Text(
      "注册",
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    ),
  );
}

dynamic registerForm(context, passNode, phoneController, passController) {
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
                autofocus: true,
                // maxLength: 11,
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
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '请输入密码',
                  prefixIcon: Icon(Icons.lock_outline),
                  labelStyle: TextStyle(fontSize: 13)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: MaterialButton(
              onPressed: () async {
                Dio dio = new Dio();
                Response response;
                var userInfo;
                response = await dio.post(Address.dev_base_url + "/register",
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

                  print("register test test test");
                  print(sharedPreferences.getString("userInfo"));

                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    PageName.bottom_tab.toString(),
                    (route) => false,
                  );
                } else if (response.data["code"] == "103") {
                  Fluttertoast.showToast(
                      msg: "账号已存在", fontSize: 12, gravity: ToastGravity.TOP);
                } else {
                  Fluttertoast.showToast(
                      msg: "注册失败,请重试", fontSize: 12, gravity: ToastGravity.TOP);
                }
              }, //since this is only a UI app
              child: Text(
                '注册',
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
