import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lemon/router/page_builder.dart';
import 'package:lemon/router/page_routes.dart';

class Vacation {
  String url;
  String name;
  String describe;

  Vacation(this.url, this.name, this.describe);
}

class HomeCardViewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeCardViewWidgetState();
  }
}

class _HomeCardViewWidgetState extends State<HomeCardViewWidget> {
  var vacationList = [
    Vacation("assets/images/2.jpg", "Franch", "布拉布拉,小月亮"),
    Vacation("assets/images/1.jpg", "ICEICE", "布拉布拉,小雪山"),
    Vacation("assets/images/3.jpg", "Paris", "布拉布拉,小夕阳"),
    Vacation("assets/images/4.jpg", "London", "布拉布拉,小河流"),
    Vacation("assets/images/5.jpg", "China", "布拉布拉,小沙漠"),
  ];

  PageController pageController;

  double viewportFraction = 0.8;

  double pageOffset = 0;

  @override
  void initState() {
    pageController =
        PageController(initialPage: 0, viewportFraction: viewportFraction)
          ..addListener(() {
            setState(() {
              pageOffset = pageController.page;
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
        controller: pageController,
        itemCount: vacationList.length,
        itemBuilder: (context, index) {
          double scale = max(viewportFraction,
              (1 - (pageOffset - index).abs()) + viewportFraction);

          double angle = (pageOffset - index).abs();

          var vacation = {
            "name": vacationList[index].name,
            "describe": vacationList[index].describe,
            "url": vacationList[index].url
          };

          if (angle > 0.5) {
            angle = 1 - angle;
          }

          return Container(
              padding: EdgeInsets.only(
                right: 20,
                left: 10,
                top: 100 - scale * 26,
                bottom: 68,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context, PageName.home_view_detail.toString(),
                      arguments: Bundle()
                        ..putMap("data", vacation));
                },
                child: Transform(
                  alignment: Alignment.center,
                  child: Material(
                      elevation: 8.0,
                      borderRadius: BorderRadius.circular(8.0),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              vacationList[index].url,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                              alignment: Alignment(
                                  (pageOffset - index).abs() * 0.5, 0),
                            ),
                          ),
                          Positioned(
                            bottom: 60,
                            left: 20,
                            child: AnimatedOpacity(
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              opacity: angle == 0 ? 1 : 0,
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    child: Text(
                                      vacationList[index].name,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                    padding: EdgeInsets.only(top: 0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                      vacationList[index].describe,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(angle),
                ),
              ));
        });
  }
}
