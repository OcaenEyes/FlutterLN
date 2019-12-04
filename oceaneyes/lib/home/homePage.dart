import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
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
          title: new Text("首页"),
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              height: 180,
              margin: EdgeInsets.fromLTRB(12, 10, 12, 5),
              child: new Card(
                child: new Swiper(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.asset(
                      images[index],
                      fit: BoxFit.fill,
                    );
                  },
                  pagination: new SwiperPagination(),
                  onTap: (index) {
                    debugPrint("点击了第: $index 个");
                    debugPrint("描述信息是" + descriptions[index] + "个");
                  },
                ),
              ),
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(12, 5, 12, 5),
              child: new Card(
                child: new Column(
                  children: <Widget>[
                    new ListTile(
                      title: new Text("卡片二"),
                    ),
                    new Container(
                      height: 60,
                      color: Colors.black12,
                    ),
                    new Container(
                      height: 60,
                      color: Colors.black26,
                    ),
                    new Container(
                      height: 60,
                      color: Colors.black38,
                    ),
                    new Container(
                      height: 60,
                      color: Colors.black45,
                    )
                  ],
                ),
              ),
            ),

            new Container(
            height: 530,
            child: new ListView(
              // scrollDirection: Axis.vertical,
              shrinkWrap: true,
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
                        leading: CircleAvatar(backgroundColor: Colors.white,child: Image.asset(discoverCard["imageUrl"],fit: BoxFit.fill,)),                     
                        title: new Text(discoverCard["title"]),
                        subtitle: new Text(discoverCard["description"]),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          ],
        ));
  }
}
