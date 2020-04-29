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
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("我的"),
        ),
        body: ListView(
          children: <Widget>[
            Text(widget.bundle.getMap("userInfo").toString()),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  image: DecorationImage(
                      image: AssetImage(
                          widget.bundle.getMap("userInfo")["avatarUrl"])),
                )),
                title: Text(
                  widget.bundle.getMap("userInfo")["nickName"],
                ),
                subtitle: Text(
                  widget.bundle.getMap("userInfo")["signName"],
                ),
              ),
            )
          ],
        ));
  }
}
