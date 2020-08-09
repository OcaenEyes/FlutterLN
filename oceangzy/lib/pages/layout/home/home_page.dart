import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }

// _InformationPageState createState<>  => _InformationPageState();
}

class _HomePageState extends State<HomePage> {
  String _token = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getConf();
  }

  _getConf() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString("access_token");
    print("写入文件测试1");
    print(token);
    _token = token;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
//        appBar: AppBar(),
//        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            Container(
              child: Swiper(
                autoplay: true,
                autoplayDelay: 5000,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Image.asset(
                    "assets/images/image_0" + (index + 1).toString() + ".jpg",
                    fit: BoxFit.fill,
                  );
                },
//          pagination: SwiperPagination(),
//          control: SwiperControl(),
                layout: SwiperLayout.TINDER,
                itemWidth: MediaQuery.of(context).size.width - 20,
                itemHeight: 220,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
