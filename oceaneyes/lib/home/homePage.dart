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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("首页"),
        ),
        body: new Column(
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
          ],
        ));
  }
}
