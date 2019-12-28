import 'package:flutter/material.dart';
import '../client/diotest.dart';
import '../banner/swiper_banner.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    // getHttp();
    return Scaffold(
      body: Container(
        child: SwiperBannerWidget(),

      ),
    );
  }
}
