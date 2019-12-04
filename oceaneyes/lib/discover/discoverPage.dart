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
      "description": "这是第一个卡片"
    },
    {
      "title": "卡片二",
      "imageUrl": "assets/images/bg.jpg",
      "description": "这是第二个卡片"
    },
    {
      "title": "卡片三",
      "imageUrl": "assets/images/bg.jpg",
      "description": "这是第三个卡片"
    },
    {
      "title": "卡片四",
      "imageUrl": "assets/images/bg.jpg",
      "description": "这是第四个卡片"
    },
    {
      "title": "卡片五",
      "imageUrl": "assets/images/bg.jpg",
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
            margin: EdgeInsets.fromLTRB(16, 0, 16, 10),
            height: 200,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 340,
                  margin: EdgeInsets.only(right: 16),
                  color: Colors.black,
                ),
                Container(
                  width: 340,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          new Container(
            height: 698,
            child: new ListView(
              // scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: discoverData.map((discoverCard) {
                return new Card(
                  color: Colors.black,
                  margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: new Column(
                    children: <Widget>[
                      new AspectRatio(
                        aspectRatio: 16 / 9,
                        child: new Image.asset(
                          discoverCard["imageUrl"],
                          fit: BoxFit.fill,
                        ),
                      ),
                      new ListTile(
                        leading: CircleAvatar(
                            child: Image.asset(
                              discoverCard["imageUrl"],
                              
                              fit: BoxFit.fill,
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
