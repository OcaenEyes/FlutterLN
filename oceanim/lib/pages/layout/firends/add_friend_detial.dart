import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:oceanim/router/page_builder.dart';
import 'package:oceanim/router/page_routes.dart';
import 'package:oceanim/util/Address.dart';

class AddUserDetialPage extends StatefulWidget {
  final Bundle bundle;
  AddUserDetialPage(this.bundle);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddUserDetialPageState();
  }
}

class _AddUserDetialPageState extends State<AddUserDetialPage> {
  Dio dio = new Dio();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("用户详情"
            // widget.bundle.getMap("data")["friendInfo"]["nickName"]
            ),
      ),
      // backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          _friendinfo(widget),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            height: 66,
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () {
                // Navigator.pushNamed(context, tool['page_name'], arguments: null);
              },
              leading: Icon(Icons.brush),
              title: Text("备注"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Divider(
            indent: 80,
            height: 2,
            color: Colors.black26,
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            height: 66,
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () {
                // Navigator.pushNamed(context, tool['page_name'], arguments: null);
              },
              leading: Icon(Icons.tag_faces),
              title: Text("标签"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Divider(
            indent: 80,
            height: 2,
            color: Colors.black26,
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            height: 66,
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () {
                // Navigator.pushNamed(context, tool['page_name'], arguments: null);
              },
              leading: Icon(Icons.phone),
              title: Text("联系方式"),
              trailing: Text(
                widget.bundle.getMap("data")["friendInfo"]["phoneNumber"],
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
          Divider(
            indent: 80,
            height: 2,
            color: Colors.black26,
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            height: 66,
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(bottom: 40),
            child: ListTile(
              onTap: () {
                // Navigator.pushNamed(context, tool['page_name'], arguments: null);
              },
              leading: Icon(Icons.star),
              title: Text("特别关注"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          MaterialButton(
            minWidth: 320,
            height: 48,
            color: Colors.black,
            textColor: Colors.white,
            child: Text("添加为好友"),
            onPressed: () async {
              Response response;
              try {
                response = await dio.post(
                  Address.dev_base_url + "/saveFriend",
                  queryParameters: {
                    "phone": widget.bundle.getMap("data")["phone"],
                    "friendinfo":widget.bundle.getMap("data")["friendInfo"]
                  },
                );
                if (response.data["code"] == 200) {
                  Fluttertoast.showToast(
                      msg: "添加成功", fontSize: 12, gravity: ToastGravity.TOP);
                  Navigator.pushNamedAndRemoveUntil(
                      context, PageName.chatting.toString(), (route) => true,
                      arguments: widget.bundle.getMap("data")["friendInfo"]);
                } else {
                  Fluttertoast.showToast(
                      msg: "添加失败", fontSize: 12, gravity: ToastGravity.TOP);
                }
              } catch (e) {
                Fluttertoast.showToast(
                    msg: "添加好友异常", fontSize: 12, gravity: ToastGravity.TOP);
              }

              // var message = {
              //   "text": "biu biu biu",
              //   "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
              //   "phoneNumber": widget.bundle.getMap("data")["friendInfo"]["phoneNumber"],
              //   "avatarUrl": widget.bundle.getMap("data")["friendInfo"]["avatarUrl"],
              //   "nickName": widget.bundle.getMap("data")["friendInfo"]["nickName"],
              //   "recevieTime": "四天前",
              // };
            },
          ),
        ],
      ),
    );
  }
}

dynamic _friendinfo(widget) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.fromLTRB(34, 20, 20, 20),
    margin: EdgeInsets.only(bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 68,
          height: 68,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(
                      widget.bundle.getMap("data")["friendInfo"]["avatarUrl"]),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 28,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(4),
              child: Text(
                widget.bundle.getMap("data")["friendInfo"]["nickName"],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Text(
                "账号：" +
                    widget.bundle.getMap("data")["friendInfo"]["phoneNumber"],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Text(
                "签名：" + widget.bundle.getMap("data")["friendInfo"]["signWord"],
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
