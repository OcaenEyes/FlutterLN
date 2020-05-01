import 'package:flutter/material.dart';
import 'package:oceanim/router/page_builder.dart';
import 'package:oceanim/router/page_routes.dart';

class MinePage extends StatefulWidget {
  final Bundle bundle;
  MinePage(this.bundle);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MinePageState();
  }
}

class _MinePageState extends State<MinePage> {
  @override
  void initState() {
    super.initState();
    print(widget.bundle.getMap("userInfo").toString());
    print(widget.bundle.getMap("userInfo")["avatarUrl"]);
    print(widget.bundle.getMap("userInfo")["nickName"]);
    print(widget.bundle.getMap("userInfo")["signName"]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("我的"),
      // ),
      body: ListView(
        children: <Widget>[
          userCard(widget),
          SizedBox(
            height: 10,
          ),
          tools(),
        ],
      ),
    );
  }
}

dynamic userCard(widget) {
  return Card(
    child: Container(
      padding: EdgeInsets.fromLTRB(40, 30, 10, 0),
      width: 300,
      height: 200,
      // color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    image: AssetImage("assets/images/3.jpg"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.bundle.getMap("userInfo")["nickName"],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "账号：" + widget.bundle.getMap("userInfo")["phoneNumber"],
                style: TextStyle(color: Colors.black38),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

dynamic tools() {
  List toolData = [
    {
      'text': "收藏",
      'icon': Icons.collections_bookmark,
      'page_name': PageName.collection.toString()
    },
    {
      'text': "相册",
      'icon': Icons.photo_album,
      'page_name': PageName.photo_album.toString()
    },
    {
      'text': "设置",
      'icon': Icons.settings,
      'page_name': PageName.setting.toString()
    },
  ];
  return ListView.builder(
      shrinkWrap: true,
      itemCount: toolData.length,
      itemBuilder: (context, index) {
        return toolItem(toolData[index], context);
      });
}

dynamic toolItem(tool, context) {
  return Column(
    children: <Widget>[
      Container(
        color: Colors.white,
        alignment: Alignment.center,
        height: 66,
        padding: EdgeInsets.only(left: 10),
        child: ListTile(
          onTap: () {
            print(tool);
            Navigator.pushNamed(context, tool['page_name'], arguments: null);
          },
          leading: Icon(tool['icon']),
          title: Text(tool['text']),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ),
      Divider(
        color: Colors.black12,
        indent: 68,
        height: 0,
      ),
    ],
  );
}
