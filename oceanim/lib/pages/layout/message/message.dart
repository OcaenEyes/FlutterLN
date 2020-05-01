import 'package:flutter/material.dart';
import 'package:oceanim/router/page_builder.dart';
import 'package:oceanim/router/page_routes.dart';

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
          actions: <Widget>[
            GestureDetector(
              child: Icon(Icons.add),
              onTap: () {
                showMenu(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  position: RelativeRect.fromLTRB(0, 80, -10, 0),
                  // items: [
                  //   PopupMenuItem(
                  //     child: Row(
                  //       children: <Widget>[
                  //         Icon(Icons.people_outline),
                  //         Padding(
                  //           padding: EdgeInsets.all(8),
                  //         ),
                  //         Text("发起群聊")
                  //       ],
                  //     ),
                  //   )
                  // ],
                  items: popupMenuItem(context),
                );
              },
            )
          ],
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Container(
            //   padding: EdgeInsets.all(10),
            //   width: 350,
            //   height: 68,
            //   child: search(),
            // ),
            Expanded(
              child: message(),
            )
          ],
        ));
  }
}

Widget search() {
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: '搜索',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}

Widget message() {
  List messages = [
    {
      "text": "biu biu biu，消息测试",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/3.jpg",
      "nickName": "OCEAN.ZY",
      "recevieTime": "刚刚",
    },
    {
      "text": "biu biu biu",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/1.jpg",
      "nickName": "OCEAN.Y",
      "recevieTime": "10分钟前",
    },
    {
      "text": "biu biu biu",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/2.jpg",
      "nickName": "OCEAN.Z",
      "recevieTime": "40分钟前",
    },
    {
      "text": "biu biu biu",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/5.jpg",
      "nickName": "OCAN.ZY",
      "recevieTime": "1小时前",
    },
    {
      "text": "biu biu biu",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/4.jpg",
      "nickName": "OCEA.ZY",
      "recevieTime": "2小时前",
    },
    {
      "text": "biu biu biu",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/bg.png",
      "nickName": "OEAN.ZY",
      "recevieTime": "6小时前",
    },
    {
      "text": "biu biu biu",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572576",
      "avatarUrl": "assets/images/1.jpg",
      "nickName": "OCAN.ZY",
      "recevieTime": "两天前",
    },
    {
      "text": "biu biu biu，这事一个测测",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572576",
      "avatarUrl": "assets/images/2.jpg",
      "nickName": "CEAN.ZY",
      "recevieTime": "三天前",
    },
    {
      "text": "biu biu biu",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/4.jpg",
      "nickName": "OCE.ZY",
      "recevieTime": "四天前",
    },
    {
      "text": "biu biu biu，嘻嘻",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/5.jpg",
      "nickName": "OAN.ZY",
      "recevieTime": "四天前",
    },
    {
      "text": "biu biu biu",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/3.jpg",
      "nickName": "OCN.ZY",
      "recevieTime": "四天前",
    },
    {
      "text": "biu biu biu，哈哈测试测试",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/2.jpg",
      "nickName": "EAN.ZY",
      "recevieTime": "四天前",
    },
    {
      "text": "bu bu biu,你好呀",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/1.jpg",
      "nickName": "OAN.ZY",
      "recevieTime": "四天前",
    },
    {
      "text": "biu biu biu",
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "avatarUrl": "assets/images/4.jpg",
      "nickName": "OCEAN.ZY",
      "recevieTime": "四天前",
    },
  ];
  return ListView.builder(
      shrinkWrap: true,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return messageItem(context, messages[index]);
      });
}

Widget messageItem(context, message) {
  return Column(
    children: <Widget>[
      Container(
          alignment: Alignment.center,
          height: 80,
          padding: EdgeInsets.only(left: 2),
          color: Colors.white,
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage(message["avatarUrl"]),
                      fit: BoxFit.cover)),
            ),
            title: Text(
              message["nickName"],
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            ),
            subtitle: Text(message["text"]),
            trailing: Text(message["recevieTime"], style: TextStyle(color: Colors.black38)),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, PageName.chatting.toString(), (route) => true,
                  arguments: Bundle()..putMap("message", message));
            },
            onLongPress: () {},
          )),
      Divider(
        color: Colors.black12,
        indent: 68,
        height: 0,
      ),
    ],
  );
}

dynamic popupMenuItem(context) {
  List popData = [
    {
      'text': "发起群聊",
      'icon': Icons.people,
      'page_name': PageName.group.toString()
    },
    {
      'text': "添加朋友",
      'icon': Icons.person_add,
      'page_name': PageName.add_friend.toString()
    },
    {
      'text': "扫一扫",
      'icon': Icons.scatter_plot,
      'page_name': PageName.qrscan.toString()
    },
  ];
  return popData.map((item) {
    return PopupMenuItem(
      value: item['text'],
      child: GestureDetector(
        onTap: () {
          print(item['text']);
          Navigator.pushNamed(context, item['page_name'], arguments: null);
        },
        child: Container(
            alignment: Alignment.center,
            height: 56,
            padding: EdgeInsets.only(left: 10),
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(item['icon']),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                Text(item['text'])
              ],
            )),
      ),
    );
  }).toList();
}
