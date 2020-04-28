import 'package:flutter/material.dart';

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
            onTap: () {},
          )
        ],
      ),
      body: friends(),
      );
  }
}

Widget friends() {
  return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return friendItem(context, index);
      });
}

Widget friendItem(context, index) {
  return Column(
    children: <Widget>[
      ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                  image: AssetImage('assets/images/3.jpg'), fit: BoxFit.cover)),
        ),
        title: Text("OCEAN.GZY",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
        onTap: () {
          print(index);
        },
        onLongPress: () {},
      ),
      Divider(
        color: Colors.black12,
        indent: 68,
        height: 4,
      ),
    ],
  );
}
