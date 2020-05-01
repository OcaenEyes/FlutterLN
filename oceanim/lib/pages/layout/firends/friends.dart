import 'package:flutter/material.dart';
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
              onTap: () {},
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
  return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return friendItem(context, index);
      });
}

Widget friendItem(context, index) {
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
                    image: AssetImage('assets/images/3.jpg'),
                    fit: BoxFit.cover)),
          ),
          title: Text(
            "OCEAN.GZY",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
          ),
          onTap: () {
            print(index);
          },
          onLongPress: () {},
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
  return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return toolItem(context,index);
      });
}

dynamic toolItem(context,index) {
  return Column(
    children: <Widget>[
      Container(
        color: Colors.white,
        alignment: Alignment.center,
        height: 66,
        padding: EdgeInsets.only(left: 10),
        child: ListTile(
          leading: Icon(Icons.person_add),
          title: Text("朋友"),
          onTap: (){
            print(index);
            Navigator.pushNamed(context, PageName.add_friend.toString(),arguments: null);
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
