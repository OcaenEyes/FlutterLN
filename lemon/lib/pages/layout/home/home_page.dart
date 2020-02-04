import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lemon/pages/layout/home/home_view_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnnotatedRegion(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  child: Text(
                    "Find your\nnext vacation",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.3,
                      fontSize: 25,
                      height: 1.5,
                    ),
                  ),
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + kToolbarHeight,
                    left: 40,
                  ),
                ),
                Padding(
                  child: Icon(Icons.person,color: Colors.black87,),
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top + kToolbarHeight,
                      right: 40),
                )
              ],
            ),
            Expanded(
              child: HomeCardViewWidget(),
            ),
          ],
        ),
      ),
      value: SystemUiOverlayStyle.dark,
    );
  }
}
