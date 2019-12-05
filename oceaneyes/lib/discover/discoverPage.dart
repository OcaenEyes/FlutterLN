import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DiscoverPageWidget extends StatefulWidget {
  @override
  _DiscoverPageWidgetSatte createState() => _DiscoverPageWidgetSatte();
}

class _DiscoverPageWidgetSatte extends State<DiscoverPageWidget> {
  List<String> images = [
    'assets/images/bg.jpg',
    'assets/images/bg.jpg',
    'assets/images/bg.jpg',
    'assets/images/bg.jpg',
    'assets/images/bg.jpg',
  ];
  List<String> descriptions = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  List discoverData = [
    {
      "title": "卡片一",
      "imageUrl": "assets/images/bg.jpg",
      "headImg": "assets/images/head.jpg",
      "description": "这是第一个卡片",
    },
    {
      "title": "卡片二",
      "imageUrl": "assets/images/bg.jpg",
      "headImg": "assets/images/head.jpg",
      "description": "这是第二个卡片"
    },
    {
      "title": "卡片三",
      "imageUrl": "assets/images/bg.jpg",
      "headImg": "assets/images/head.jpg",
      "description": "这是第三个卡片"
    },
    {
      "title": "卡片四",
      "imageUrl": "assets/images/bg.jpg",
      "headImg": "assets/images/head.jpg",
      "description": "这是第四个卡片"
    },
    {
      "title": "卡片五",
      "imageUrl": "assets/images/bg.jpg",
      "headImg": "assets/images/head.jpg",
      "description": "这是第五个卡片"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("发现"),
        ),
        body: new ListView(children: <Widget>[
          new Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 10),
            height: 180,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black,
                  ),
                  width: 300,
                  margin: EdgeInsets.only(right: 16),
                  child: Center(
                      child:
                          Text("这一个卡二", style: TextStyle(color: Colors.white))),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black,
                  ),
                  width: 300,
                  margin: EdgeInsets.only(right: 16),
                  child: Center(
                      child:
                          Text("这一个卡二", style: TextStyle(color: Colors.white))),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black,
                    // image: DecorationImage(
                    //   image: AssetImage("assets/images/bg.jpg"),
                    //   fit: BoxFit.fill,
                    // )
                  ),
                  width: 300,
                  child: Center(
                      child:
                          Text("这一个卡三", style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
          ),
          new Container(
            height: 320,
            child: new ListView(
              // scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: discoverData.map((discoverCard) {
                return new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                  ),
                  color: Colors.black,
                  margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: new Column(
                    children: <Widget>[
                      new ListTile(
                        leading: ClipOval(
                            child: SizedBox(
                          width: 44,
                          height: 44,
                          child: Image.asset(
                            discoverCard["headImg"],
                            fit: BoxFit.fill,
                          ),
                        )),
                        title: new Text(
                          discoverCard["title"],
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: new Text(
                          discoverCard["description"],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ]));
  }
}
