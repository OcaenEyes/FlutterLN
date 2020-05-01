import 'package:flutter/material.dart';
import 'package:oceanim/router/page_builder.dart';
import 'package:oceanim/router/page_routes.dart';

class FriendsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FriendsPageState();
  }
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("朋友"),
          actions: <Widget>[
            GestureDetector(
              child: Icon(Icons.person_add),
              onTap: () {
                Navigator.pushNamed(context, PageName.add_friend.toString(), arguments: null);
              },
            )
          ],
        ),
        body: ListView(
          
          // shrinkWrap: true,

          children: <Widget>[
            tools(),
            SizedBox(
              height: 10,
            ),
            friends(),
          ],
        ));
  }
}

Widget friends() {
  List friends=[
    {
      "id": 2,
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572575",
      "passWord": "2",
      "avatarUrl": "assets/images/3.jpg",
      "nickName": "OCEAN.ZY",
      "signWord": "",
      "createTime": "11:23:23",
      "updateTime": null,
      "userGroups": []
    },
    {
      "id": 2,
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572577",
      "passWord": "2",
      "avatarUrl": "assets/images/1.jpg",
      "nickName": "OCEAN.Z",
      "signWord": "",
      "createTime": "11:23:23",
      "updateTime": null,
      "userGroups": []
    },
    {
      "id": 2,
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572578",
      "passWord": "2",
      "avatarUrl": "assets/images/4.jpg",
      "nickName": "OCEAN.Y",
      "signWord": "",
      "createTime": "11:23:23",
      "updateTime": null,
      "userGroups": []
    },
    {
      "id": 2,
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572579",
      "passWord": "2",
      "avatarUrl": "assets/images/2.jpg",
      "nickName": "OCEAN.ZY",
      "signWord": "",
      "createTime": "11:23:23",
      "updateTime": null,
      "userGroups": []
    },{
      "id": 2,
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572580",
      "passWord": "2",
      "avatarUrl": "assets/images/5.jpg",
      "nickName": "OCEN.ZY",
      "signWord": "",
      "createTime": "11:23:23",
      "updateTime": null,
      "userGroups": []
    },
    {
      "id": 2,
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572581",
      "passWord": "2",
      "avatarUrl": "assets/images/2.jpg",
      "nickName": "OCEA.ZY",
      "signWord": "",
      "createTime": "11:23:23",
      "updateTime": null,
      "userGroups": []
    },
    {
      "id": 2,
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "1529557282",
      "passWord": "2",
      "avatarUrl": "assets/images/1.jpg",
      "nickName": "OCAN.ZY",
      "signWord": "",
      "createTime": "11:23:23",
      "updateTime": null,
      "userGroups": []
    },
    {
      "id": 2,
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572583",
      "passWord": "2",
      "avatarUrl": "assets/images/bg.png",
      "nickName": "OEAN.ZY",
      "signWord": "",
      "createTime": "11:23:23",
      "updateTime": null,
      "userGroups": []
    },
    {
      "id": 2,
      "userId": "4ca6e7c5-a2ec-41a7-b904-0f8de25cddf6",
      "phoneNumber": "15295572584",
      "passWord": "2",
      "avatarUrl": "assets/images/5.jpg",
      "nickName": "CEAN.ZY",
      "signWord": "",
      "createTime": "11:23:23",
      "updateTime": null,
      "userGroups": []
    }

  ];
  return ListView.builder(
      shrinkWrap: true,
      itemCount: friends.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return friendItem(context, friends[index]);
      });
}

Widget friendItem(context, friend) {


  return Column(
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        height: 66,
        padding: EdgeInsets.only(left: 10),
        color: Colors.white,
        child: ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    image: AssetImage(friend["avatarUrl"]),
                    fit: BoxFit.cover)),
          ),
          title: Text(
            friend["nickName"],
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
          ),
          onTap: () {
            print(friend);
            Navigator.pushNamed(context, PageName.userdetial.toString(),arguments: Bundle()..putMap("userinfo", friend));
          },
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

dynamic tools() {
  List toolData = [
    {
      'text': "心动",
      'icon': Icons.face,
      'page_name': PageName.heart.toString()
    },
    {
      'text': "标签",
      'icon': Icons.tag_faces,
      'page_name': PageName.tag.toString()
    },
    {
      'text': "群聊",
      'icon': Icons.group,
      'page_name': PageName.group.toString()
    },
  ];
  return ListView.builder(
      shrinkWrap: true,
      itemCount: toolData.length,
      itemBuilder: (context, index) {
        return toolItem(context,toolData[index]);
      });
}

dynamic toolItem(context,tool) {
  return Column(
    children: <Widget>[
      Container(
        color: Colors.white,
        alignment: Alignment.center,
        height: 66,
        padding: EdgeInsets.only(left: 10),
        child: ListTile(
          leading: Icon(tool['icon']),
          title: Text(tool['text']),
          onTap: (){
            print(tool);
            Navigator.pushNamed(context, tool['page_name'],arguments: null);
          },
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
