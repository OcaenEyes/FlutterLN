import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:oceangzy/router/page_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroducePage extends StatefulWidget {
  @override
  _IntroducePageState createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  var introKey = GlobalKey<IntroductionScreenState>();
  var pageDecoration = new PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.w700, letterSpacing: 4),
      bodyTextStyle: TextStyle(
        fontSize: 20.0,
        letterSpacing: 8,
        height: 2,
      ),
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.fromLTRB(0, 20, 0, 10));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setConf();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  _setConf() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('introduce_show', "false");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntroductionScreen(
      done: Text(
        "进入",
        style: TextStyle(fontSize: 16.0),
      ),
      onDone: () async {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        (sharedPreferences.getString("userInfo") != null)
            ? Navigator.pushNamedAndRemoveUntil(
                context, PageName.bottom_tab.toString(), (route) => false)
            : Navigator.pushNamedAndRemoveUntil(
                context, PageName.login_page.toString(), (route) => false);
      },
      // showSkipButton: true,
      // skip: Text("跳过",style: TextStyle(fontSize: 14.0),),
      next: Icon(
        Icons.arrow_forward,
        size: 20,
      ),
      pages: <PageViewModel>[
        PageViewModel(
          title: "OCEAN TEAM",
          body: "木之就规矩，在梓匠轮舆。 "
              "人之能为人，由腹有诗书。",
          decoration: pageDecoration,
          image: Container(
            child: Image.asset(
              "assets/images/image_01.jpg",
              fit: BoxFit.cover,
            ),
//            alignment: Alignment.bottomCenter,
          ),
        ),
        PageViewModel(
          title: "OCEAN TEAM",
          body: "诗书勤乃有，不勤腹空虚。 "
              "欲知学之力，贤愚同一初。",
          decoration: pageDecoration,
          image: Container(
            child: Image.asset(
              "assets/images/image_02.jpg",
              fit: BoxFit.cover,
            ),
//            alignment: Alignment.bottomCenter,
          ),
        ),
        PageViewModel(
          title: "OCEAN GZY",
          body: "少长聚嬉戏，不殊同队鱼。 "
              "年至十二三，头角稍相疏。",
          decoration: pageDecoration,
          image: Container(
            child: Image.asset(
              "assets/images/image_03.jpg",
              fit: BoxFit.cover,
            ),
//            alignment: Alignment.bottomCenter,
          ),
        ),
        PageViewModel(
          title: "OCEAN GZY",
          body: "金璧虽重宝，费用难贮储。 "
              "学问藏之身，身在则有余。",
          decoration: pageDecoration,
          image: Container(
            child: Image.asset(
              "assets/images/image_04.jpg",
              fit: BoxFit.cover,
            ),
//            alignment: Alignment.bottomCenter,
          ),
        ),
        PageViewModel(
          title: "OCEAN GZY",
          body: "灯火稍可亲，简编可卷舒。 "
              "岂不旦夕念，为尔惜居诸。",
          decoration: pageDecoration,
          image: Container(
            child: Image.asset(
              "assets/images/image_02.jpg",
              fit: BoxFit.cover,
            ),
//            alignment: Alignment.bottomCenter,
          ),
          footer: RaisedButton(
            onPressed: () {
              introKey.currentState?.animateScroll(0);
            },
            child: const Text(
              '读书城南',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
      dotsDecorator: DotsDecorator(
        size: Size(8.0, 8.0),
        color: Color(0xFFBDBDBD),
        activeColor: Colors.black,
        activeSize: Size(16.0, 8.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
        ),
      ),
    );
  }
}
