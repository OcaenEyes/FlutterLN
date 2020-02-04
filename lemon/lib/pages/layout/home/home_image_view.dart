import 'package:flutter/material.dart';
import 'package:lemon/router/page_builder.dart';

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
            child: Image.asset(
              widget.bundle.getString("url"),
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
          )
        ],
      ),
    );
  }
}
