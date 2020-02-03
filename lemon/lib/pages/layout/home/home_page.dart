import 'package:flutter/material.dart';
import 'package:lemon/router/page_builder.dart';
import 'package:lemon/pages/layout/home/home_view_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get bundle => this.bundle;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            child: Text(
              "Good Day \n很高兴遇见你",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.3,
                fontSize:25,
                height:1.5,
              ),
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + kToolbarHeight,
              left: 40,
            ),
          ),

          Expanded(
            child: HomeCardViewWidget(),
          ),
        ],
      ),
    );
  }
}
