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
      "description": "这是第一个卡片"
    },
    {
      "title": "卡片三",
      "imageUrl": "assets/images/bg.jpg",
      "description": "这是第一个卡片"
    },
    {
      "title": "卡片四",
      "imageUrl": "assets/images/bg.jpg",
      "description": "这是第一个卡片"
    },
    {
      "title": "卡片五",
      "imageUrl": "assets/images/bg.jpg",
      "description": "这是第一个卡片"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("发现"),
      ),
      body: new ListView(
        children: discoverData.map((discoverCard) {
          return new Card(
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
                  title: new Text(discoverCard["title"]),
                  subtitle: new Text(discoverCard["description"]),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
