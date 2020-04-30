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
                  items: popupMenuItem(),
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
  return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return messageItem(context, index);
      });
}

Widget messageItem(context, index) {
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
                      image: AssetImage('assets/images/3.jpg'),
                      fit: BoxFit.cover)),
            ),
            title: Text(
              "OCEAN.GZY",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            ),
            subtitle: Text("这是最后一条消息"),
            trailing: Text("4天前", style: TextStyle(color: Colors.black38)),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, PageName.chatting.toString(), (route) => true,
                  arguments: Bundle()..putString("username", "OCEAN.GZY"));
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

dynamic popupMenuItem() {
  List popData = [
    {'text': "发起群聊", 'icon': Icons.people},
    {'text': "添加朋友", 'icon': Icons.person_add},
    {'text': "扫一扫", 'icon': Icons.scatter_plot},
  ];
  return popData.map((item) {
    return PopupMenuItem(
      value: item['text'],
      child: GestureDetector(
        onTap: () {
          print(item['text']);
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
