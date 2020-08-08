import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:oceangzy/router/page_routes.dart';

class IntroducePage extends StatefulWidget {
  @override
  _IntroducePageState createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  var introKey = GlobalKey<IntroductionScreenState>();
  var pageDecoration = new PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
    bodyTextStyle: TextStyle(fontSize: 19.0),
    descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    pageColor: Colors.white,
    imagePadding: EdgeInsets.zero,
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntroductionScreen(
      done: Text(
        "进入",
        style: TextStyle(fontSize: 14.0),
      ),
      onDone: () {
        Navigator.pushNamedAndRemoveUntil(
            context, PageName.bottom_tab.toString(), (route) => false);
      },
      // showSkipButton: true,
      // skip: Text("跳过",style: TextStyle(fontSize: 14.0),),
      next: Icon(
        Icons.arrow_forward,
        size: 18,
      ),
      pages: <PageViewModel>[
        PageViewModel(
          title: "Fractional shares",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          decoration: pageDecoration,
          image: Align(
            child: Image.asset(
              "assets/images/1.jpg",
              fit: BoxFit.cover,
            ),
            alignment: Alignment.bottomCenter,
          ),
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body:
              "Kids and teens can track their stocks 24/7 and place trades that you approve.",
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Another title page",
          body: "Another beautiful body text for this example onboarding",
          footer: RaisedButton(
            onPressed: () {
              introKey.currentState?.animateScroll(0);
            },
            child: const Text(
              'FooButton',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Title of last page",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Click on ", style: TextStyle(fontSize: 19.0)),
              Icon(Icons.edit),
              Text(" to edit a post", style: TextStyle(fontSize: 19.0)),
            ],
          ),
          decoration: pageDecoration,
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
