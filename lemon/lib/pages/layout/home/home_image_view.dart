import 'package:flutter/material.dart';
import 'package:lemon/router/page_builder.dart';
import 'dart:ui' as ui;

class HomeImageViewPage extends StatefulWidget {
  final Bundle bundle;
  HomeImageViewPage(this.bundle);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeImageViewPageState();
  }
}

class _HomeImageViewPageState extends State<HomeImageViewPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              widget.bundle.getMap("data")["url"],
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: SizedBox(
              height: kToolbarHeight,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ClipRect(
                      child: BackdropFilter(
                        filter: ui.ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white.withAlpha(30)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 24, left: 20, right: 20, bottom: 10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(widget.bundle.getMap("data")["name"],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          )),
                                      Text("嘻嘻嘻",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "The balearic Lsnaled,The Lsnaled,The balea balearic Lsnaled,"
                                      "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,",
                                      style: TextStyle(
                                        color: Colors.white54,
                                      fontSize: 14,
                                      height: 1.4,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.normal),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
