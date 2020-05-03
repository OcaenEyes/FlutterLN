import 'package:flutter/material.dart';
import 'package:oceanim/router/page_builder.dart';
import 'package:oceanim/router/page_routes.dart';

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
          "用户详情"
          // widget.bundle.getMap("userinfo")["nickName"]
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
                widget.bundle.getMap("userinfo")["phoneNumber"],
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
            child: Text("发消息"),
            onPressed: () {
              var message = {
                "text": "biu biu biu",
                "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
                "phoneNumber": widget.bundle.getMap("userinfo")["phoneNumber"],
                "avatarUrl": widget.bundle.getMap("userinfo")["avatarUrl"],
                "nickName": widget.bundle.getMap("userinfo")["nickName"],
                "recevieTime": "四天前",
              };
              Navigator.pushNamedAndRemoveUntil(
                  context, PageName.chatting.toString(), (route) => true,
                  arguments: Bundle()..putMap("message", message));
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
                  image:
                      AssetImage(widget.bundle.getMap("userinfo")["avatarUrl"]),
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
                widget.bundle.getMap("userinfo")["nickName"],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Text(
                "账号：" + widget.bundle.getMap("userinfo")["phoneNumber"],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Text(
                "签名：" + widget.bundle.getMap("userinfo")["signWord"],
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
