import 'package:flutter/material.dart';
import 'package:lemon/pages/layout/mine/my_page_bottom.dart';
import 'package:lemon/pages/layout/mine/my_page_center.dart';
import 'package:lemon/pages/layout/mine/my_page_top.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  ScrollController _scrollController;

  GlobalKey _key1 = GlobalKey();
  GlobalKey _key2 = GlobalKey();
  GlobalKey _key3 = GlobalKey();

  double _height1 = 0;
  double _height2 = 0;
  double _height3 = 0;

  double each_padding = 50;

  double max_left = 60;

  double yOffset = 0;

  double max_offset = 1;

  // @override
  // void initState() {
  //   _scrollController = ScrollController()
  //     ..addListener(() {
  //       setState(() {
  //         yOffset = _scrollController.offset;
  //         print(max_offset);
  //       });
  //     });

  //   SchedulerBinding.instance.endOfFrame.then((v) {
  //     _height1 = _findHeightByKey(_key1);
  //     _height2 = _findHeightByKey(_key2);
  //     _height3 = _findHeightByKey(_key3);

  //     max_offset = _height1 +
  //         _height2 +
  //         _height3 -
  //         each_padding * 2 -
  //         MediaQuery.of(context).size.height;

  //     if (max_offset <= 0) {
  //       max_offset = 0;
  //     }
  //     setState(() {});
  //   });

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              controller: _scrollController,
              child: SizedBox(
                height: _height1 == 0
                    ? 0
                    : (_height1 + _height2 + _height3 - each_padding * 2),
                child: Stack(
                  children: <Widget>[],
                ),
              ),
            ),
            Positioned(
              top: kToolbarHeight,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5,
                        right: 5,
                        top: 60,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: kToolbarHeight-10,
              left: 21,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: FlutterLogo(),
                minRadius: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }


  _findHeightByKey(GlobalKey<State<StatefulWidget>> key) {
    RenderBox renderBox = key.currentContext.findRenderObject();
    return renderBox.size.height;
  }
}

class MinePageBottom {
}

