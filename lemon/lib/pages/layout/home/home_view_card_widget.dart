import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lemon/router/page_routes.dart';

class Vacation {
  String url;
  String name;

  Vacation(this.url, this.name);
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
    Vacation("assets/images/1.jpg", "Japan"),
    Vacation("assets/images/2.jpg", "Franch"),
    Vacation("assets/images/3.jpg", "Paris"),
    Vacation("assets/images/4.jpg", "London"),
    Vacation("assets/images/5.jpg", "China"),
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

          if (angle > 0.5) {
            angle = 1 - angle;
          }

          return Container(
            padding: EdgeInsets.only(
              right: 10,
              left: 20,
              top: 100 - scale * 25,
              bottom: 50,
            ),
            child: Transform(
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    vacationList[index].url,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.none,
                    alignment: Alignment((pageOffset - index).abs() * 0.5, 0),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 20,
                    child: AnimatedOpacity(
                      duration: Duration(
                        milliseconds: 200,
                      ),
                      opacity: angle == 0 ? 1 : 0,
                      child: Text(
                        vacationList[index].name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(angle),
            ),
          );
        });
  }
}
